clear
flag=1
mode(-1)
pwd
curr=ans
clc

printf("Example 3    :               Show the method of using default variables in perl using \n\t\tmailbox specific extraction as an example \n")
disp("****************************************************************")
disp("Answer    :   ")

disp("INSTRUCTIONS   : ")
printf("\n1. Here all instructions are preloaded in the form of a demo\n\nInitially the whole perl script is displaying and then \n the result of the same can be seen in the command line interpreter.\n2. PLEASE MAKE SURE THAT THE PERLSCRIPT INTERPRETER\nEXISTS IN THE SYSTEM\nOR THE COMMAND WOULD NOT WORK \n\n3. THIS IS POSSIBLE ONLY IF THE HOME DIRECTORY CONTAINS MAILBOX PATH\n4. PRESS ENTER AFTER EACH COMMAND to see its RESULT\n5. PRESS ENTER AFTER EACH RESULT TO GO TO THE NEXT COMMAND\n")
halt('.............Press [ENTER] to continue.....')
halt("")
clc
printf("\tUNIX SHELL SIMULATOR(DEMO VERSION WITH PRELOADED COMMANDS)\n\n\n")


printf("\n# Enter the name of the perlscript file whichever you desire  \n\n")
nam=input('$ cat  ','s')
halt(' ')
clc
li(1)='#!/usr/bin/perl'
li(2)='# Script: '+nam+'.pl - Extracts the From: headers from the mailbox'
li(3)="#"
li(4)='while(<>) {                                                  # Actually ($_ = <>) '                  
li(5)='         chop()   ;                                             # chop($_)'
li(6)='         if  ( /From:.*\@velvet.com/)  {         # if ($_ =~ /From:.*\@velvet ...) '
li(7)='         $slno++  ;'
li(8)='          print($slno  .  '+ascii(34)+'  '+ascii(34)+' . $_  .  '+ascii(34)+'\n'+ascii(34)+')   ;'    
li(9)='  }  } '
li(10)='print('+ascii(34)+'\n\nType'+ascii(39)+'exit'+ascii(39)+'to go back to console\n\n'+ascii(34)+')'
halt(' ')

v=mopen(nam+'.pl','wt')
for i=1:10
    mfprintf(v,"%s\n",li(i))
    if i~=10 then
    printf("%s\n",li(i))
    end
end
mclose(v)
if getos()=='Linux' then
    printf("\n\nPlease open a new terminal window and then go to the directory %s and execute the following instruction\n\nperl %s.pl [Command line parameters if any]\n\nThank You \n\n",curr,nam)
    halt(' ')
    exit
end


printf("\n# type the following command in the command line interpreter as soon as it appears")
printf(" \n       %c perl %s.pl    [MAILBOX PATH AS COMMANDLINE ARGUMENT] %c[ENTER]\n\n",ascii(34),nam,ascii(34))

printf("\n$ perl %s.pl  [MAILBOX PATH-CMDLINE ARGUMENT]          #to execute the perlscript",nam)
halt(' ')
dos('start')
printf("\n\n\n")
halt('   ---------------->Executing PerlScript in Command Line Prompt<-------------- ')
printf("\n\n\n$ exit        #To exit the current simulation terminal and return to Scilab console\n\n")
halt("........# (hit [ENTER] for result)")
//clc()

printf("\n\n\t\t\tBACK TO SCILAB CONSOLE...\nLoading initial environment')
sleep(1000)

mdelete(nam+'.pl')
