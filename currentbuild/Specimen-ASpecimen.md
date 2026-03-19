# A Specimen - Pasientens rekvisisjoner v0.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **A Specimen**

## Example Specimen: A Specimen

A sample ParekSpecimen, references other samples.



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "ASpecimen",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-specimen"]
  },
  "contained" : [{
    "resourceType" : "PractitionerRole",
    "id" : "ACollector",
    "meta" : {
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr"]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>A sample ParekCollector, also referenced from other samples.</p></div>"
    },
    "practitioner" : {
      "identifier" : {
        "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
        "value" : "987"
      },
      "display" : "Somebody"
    }
  },
  {
    "resourceType" : "Device",
    "id" : "ADevice",
    "meta" : {
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-device"]
    },
    "text" : {
      "status" : "generated",
      "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>A sample ParekDevice, also referenced from other samples.</p></div>"
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
  }],
  "identifier" : [{
    "system" : "http://some.thing.unique",
    "value" : "some.specimen.id"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://ehelse.no/fhir/CodeSystem/no-kodeverk-8351",
      "code" : "Blod"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.1",
      "value" : "12345678900"
    }
  },
  "request" : [{
    "reference" : "ServiceRequest/ARequest"
  }],
  "collection" : {
    "collector" : {
      "reference" : "#ACollector"
    },
    "collectedDateTime" : "2026-03-13"
  },
  "container" : [{
    "device" : {
      "reference" : "#ADevice"
    }
  }]
}

```
