Dim wsh
set wsh = Wscript.CreateObject("Wscript.Shell") 

Dim PLATFORM_X86,PLATFORM_X64
PLATFORM_X86 =1
PLATFORM_X64 =1

Dim BNX_ROOT,BNX_ROOT64
BNX_ROOT="HKCU\Software\"
BNX_ROOT64="HKCU\Software\Wow6432Node\"
Dim PDNAME, PDDIR
PDNAME = "NativeTargets"
PDDIR = PDNAME +"\"

Dim VS80_DIR,VS90_DIR,VS100_DIR,VS110_DIR,VS120_DIR
Dim VS80SP1_DIR,VS90SP1_DIR,VS100SP1_DIR,VS110SP1_DIR,VS120SP1_DIR

Dim VC80_DIR,VC90_DIR,VC100_DIR,VC110_DIR,VC120_DIR
Dim VC80SP1_DIR,VC90SP1_DIR,VC100SP1_DIR,VC110SP1_DIR,VC120SP1_DIR

Dim SDK50A_DIR,SDK60A_DIR,SDK70A_DIR
Dim SDKCUR_DIR

Dim SDKCUR_DIR

VS80_DIR = "D:\msvc\visualstudio\msvs8.0\"
VC80_DIR = "D:\msvc\visualstudio\msvs8.0\vc\"

VS90_DIR = "D:\msvc\visualstudio\msvs9.0\"
VC90_DIR = "D:\msvc\visualstudio\msvs9.0\vc\"
VS90SP1_DIR = "D:\msvc\visualstudio\msvs9.0sp1\"
VC90SP1_DIR = "D:\msvc\visualstudio\msvs9.0sp1\vc\"

VS100_DIR = "D:\msvc\visualstudio\msvs10.0\"
VC100_DIR = "D:\msvc\visualstudio\msvs10.0\vc\"
VS100SP1_DIR = "D:\msvc\visualstudio\msvs10.0sp1\"
VC100SP1_DIR = "D:\msvc\visualstudio\msvs10.0sp1\vc\"

SDK50A_DIR = "D:\msvc\visualstudio\mssdks\Windows\v5.0A\"
SDK60A_DIR = "D:\msvc\visualstudio\mssdks\Windows\v6.0A\"
SDK70A_DIR = "D:\msvc\visualstudio\mssdks\Windows\v7.0A\"
SDKCUR_DIR = SDK70A

ENV_DIR = "Common7\IDE\"
ENV_BIN = "Common7\IDE\devenv.exe"

CMNTOOLS_DIR = "Common7\Tools\"

DOTNET_DIR= "C:\Windows\Microsoft.NET\Framework"
DOTNET64_DIR= "C:\Windows\Microsoft.NET\Framework64"

if PLATFORM_X86 =1 then

wsh.RegWrite BNX_ROOT,""
wsh.RegWrite BNX_ROOT +PDDIR,""

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\",""
wsh.RegWrite BNX_ROOT +PDDIR+".NETFramework\",""
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\",""

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\ProductName","NativeTargets VisualStudio","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\ProductName","NativeTargets Windows SDKs for VisualStudio","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+".NETFramework\ProductName","NativeTargets .NETFramework","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\ProductName","NativeTargets FrameworkSDKs","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\VS\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\VS\EnvironmentDirectory",VS80_DIR + EVN_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\VS\EnvironmentPath",VS80_DIR + EVN_BIN,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\VS\ProductDir",VS80_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\VC\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\Setup\VC\ProductDir",VC80_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\VS\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\VS\EnvironmentDirectory",VS90_DIR + EVN_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\VS\EnvironmentPath",VS90_DIR + EVN_BIN,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\VS\ProductDir",VS90SP1_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\VC\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\Setup\VC\ProductDir",VC90SP1_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\CurrentInstallFolder",SDKCUR_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v5.0A\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v5.0A\InstallationFolder",SDK50A_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v6.0A\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v6.0A\InstallationFolder",SDK60A_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v7.0A\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v7.0A\InstallationFolder",SDK70A_DIR,"REG_SZ"

'make msbuild arx_xxx.props use system netframework setting
wsh.RegWrite BNX_ROOT +PDDIR+".NETFramework\InstallRoot","","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+".NETFramework\Framework",DOTNET_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+".NETFramework\Framework64",DOTNET64_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+".NETFramework\VS90",SDK60A_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\VS90",SDK60A_DIR,"REG_SZ"


end if

if PLATFORM_X64 =1 then

wsh.RegWrite BNX_ROOT64,""
wsh.RegWrite BNX_ROOT64 +PDDIR,""

wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+".NETFramework\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\",""

wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\ProductName","NativeTargets VisualStudio","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\ProductName","NativeTargets Windows SDKs for VisualStudio","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+".NETFramework\ProductName","NativeTargets .NETFramework","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\ProductName","NativeTargets FrameworkSDKs","REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\VS\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\VS\EnvironmentDirectory",VS80_DIR + EVN_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\VS\EnvironmentPath",VS80_DIR + EVN_BIN,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\VS\ProductDir",VS80_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\VC\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\Setup\VC\ProductDir",VC80_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\VS\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\VS\EnvironmentDirectory",VS90_DIR + EVN_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\VS\EnvironmentPath",VS90_DIR + EVN_BIN,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\VS\ProductDir",VS90SP1_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\VC\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\Setup\VC\ProductDir",VC90SP1_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\CurrentInstallFolder",SDKCUR_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v5.0A\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v5.0A\InstallationFolder",SDK50A_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v6.0A\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v6.0A\InstallationFolder",SDK60A_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v7.0A\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v7.0A\InstallationFolder",SDK70A_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+".NETFramework\InstallRoot","","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+".NETFramework\Framework",DOTNET_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+".NETFramework\Framework64",DOTNET64_DIR,"REG_SZ"

wsh.RegWrite BNX_ROOT64 +PDDIR+".NETFramework\VS90",SDK60A_DIR,"REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\VS90",SDK60A_DIR,"REG_SZ"

end if

wsh.Popup "Íê³É"