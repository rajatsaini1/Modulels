variable "vm_names"{
    type = map
    default = {for x in [ "node-1","node-2"] : x  => x
}
}