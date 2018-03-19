# Build portable Python for Windows
Batch script and tools that builds a portable python (in a zip archive) from Python's site .msi file.


### Requirements:
    Windows7+ systems with Itnernet acecess
## Contains the following utilities:
- wget 
    - https://eternallybored.org/misc/wget/1.19.4/64/wget.exe
- lessmsi
    - https://github.com/activescott/lessmsi/releases/tag/v1.6.1

## How to build te archive
If you need extra libraries from pip, set it at the command line:
```cmd
set PIP_INSTALL=my_library
```
```cmd
build.bat
```
The file python-%version%-portable.zip will be generated in the current dir.


