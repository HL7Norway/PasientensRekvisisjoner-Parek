# RequesterDefinedUuid - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RequesterDefinedUuid**

## NamingSystem: RequesterDefinedUuid 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/NamingSystem/RequesterDefinedUuid | *Version*:0.1.3 |
| Active as of 2026-03-20 | *Computable Name*:RequesterDefinedUuid |

 
NamingSystem for a required identifier that must be unique. Provides idempotency in case client systems tries to create same resource twice. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "RequesterDefinedUuid",
  "url" : "http://hl7.no/fhir/ig/ParekIG/NamingSystem/RequesterDefinedUuid",
  "version" : "0.1.3",
  "name" : "RequesterDefinedUuid",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2026-03-20",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "responsible" : "Norsk helsenett",
  "description" : "NamingSystem for a required identifier that must be unique. Provides idempotency in case client systems tries to create same resource twice.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "uniqueId" : [{
    "type" : "uuid",
    "value" : "http://hl7.no/fhir/ig/ParekIG/NamingSystem/RequesterDefinedUuid",
    "preferred" : true
  }]
}

```
