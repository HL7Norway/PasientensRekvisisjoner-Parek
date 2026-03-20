# Organization Id Type CS - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Organization Id Type CS**

## CodeSystem: Organization Id Type CS 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/CodeSystem/organization-id-type-cs | *Version*:0.1.3 |
| Draft as of 2026-03-20 | *Computable Name*:OrganizationIdType_CS |

 
Id types used to identify organizations. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OrganizationIdType_VS](ValueSet-organization-it-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "organization-id-type-cs",
  "url" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/organization-id-type-cs",
  "version" : "0.1.3",
  "name" : "OrganizationIdType_CS",
  "title" : "Organization Id Type CS",
  "status" : "draft",
  "date" : "2026-03-20T12:57:31+00:00",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "description" : "Id types used to identify organizations.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "urn:oid:2.16.578.1.12.4.1.2",
    "display" : "HER",
    "definition" : "HER-id"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.4.101",
    "display" : "ENH",
    "definition" : "Enhetsregisteret - Brønnøysund"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.4.102",
    "display" : "RESH",
    "definition" : "enheter i spesialisthelsetjenesten"
  },
  {
    "code" : "urn:oid:2.16.578.1.12.4.1.4.107",
    "display" : "AKO",
    "definition" : "Apotekenes konsesjonsnummer"
  }]
}

```
