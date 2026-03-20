# ParekCollector - Pasientens rekvisisjoner v0.1.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParekCollector**

## Resource Profile: ParekCollector 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr | *Version*:0.1.2 |
| Draft as of 2026-03-20 | *Computable Name*:ParekCollector |

**Usages:**

* Use this Profile: [ParekSpecimen](StructureDefinition-parek-specimen.md)
* Refer to this Profile: [ParekSpecimen](StructureDefinition-parek-specimen.md)
* Examples for this Profile: [PractitionerRole/ACollector](PractitionerRole-ACollector.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.ParekIG|current/StructureDefinition/parek-collector-pr)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-parek-collector-pr.csv), [Excel](StructureDefinition-parek-collector-pr.xlsx), [Schematron](StructureDefinition-parek-collector-pr.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "parek-collector-pr",
  "url" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr",
  "version" : "0.1.2",
  "name" : "ParekCollector",
  "status" : "draft",
  "date" : "2026-03-20T11:25:24+00:00",
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
    }]
  }
}

```
