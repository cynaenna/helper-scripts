# Helper Scripts

<br/>

## Scripts
|Name|Type|Description|Output|
|-|-|-|-|
|**Rename-ImageSequence**|ps1|Renames the jpgs under a target folder using a numeric index (based on their last modified date).|Last recorded index.|

<br/>

## [Rename-ImageSequence.ps1](https://github.com/cynaenna/helper-scripts/blob/main/Rename-ImageSequence.ps1)
### Parameters
|Name|Type|Mandatory|Description|
|-|-|-|-|
|**Path**|String|Yes|The full path of the folder that contains the jpg image sequence.|
|**LastIndex**|int|No|The last recorded index from which to start counting from. The default value is **0**.|
|**PadLength**|int|No|The pad length of the numeric index. The default value is **7**, which will generate file names with the following format: *0000000.jpg*|

<br/>

### Usage
Rename the contents of the target folder:
```ps1
.\Rename-ImageSequence.ps1 -Path "FULL/FOLDER/PATH/GOES/HERE"
```

Rename the contents of the target folder starting from the 420 index:
```ps1
.\Rename-ImageSequence.ps1 -Path "FULL/FOLDER/PATH/GOES/HERE" `
                           -LastIndex 419
```

Rename the contents of the target folder using a pad length of 5 (00000.jpg):
```ps1
.\Rename-ImageSequence.ps1 -Path "FULL/FOLDER/PATH/GOES/HERE" `
                           -PadLength 5
```

Rename the contents of the target folder starting from the 420 index using a pad length of 5 (00000.jpg):
```ps1
.\Rename-ImageSequence.ps1 -Path "FULL/FOLDER/PATH/GOES/HERE" `
                           -LastIndex 419 `
                           -PadLength 5
```

<br/>

## [License](https://github.com/cynaenna/helper-scripts/blob/main/LICENSE)
GNU General Public License v3.0

<br/>

## Revision history
|Date|Author|Description|
|-|-|-|
|12/14/2022|Cynaenna|Created base document.|