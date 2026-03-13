Instance: ADevice
InstanceOf: ParekDevice
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