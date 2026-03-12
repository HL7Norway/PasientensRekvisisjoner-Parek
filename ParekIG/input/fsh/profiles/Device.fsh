Profile: ParekDevice
Parent: Device
Id: parek-device
Title: "Parek Device"
Description: "Device as used in Parek."
* identifier ^definition = "External identifiers of the device. Generally not global, may be internal to a specific report or requester."
* identifier
  * system 1..1
  // * system from IdentifierSource_VS
  * value 1..1
* name MS
* property MS
* property
  * value[x] only string
