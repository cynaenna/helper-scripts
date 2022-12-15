################################################################################
##                                                                            ##
##  Author:     Cynaenna - @cynaenna                                          ##
##  License:    https://github.com/cynaenna/helper-scripts/blob/main/LICENSE  ##
##                                                                            ##
################################################################################


param(
    [Parameter(Mandatory=$true)][String]$Path,
    [Parameter(Mandatory=$false)][int]$LastIndex = 0,
    [Parameter(Mandatory=$false)][int]$PadLength = 7
)


if (Test-Path -Path $Path) {
    if ($LastIndex -lt 0) {
        $LastIndex = 0;
    }

    if ($PadLength -le 0) {
        $PadLength = 7;
    }


    $files = Get-ChildItem -Path $Path -Filter "*.jpg" | Sort LastWriteTime;
    $filesCount = $files.Length;

    $files | ForEach-Object -Begin { $i = 0; } -Process {
        $LastIndex++;

        $name = "{0:d$($PadLength)}" -f [int32]$LastIndex;
        $name = "$($name).jpg";
        
        Rename-Item -Path $_.FullName -NewName $name;
        
        $i++;
        $progress = ($i * 100 / $filesCount);

        Write-Progress -Activity "Renaming files..." -PercentComplete $progress;
    };


    Write-Output "Last index: $($LastIndex)";
} else {
    Write-Warning "The path $($Path) does not exists!";
}