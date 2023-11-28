module binarytoBCD(input [7:0] D, output[13:0] Y);//4bit input D, 10bit output Y���� �̷���� shift_add3 ����� �����϶�

wire [38:0] T;//11bit wire T�� �����϶�
assign Y[0] = D[0];//D[0]�� Y[0]�� �Ҵ��϶�

//add3 ����� �̿��϶�
add3 C1({3'b000, D[7]}, T[3:0]);//input�� 3'b000�� D[3]���� �̷���� 4bit�̰�, output�� T[3:0] 4bit�� add3 ����� �����϶�
add3 C2({T[2:0], D[6]}, T[7:4]);//input�� T[2:0]�� D[2]�� �̷���� 4bit�̰�, output�� T[7:4] 4bit�� add3 ����� �����϶�
add3 C3({3'b000, T[3]}, {Y[13], T[10:8]});//input�� 3'b000�� T[3]���� �̷���� 4bit�̰�, output�� Y[9], T[10:8]�� �̷����  4bit�� add3 ����� �����϶�
add3 C4({T[6:4], D[5]}, T[14:11]);//input�� T[6:4]�� D[1]���� �̷���� 4bit�̰�, output�� Y[4:1] 4bit�� add3 ����� �����϶�
add3 C5(T[10:7], {Y[12], T[17:15]});//input�� T[10:7] 4bit��, output�� Y[8:5] 4bit�� add3 ����� �����϶�
add3 C6({T[13:11], D[4]}, T[21:18]);//input�� T[10:7] 4bit��, output�� Y[8:5] 4bit�� add3 ����� �����϶�
add3 C7(T[17:14], {Y[11], T[24:22]});//input�� T[10:7] 4bit��, output�� Y[8:5] 4bit�� add3 ����� �����϶�
add3 C8({T[20:18], D[3]}, T[28:25]);//input�� T[10:7] 4bit��, output�� Y[8:5] 4bit�� add3 ����� �����϶�
add3 C9(T[24:21], {Y[10], T[31:29]});//input�� T[10:7] 4bit��, output�� Y[8:5] 4bit�� add3 ����� �����϶�
add3 C10({T[27:25], D[2]}, T[35:32]);//input�� T[10:7] 4bit��, output�� Y[8:5] 4bit�� add3 ����� �����϶�
add3 C11(T[31:28], {Y[9], T[38:36]});
add3 C12({T[34:32], D[1]}, Y[4:1]);
add3 C13(T[38:35], Y[8:5]);
endmodule//binarytoBCD ����� �����϶�