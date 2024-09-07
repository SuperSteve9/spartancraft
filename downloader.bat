echo %1
set version=%1
echo %version%
pause
if %version%=="rd-132211" goto 132211
if %version%=="rd-132328" goto 132328
if %version%=="rd-160052" goto 160052
if %version%=="rd-161348" goto 161348
if %version%=="SpartanCraft 11a" goto 11a


:132211
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-132211.jar
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\minecraft-rd-132211.jar
exit

:132328
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-132328.jar
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\minecraft-rd-132328.jar
exit

:160052
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-160052.jar
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\minecraft-rd-160052.jar
exit

:161348
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-161348.jar
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\minecraft-rd-161348.jar
exit

:11a
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-c0.0.11a.jar
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\minecraft-c0.0.11a.jar
exit
