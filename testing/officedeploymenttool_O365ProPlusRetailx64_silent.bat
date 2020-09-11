mkdir c:\odt
set odt=c:\odt
copy officedeploymenttool_12130-20272.exe C:\odt
copy *.cmd C:\odt
copy *.bat C:\odt
C:\odt\officedeploymenttool_12130-20272.exe /extract:C:\odt /quiet
(
echo.
echo ^<Configuration^>
echo.
echo  ^<Add OfficeClientEdition^="64" Channel^="Monthly"^>
echo    ^<Product ID^="O365ProPlusRetail"^>
echo      ^<Language ID^="en-us" /^>
echo    ^</Product^>
echo  ^</Add^>
echo.
echo  ^<Updates Enabled^="TRUE" Channel^="Monthly" /^>
echo  ^<Display Level^="None" AcceptEULA^="TRUE" /^>
echo  ^<Property Name^="AUTOACTIVATE" Value^="1" /^>
echo.
echo ^</Configuration^>
echo.
)>"C:\odt\install-Office365-x64_silent.xml"

cd /D %odt%
c:\odt\setup.exe /download c:\odt\install-Office365-x64_silent.xml
c:\odt\setup.exe /configure c:\odt\install-Office365-x64_silent.xml
