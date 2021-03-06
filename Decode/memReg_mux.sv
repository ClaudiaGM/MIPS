module memReg_mux #(parameter WIDTH =32)
(
    input  reg  [(WIDTH-1):0] ALU,         //Read ALU
    input  reg  [(WIDTH-1):0] ReadData,    //Read Memory Data
    input  reg  memReg,                    //Bit of control
    output wire [(WIDTH-1):0] WD           //Write data
);

    assign WD = !memReg ? ALU:ReadData;  //Multiplexer


endmodule
