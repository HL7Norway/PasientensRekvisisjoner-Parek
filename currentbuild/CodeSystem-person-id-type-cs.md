# Person Id Type CS - Pasientens rekvisisjoner v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Person Id Type CS**

## CodeSystem: Person Id Type CS 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/CodeSystem/person-id-type-cs | *Version*:0.1.0 |
| Draft as of 2026-03-19 | *Computable Name*:PersonIdType_CS |

 
Id types used to identify persons involved, other than the patient. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PersonIdType_VS](ValueSet-person-id-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "person-id-type-cs",
  "url" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/person-id-type-cs",
  "version" : "0.1.0",
  "name" : "PersonIdType_CS",
  "title" : "Person Id Type CS",
  "status" : "draft",
  "date" : "2026-03-19T07:57:25+00:00",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "description" : "Id types used to identify persons involved, other than the patient.",
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
    "code" : "urn:oid:2.16.578.1.12.4.1.4.4",
    "display" : "HPR",
    "definition" : "Helsepersonell-nummer"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.2",
    "display" : "HER",
    "definition" : "HER-id"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.4.5",
    "display" : "DUF",
    "definition" : "DUF-nummer"
  }]
}

```
