  
//Caption:Program to determine the range of SPE data rates that can be accomodated by the byte stuffing operation
 
//Example 8.6

//Page 415
 
frames=4*9*87//Four SPE frames 

rate=8*frames*2000//normal rate SPE

disp('When positive byte stuffing is used to accomodate a slow incoming SPE rate, 3131 bytes of data are transmitted in four frames. Thus, the lowest slip rate is')
 
Rmin=8*3131*2000//minimum SPE rate

disp('When negative byte stuffing is used to accomodate a fast incoming SPE rate, 3133 bytes of data are transmitted in four frames. Thus, the highest slip rate is')

Rmax=8*3133*2000//maximum SPE rate
  
//Result

//Normal SPE rate = 50.112 Mbps 

//Minimum SPE rate = 50.096 Mbps

//Maximum SPE rate = 50.128 Mbps