@SET VSINSTALLDIR=C:\Program Files\Microsoft Visual Studio 9.0
@SET VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio 9.0\VC
@SET FrameworkDir=C:\Windows\Microsoft.NET\Framework
@SET FrameworkVersion=v2.0.50727
@SET Framework35Version=v3.5

@call :GetVsInstallDir
@SET VCINSTALLDIR=
@SET VCINSTALLDIR=%VSINSTALLDIR%VC

@if "%VSINSTALLDIR%"=="" goto error_no_VSINSTALLDIR
@if "%VCINSTALLDIR%"=="" goto error_no_VCINSTALLDIR

@echo Setting environment for using Microsoft Visual Studio 2008 x86 tools.

@call :GetWindowsSdkDir

@if not "%WindowsSdkDir%" == "" (
	set "PATH=%WindowsSdkDir%bin;%PATH%"
	set "INCLUDE=%WindowsSdkDir%include;%INCLUDE%"
	set "LIB=%WindowsSdkDir%lib;%LIB%"
)


@rem
@rem Root of Visual Studio IDE installed files.
@rem
@set DevEnvDir=%VSINSTALLDIR%Common7\IDE

@set PATH=%VSINSTALLDIR%Common7\IDE;%VCINSTALLDIR%\BIN;%VSINSTALLDIR%\Common7\Tools;%FrameworkDir%\v3.5;%FrameworkDir%\v2.0.50727;%VCINSTALLDIR%\VCPackages;%PATH%
@set INCLUDE=%VCINSTALLDIR%\ATLMFC\INCLUDE;%VCINSTALLDIR%\INCLUDE;%INCLUDE%
@set LIB=%VCINSTALLDIR%\ATLMFC\LIB;%VCINSTALLDIR%\LIB;%LIB%
@set LIBPATH=%FrameworkDir%\v3.5;%FrameworkDir%\v2.0.50727;%VCINSTALLDIR%\ATLMFC\LIB;%VCINSTALLDIR%\LIB;%LIBPATH%

@goto end

:GetWindowsSdkDir
@call :GetWindowsSdkDirHelper HKLM > nul 2>&1
@if errorlevel 1 call :GetWindowsSdkDirHelper HKCU > nul 2>&1
@if errorlevel 1 set WindowsSdkDir=%VCINSTALLDIR%\PlatformSDK\
@exit /B 0

:GetWindowsSdkDirHelper
@for /F "tokens=1,2*" %%i in ('reg query "%1\SOFTWARE\NativeTargets\Microsoft SDKs\Windows" /v "CurrentInstallFolder"') DO (
	if "%%i"=="CurrentInstallFolder" (
		SET "WindowsSdkDir=%%k"
	)
)
@if "%WindowsSdkDir%"=="" exit /B 1
@exit /B 0

:GetVsInstallDir
@call :GetVsInstallDirHelper HKLM > nul 2>&1
@if errorlevel 1 call :GetVsInstallDirHelper HKCU > nul 2>&1
@if errorlevel 1 echo VsInstallDir not found
@exit /B 0

:GetVsInstallDirHelper
@SET VSINSTALLDIR=
@for /F "tokens=1,2*" %%i in ('reg query "%1\SOFTWARE\NativeTargets\VisualStudio\9.0\Setup\VS" /v "ProductDir"') DO (
	if "%%i"=="ProductDir" (
		SET "VSINSTALLDIR=%%k"
	)
)
@if "%VSINSTALLDIR%"=="" exit /B 1
@exit /B 0

:error_no_VSINSTALLDIR
@echo ERROR: VSINSTALLDIR variable is not set. 
@goto end

:error_no_VCINSTALLDIR
@echo ERROR: VCINSTALLDIR variable is not set. 
@goto end

:end
