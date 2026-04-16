# Person Public Id Type CS - Pasientens rekvisisjoner v0.1.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Person Public Id Type CS**

## CodeSystem: Person Public Id Type CS 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/CodeSystem/person-public-id-type-cs | *Version*:0.1.7 |
| Draft as of 2026-04-16 | *Computable Name*:PersonPublicIdType_CS |

 
Public id types used to identify persons. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HealthCarePersonIdType_VS](ValueSet-healthcare-person-id-type-vs.md)
* [PersonPublicIdType_VS](ValueSet-person-public-id-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "person-public-id-type-cs",
  "url" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/person-public-id-type-cs",
  "version" : "0.1.7",
  "name" : "PersonPublicIdType_CS",
  "title" : "Person Public Id Type CS",
  "status" : "draft",
  "date" : "2026-04-16T08:13:22+00:00",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "description" : "Public id types used to identify persons.",
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
    "display" : "FHN",
    "definition" : "Felles hjelpenummer"
  }]
}

```
