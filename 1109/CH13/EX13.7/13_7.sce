clear;
clc;
z11=40;z22=30;z12=20;z21=20;
deltaz=(z11*z22)-(z12*z21);
A=z11/z12;
printf("The transmission parameters are:\n");
printf("  A = %f\n",A);
B=deltaz/z21;
printf("  B = %f ohms\n",B);
C=1/z21;
printf("  C = %f mho\n",C);
D=z22/z21;
printf("  D = %f\n",D);
printf(" The network equations using z-parameter are\n");
printf("  V1 = %fI1 + %fI2\n",z11,z12);
printf("  V2 = %fI1 + %fI2\n",z21,z22);
printf(" The network equations using ABCD parameter are\n");
printf("  V1 = %fV2 - %fI2\n",A,B);
printf("  I1 = %fV2 - %fI2\n",C,D);
