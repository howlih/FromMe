

@echo off  
if [%1] == [] ( 
   echo input value not provided 
   goto stop 
)  
rem Display numbers 
for /l %%n in (2,1,%1) do ( 
   echo %%n 
)  
:stop 
pause 