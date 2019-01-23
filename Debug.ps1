$Path = Join-Path -Path $PSScriptRoot -ChildPath 'Source/DemoModule.psd1'
Import-Module $Path
Get-Public -Name FOO