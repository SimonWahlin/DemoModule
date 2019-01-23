param(
    $ModulePath = "$PSScriptRoot\..\..\Source"
)
# Remove trailing slash or backslash
$ModulePath = $ModulePath -replace '[\\/]*$'
$ModuleManifestName = 'DemoModule.psd1'
$ModuleManifestPath = Get-ChildItem -Path $ModulePath -Recurse -Filter $ModuleManifestName | 
    Select-Object -ExpandProperty FullName
# $ModuleManifestPath = Join-Path -Path $ModulePath -ChildPath $ModuleManifestName

Describe 'Core Module Tests' -Tags 'CoreModule' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $ModuleManifestPath
        $? | Should Be $true
    }

    It 'Loads without errors' {
        Write-Warning "$ModuleManifestPath"
        {Import-Module "$ModuleManifestPath" -ErrorAction Stop} | Should not throw
    }
}

