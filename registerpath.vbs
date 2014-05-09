Dim wsh
set wsh = Wscript.CreateObject("Wscript.Shell") 

Dim BNX_ROOT,BNX_ROOT64
BNX_ROOT="HKCU\Software\Bnxsoft\"
BNX_ROOT64="HKCU\Software\Wow6432Node\Bnxsoft\"
Dim PDNAME, PDDIR
PDNAME = "NativeTargets"
PDDIR = PDNAME +"\"

wsh.RegWrite BNX_ROOT,""
wsh.RegWrite BNX_ROOT64,""

wsh.RegWrite BNX_ROOT +PDDIR,""
wsh.RegWrite BNX_ROOT64 +PDDIR,""

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\",""
wsh.RegWrite BNX_ROOT +PDDIR+"NETFramework\",""
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\",""

wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"NETFramework\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\",""

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\VSProductDir","D:\msvc\visualstudio\msvs9.0sp1\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\VSProductDir","D:\msvc\visualstudio\msvs9.0sp1\","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\VCProductDir","D:\msvc\visualstudio\msvs9.0sp1\VC\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\VCProductDir","D:\msvc\visualstudio\msvs9.0sp1\VC\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\VS90","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\VS90","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v6.0A\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Microsoft SDKs\Windows\v6.0A\InstallationFolder","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v6.0A\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Microsoft SDKs\Windows\v6.0A\InstallationFolder","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"NETFramework\InstallRoot","","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"NETFramework\InstallRoot","","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"NETFramework\VS90","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"NETFramework\VS90","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\VS90","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\VS90","D:\msvc\visualstudio\mssdks\Windows\v6.0A\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\VSProductDir","D:\msvc\visualstudio\msvs8.0\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\VSProductDir","D:\msvc\visualstudio\msvs8.0\","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\VCProductDir","D:\msvc\visualstudio\msvs8.0\VC\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\VCProductDir","D:\msvc\visualstudio\msvs8.0\VC\","REG_SZ"

wsh.Popup "Íê³É"