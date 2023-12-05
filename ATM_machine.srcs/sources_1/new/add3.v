module add3(input [3:0] A, output reg [3:0] B);//4bit input A와 4bit register B로 이루어진 add3 모듈을 선언하라
    always @(*)begin//always block을 시작하라
        if(A>=5 && A<=9)begin//A가 5이상이거나 A가 9이하면 if문을 시작하라
            B = A+3;//B에 A+3을 할당하라
        end//if문을 종료하라
        else begin//조건에 안 맞으면 시행하라
            B = A;//B에 A를 할당하라
        end//else문을 종료하라
    end//always문을 종료하라
endmodule//add3 모듈을 종료하라