if %1==rd-132211 goto 132211
if %1==rd-132328 goto 132328
if %1==rd-160052 goto 160052
if %1==rd-161348 goto 161348
if %1=="SpartanCraft 11a" goto 11a


:132211
cd versions
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-132211.jar
cd ..
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\versions\minecraft-rd-132211.jar

:132328
cd versions
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-132328.jar
cd ..
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\versions\minecraft-rd-132328.jar

:160052
cd versions
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-160052.jar
cd ..
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\versions\minecraft-rd-160052.jar

:161348
cd versions
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-rd-161348.jar
cd ..
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\versions\minecraft-rd-161348.jar

:11a
cd versions
curl -OL https://github.com/SuperSteve9/spartancraft/raw/main/versions/minecraft-c0.0.11a.jar
cd ..
"C:\Program Files\Java\jdk-14.0.2\bin\java.exe" -Dorg.lwjgl.librarypath=%cd%\natives -jar %cd%\versions\minecraft-c0.0.11a.jar
