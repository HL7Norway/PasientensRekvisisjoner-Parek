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


Instance: AnotherDevice
InstanceOf: parek-device
Usage: #example
Title: "A Device"
Description: "Example of a device"
* text.status = #generated
* text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <p>A sample ParekDevice, also referenced from other samples.</p>
  </div>"""

* identifier
  * system = "http://some.thing.unique"
  * value = "someValue"
* name
  * value = "Et glass"
  * type = #user-friendly-name
* property
  * type.text = "Rating"
  * valueString = "Rød kork"