# Public Id Type CS - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Public Id Type CS**

## CodeSystem: Public Id Type CS 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/CodeSystem/public-id-type-cs | *Version*:0.1.0 |
| Draft as of 2026-03-17 | *Computable Name*:PublicIdType_CS |

 
Id types used to identify patients 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PersonIdType_VS](ValueSet-person-id-type-vs.md)
* [PublicIdType_VS](ValueSet-public-it-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "public-id-type-cs",
  "url" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/public-id-type-cs",
  "version" : "0.1.0",
  "name" : "PublicIdType_CS",
  "title" : "Public Id Type CS",
  "status" : "draft",
  "date" : "2026-03-17T13:48:48+00:00",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "description" : "Id types used to identify patients",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "urn:oid:2.16.578.1.12.4.1.4.1",
    "display" : "FNR",
    "definition" : "Fødselsnummer"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.4.2",
    "display" : "DNR",
    "definition" : "D-nummer"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.4.3",
    "display" : "FHNR",
    "definition" : "Felles hjelpenummer"
  }]
}

```
