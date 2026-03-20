# A Device - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A Device**

## Example Device: A Device

A sample ParekDevice, also referenced from other samples.



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "ADevice",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-device"]
  },
  "identifier" : [{
    "system" : "http://some.thing.unique",
    "value" : "someValue"
  }],
  "name" : [{
    "value" : "Et glass",
    "type" : "user-friendly-name"
  }],
  "property" : [{
    "type" : {
      "text" : "Rating"
    },
    "valueString" : "Rød kork"
  }]
}

```
