# Healthcare Person Id Type CS - Pasientens rekvisisjoner v0.1.7

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Healthcare Person Id Type CS**

## CodeSystem: Healthcare Person Id Type CS 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/CodeSystem/healthcare-person-id-type-cs | *Version*:0.1.7 |
| Draft as of 2026-04-16 | *Computable Name*:HealthCarePersonIdType_CS |

 
Id types used to identify healthcare persons. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HealthCarePersonIdType_VS](ValueSet-healthcare-person-id-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "healthcare-person-id-type-cs",
  "url" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/healthcare-person-id-type-cs",
  "version" : "0.1.7",
  "name" : "HealthCarePersonIdType_CS",
  "title" : "Healthcare Person Id Type CS",
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
  "description" : "Id types used to identify healthcare persons.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "urn:oid:2.16.578.1.12.4.1.4.4",
    "display" : "HPR",
    "definition" : "Helsepersonell-nummer"
  }]
}

```
