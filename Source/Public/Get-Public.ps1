function Get-Public {
    param (
        $Name
    )
    $Data = Get-Private @PSBoundParameters
    [extclass]::new($Data.Name,'Public')
}