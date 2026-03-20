# Parek Collector - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parek Collector**

## Example PractitionerRole: Parek Collector

A sample ParekCollector, also referenced from other samples.



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ACollector",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr"]
  },
  "practitioner" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
      "value" : "987"
    },
    "display" : "Somebody"
  }
}

```
