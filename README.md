# Cetoni ixx Linux drivers deb package

This repository presents the process of building the IXXAT Usb-to-CAN drivers .deb package.

It can be used to produce standalone debian packages for easier drivers distribution.


### Prerequisites

- cmake version >= 3.10
- gcc 

The process was tested on Ubuntu 18.04LTS.


## How to build a debian package

### Method #1: Using prepared `build_package.sh` script
All steps needed to produce a package are written in `build/build_package.sh` script. The script enables  out-of-source builds.

- Create new build directory anywhere on your computer
- From that directory call `build_package.sh` bash script
- That's all! The resulting debian package `ixx_driver_1.1.148.0-linux.deb` would be created in `dist/` subdirectory in the build folder.

### Method #2: Without bash script

Run `cmake` in desired build directory and provide a path to the top directory of this repository (where CMakeLists.txt is located).


        mkdir build
        cd build
        cmake <path_to_top_folder_of_this_repository>
        make package
        
Resulting .deb package should be located in dist/ subdirectory of the build folder.

 
 
 ## Installing drivers from .deb package file
 
 To install the package (e.g. using apt-get):
 
 		sudo apt-get install <path_to_deb_file>
        