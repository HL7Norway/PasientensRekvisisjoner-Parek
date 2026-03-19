# Parek Requester - Pasientens rekvisisjoner v0.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parek Requester**

## Example PractitionerRole: Parek Requester

A sample ParekRequester, also referenced from other samples.



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ARequester",
  "meta" : {
    "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-requester-pr"]
  },
  "practitioner" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.4",
      "value" : "987"
    },
    "display" : "Somebody"
  },
  "organization" : {
    "identifier" : {
      "system" : "urn:oid:2.16.578.1.12.4.1.4.101",
      "value" : "987654"
    },
    "display" : "Someplace"
  }
}

```
