if %1==rd-132211 goto 132211
if %1==rd-132328 goto 132328


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
