# ParekRequester - Pasientens rekvisisjoner v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParekRequester**

## Resource Profile: ParekRequester 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-requester-pr | *Version*:0.1.0 |
| Draft as of 2026-03-19 | *Computable Name*:ParekRequester |

**Usages:**

* Use this Profile: [ParekServiceRequest](StructureDefinition-parek-service-request.md)
* Refer to this Profile: [ParekServiceRequest](StructureDefinition-parek-service-request.md)
* Examples for this Profile: [PractitionerRole/ARequester](PractitionerRole-ARequester.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.ParekIG|current/StructureDefinition/parek-requester-pr)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-parek-requester-pr.csv), [Excel](StructureDefinition-parek-requester-pr.xlsx), [Schematron](StructureDefinition-parek-requester-pr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "parek-requester-pr",
  "url" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-requester-pr",
  "version" : "0.1.0",
  "name" : "ParekRequester",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-practitioner-role",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "min" : 1
    }]
  }
}

```
