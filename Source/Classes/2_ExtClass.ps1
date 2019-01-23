class ExtClass : BaseClass {
    [String] $Type

    ExtClass ($NewName, $Type) : base($NewName) {
        $this.Type = $Type
    }

    # Method: Method that changes $Name to the default name
    [string] GetString() {
        return '{0}_{1}' -f $this.Type, $this.Name
    }
}