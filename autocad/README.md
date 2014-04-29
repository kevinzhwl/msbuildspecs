msbuildspecs -- AutoCAD
============

AutoCAD ObjectARX 开发所用配置 

* 这部分配置是为自定义的VisualStudio位置准备的；
* 如果已经安装了对应的Visual Studio 可以直接使用daffodil的版本

目前支持的版本：

- Visual Studio 2008 (VC 9) x64


AutoCAD-ObjectARX-VisualStudio版本 
-------------------

| AutoCAD|ObjectARX | VisualStudio/VC| dotNET|VisualStudio|PlatformSDK|Misc|
|-----------|---------| ------|-----|----|
| R12 | ARX 1 | VC 2
| R14| ARX 202| VC 4.2
|2000/R15| ARX 2000|VS6/VC6
|2000i| ARX 2000i|
|2002/R15.0.7|ARX 2002|VS6/VC6
|2004/R16|ARX 2004|VS2002/VC7.0
|2005/R16.1|ARX 2005| VS2003/VC7.1|NET1.0
|2006/R16.2|ARX 2006| VS2003/VC7.1|NET1.1SP1
|2007/R17.0|ARX 2007| VS2005/VC8.0|NET2.0|VS2005/2008/2010/2012|~|
|2008/R17.1|ARX 2008| VS2005 |NET2.0|VS2005/2008/2010/2012|~|支持64位
|2009/R17.2|ARX 2009| VS2005 |NET3.0|VS2008/2010/2012|~|
|2010/R18.0|ARX 2010| VS2008SP1/VC90SP1 |NET3.5SP1|VS2008/2010/2012|v7.0(v6.1.7600.16385)
|2011/R18.1|ARX 2011| VS2008SP1/VC90SP1 |NET3.5|VS2008/2010/2012|v7.1
|2012/R18.2|ARX 2012| VS2008SP1/VC90SP1|NET4.0|VS2010/2012
|2013/R19.0|ARX 2013| VS2010/VC100|NET4.0|VS2010/2012
|2014/R19.1|ARX 2014| VS2012/VC110|NET4.0|VS2010/2012
|2015/R19.2|ARX 2015| VS2012/VC110|NET4.5|VS2010/2012

VisualStudio支持目录 
-------------------

    Version     IncludePath
                LibraryPath
    VC 4.2      $(MSVC42)\\Include;$(MSVC42)\MFC\Include 
                $(MSVC42)\Lib;$(MSVC42)\MFC\Lib
                
    VC 6        $(MSVC6)\Include;$(MSVC6)\MFC\Include;$(MSVC6)\ATL\Include
                $(MSVC6)\Lib;$(MSVC6)\MFC\Lib;$(MSVC6)\ATL\Lib

    VC 7        $(MSVC7)\Include;$(MSVC7)\ATLMFC\Include
                $(MSVC7)\Lib;$(MSVC7)\ATLMFC\Lib

    VC 7.1      $(MSVC71)\Include;$(MSVC71)\ATLMFC\Include
                $(MSVC71)\Lib;$(MSVC71)\ATLMFC\Lib

    VC 8        $(MSVC8)\Include;$(MSVC8)\ATLMFC\Include
            x86:$(MSVC8)\Lib;$(MSVC8)\ATLMFC\Lib
            x64:$(MSVC8)\Lib\AMD64;$(MSVC8)\ATLMFC\Lib\AMD64
    VC 9        $(MSVC9)\Include;$(MSVC9)\ATLMFC\Include
            x86:$(MSVC9)\Lib;$(MSVC9)\ATLMFC\Lib
            x64:$(MSVC9)\Lib\AMD64;$(MSVC9)\ATLMFC\Lib\AMD64