
clear
clc

disp("Example 6  :  Display the number of files in the current directory ")
printf("\n*******************************************************************\n")
disp("Answer   :")
printf("THE FOLLOWING LINES OF CODE RUN \nONLY IN SCILAB INSTALLED IN UNIX ENVIRONMENT.....")
printf("\nTHE CONSOLE GETS EXITED IN OTHER\n OPERATING SYSTEMS")
if(getos() ~= "Linux" )then
    disp("")
    halt('Press any key to end the script since the OS is not Linux')
    printf("Close the Scilab Console?....\ny :Yes\nAny other key:No")
    st = input('','s')
    clc(1)
    if( st == "y") then
        exit
        end
else
    unix_w("ls|wc")
end
printf("\n*******************************************************************\n")
