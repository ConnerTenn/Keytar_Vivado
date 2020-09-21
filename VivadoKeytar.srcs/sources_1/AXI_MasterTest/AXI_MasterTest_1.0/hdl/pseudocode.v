
// DataTransfer()
// ==============

DataTransfer(Start_Address, Number_Bytes, Burst_Length, Data_Bus_Bytes, Mode, IsWrite)
// Data_Bus_Bytes is the number of 8-bit byte lanes in the bus
// Mode is the AXI transfer mode
// IsWrite is TRUE for a write, and FALSE for a read

    assert Mode IN {FIXED, WRAP, INCR};
    addr = Start_Address;                         // Variable for current address
    Aligned_Address = (INT(addr/Number_Bytes) * Number_Bytes);
    aligned = (Aligned_Address == addr);          // Check whether addr is aligned to nbytes
    dtsize = Number_Bytes * Burst_Length;         // Maximum total data transaction size
    
    if mode == WRAP then
        Lower_Wrap_Boundary = (INT(addr/dtsize) * dtsize);
        // addr must be aligned for a wrapping burst
        Upper_Wrap_Boundary = Lower_Wrap_Boundary + dtsize;
        
    for n = 1 to Burst_Length
        Lower_Byte_Lane = addr - (INT(addr/Data_Bus_Bytes)) * Data_Bus_Bytes;
        if aligned then
            Upper_Byte_Lane = Lower_Byte_Lane + Number_Bytes - 1
        else
            Upper_Byte_Lane = Aligned_Address + Number_Bytes - 1
                               - (INT(addr/Data_Bus_Bytes)) * Data_Bus_Bytes; 
            
        // Peform data transfer
        if IsWrite then
            dwrite(addr, low_byte, high_byte)
        else
            dread(addr, low_byte, high_byte);
            
        // Increment address if necessary
        if mode != FIXED then
            if aligned then
                addr = addr + Number_Bytes;
                if mode == WRAP then
                    // WRAP mode is always aligned
                    if addr >= Upper_Wrap_Boundary then addr = Lower_Wrap_Boundary;
            else
                addr = Aligned_Address + Number_Bytes;
                aligned = TRUE;            // All transfers after the first are aligned
    return;
