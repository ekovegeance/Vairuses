@ECHO OFF
msg * EVSYSTEM , please klik [OK] to continue
echo +------------------------------------------+
echo  eeeeeeeee    v       vvvvvvvvvvvvvvvvvvv
echo  e             v     v SYSTEM
echo  eeeeeeeee      v   v
echo  e               v v
echo  eeeeeeeee        v 
echo -------------------------------------------
echo  program name : locked
echo  version      : 2.1 (NgSec)
echo  .
echo  FOLLOW ME ON :                                                                             
echo  [facebook] : Eko Saputra                         
echo  [twitter]  : @ekovegeance7         
echo  [github]   : @ekovegeance
echo  [website]  : evsystemsite.wordpress.com
echo +___________________________________________+
Kunci Folder
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo whay you can lock your folder....?(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder telah terkunci
goto End
:UNLOCK
echo Please enter your password
set/p "pass=>"
if NOT %pass%== 989812 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Locker
echo Folder berhasil di buat
goto End
:End
