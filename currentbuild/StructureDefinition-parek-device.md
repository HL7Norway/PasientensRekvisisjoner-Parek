# Parek Device - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parek Device**

## Resource Profile: Parek Device 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-device | *Version*:0.1.3 |
| Draft as of 2026-03-20 | *Computable Name*:ParekDevice |

 
Device as used in Parek. 

**Usages:**

* Use this Profile: [ParekSpecimen](StructureDefinition-parek-specimen.md)
* Examples for this Profile: [Device/ADevice](Device-ADevice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.ParekIG|current/StructureDefinition/parek-device)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-parek-device.csv), [Excel](StructureDefinition-parek-device.xlsx), [Schematron](StructureDefinition-parek-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "parek-device",
  "url" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-device",
  "version" : "0.1.3",
  "name" : "ParekDevice",
  "title" : "Parek Device",
  "status" : "draft",
  "date" : "2026-03-20T12:42:40+00:00",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "description" : "Device as used in Parek.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "definition" : "External identifiers of the device. Generally not global, may be internal to a specific report or requester."
    },
    {
      "id" : "Device.identifier.system",
      "path" : "Device.identifier.system",
      "min" : 1
    },
    {
      "id" : "Device.identifier.value",
      "path" : "Device.identifier.value",
      "min" : 1
    },
    {
      "id" : "Device.name",
      "path" : "Device.name",
      "mustSupport" : true
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "mustSupport" : true
    },
    {
      "id" : "Device.property.value[x]",
      "path" : "Device.property.value[x]",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
