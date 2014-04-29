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
wsh.RegWrite BNX_ROOT +PDDIR+"MicrosoftSDKs\",""
wsh.RegWrite BNX_ROOT +PDDIR+"Framework\",""
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"MicrosoftSDKs\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"Framework\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\",""

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\VSProductDir","D:\msvc\visualstudio\msvs9.0\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\VSProductDir","D:\msvc\visualstudio\msvs9.0\","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\9.0\VCProductDir","D:\msvc\visualstudio\msvs9.0\VC\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\9.0\VCProductDir","D:\msvc\visualstudio\msvs9.0\VC\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"MicrosoftSDKs\VS90","D:\msvc\visualstudio\sdks\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"MicrosoftSDKs\VS90","D:\msvc\visualstudio\sdks\v6.0A\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"Framework\VS90","D:\msvc\visualstudio\framework\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"Framework\VS90","D:\msvc\visualstudio\framework\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"FrameworkSDKs\VS90","D:\msvc\visualstudio\frameworksdks\v6.0A\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"FrameworkSDKs\VS90","D:\msvc\visualstudio\frameworksdks\v6.0A\","REG_SZ"

wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\",""
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\",""
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\VSProductDir","D:\msvc\visualstudio\msvs8.0\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\VSProductDir","D:\msvc\visualstudio\msvs8.0\","REG_SZ"
wsh.RegWrite BNX_ROOT +PDDIR+"VisualStudio\8.0\VCProductDir","D:\msvc\visualstudio\msvs8.0\VC\","REG_SZ"
wsh.RegWrite BNX_ROOT64 +PDDIR+"VisualStudio\8.0\VCProductDir","D:\msvc\visualstudio\msvs8.0\VC\","REG_SZ"

wsh.Popup "Íê³É"