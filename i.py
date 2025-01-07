print("uint16_t adc_sim2[] = {", end=" ")
for i in range(16*2):
    for j in range(16*4):
        if (i % 2):
            print( "0x8000, ", end="")
        else:
            print( "0x7FFF, ", end="")
        
print("};")