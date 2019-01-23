class BaseClass {
    # Property: Holds name
    [String] $Name

    BaseClass([String] $NewName) {
        $this.Name = $NewName
    }

}