# RclipDF2Excel

Copy a data.frame (or equivalent structures) object into the clipboard in a format that can be pasted directly into a worksheet.

## Installing

Just clone from GitHub or download the R file, then load the function with

``` 
source("C:\\somepath\\RclipDF2Excel.R")
```

## Usage
```clipDF2Excel(x, ...)```

## Arguments

parameter| Description
---------|------------
```x``` | object to be coerced into a data.frame
```...``` | additional arguments for ```write.table```, with defaults appropriate for excel.

## Details

* Values are adjusted to be copied into excel: ```NA```'s are converted to blanks, __all__ columns are converted to type  ```charater``` vectors (to avoid loading of factor levels, date properties, etc.)

* The function uses the ```file(description = 'clipboard-XXXX', ...)``` mechanism in the base R package and includes automatic adjustment to the memory limits (see ```?file``` under the "Clipboard" section). The object coerced is passed to the  ```write.table```.


## Authors
Yizhar (Izzie) Toren

## License
This project is licensed under the Apache v2.0 License - see the [LICENSE](https://github.com/ytoren/RGitHubDirDownload/blob/master/LICENSE) file for details.
