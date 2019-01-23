@{
    Path = "DemoModule.psd1"
    OutputDirectory = "..\bin\DemoModule"
    SourceDirectories = 'Classes','Private','Public'
    PublicFilter = 'Public\*.ps1'
    VersionedOutputDirectory = $true
}