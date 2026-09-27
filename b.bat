
@Echo off
Set /P _ans=Please enter Department: || Set _ans=NothingChosen
:: remove &’s and quotes from the answer (via string replace)
Set _ans=%_ans:&=%
Set _ans=%_ans:"=%
If "%_ans%"=="NothingChosen" goto sub_error
If /i "%_ans%"=="finance" goto sub_finance
If /i "%_ans%"=="hr" goto sub_hr
goto:eof

:sub_finance
echo You chose the finance dept
goto:eof

:sub_hr
echo You chose the hr dept
goto:eof

:sub_error
echo Nothing was chosen