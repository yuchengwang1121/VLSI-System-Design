module ForwardUnit(
    input [4:0] ID_rs1addr,
    input [4:0] ID_rs2addr,
    input [4:0] EXE_rdaddr,
    input EXE_RegWrite,
    input [4:0] MEM_rdaddr,
    input MEM_RegWrite,

    output logic [1:0] Forward_rs1src,
    output logic [1:0] Forward_rs2src
);
    
    always_comb begin
        if (EXE_RegWrite && (EXE_rdaddr == ID_rs1addr))     //two R-type Forwarding
            Forward_rs1src = 2'b01;
        else if (MEM_RegWrite && (MEM_rdaddr == ID_rs1addr))
            Forward_rs1src = 2'b10;
        else begin                                                                                  //else normal situation
            Forward_rs1src = 2'b00;
        end
    end

    always_comb begin
        if (EXE_RegWrite && (EXE_rdaddr == ID_rs2addr))     //two R-type Forwarding
            Forward_rs2src = 2'b01;
        else if (MEM_RegWrite && (MEM_rdaddr == ID_rs2addr))
            Forward_rs2src = 2'b10;
        else begin                                                                                  //else normal situation
            Forward_rs2src = 2'b00;
        end
    end
endmodule