module add3(input [3:0] A, output reg [3:0] B);//4bit input A�� 4bit register B�� �̷���� add3 ����� �����϶�
    always @(*)begin//always block�� �����϶�
        if(A>=5 && A<=9)begin//A�� 5�̻��̰ų� A�� 9���ϸ� if���� �����϶�
            B = A+3;//B�� A+3�� �Ҵ��϶�
        end//if���� �����϶�
        else begin//���ǿ� �� ������ �����϶�
            B = A;//B�� A�� �Ҵ��϶�
        end//else���� �����϶�
    end//always���� �����϶�
endmodule//add3 ����� �����϶�