# ParekPractitionerRole - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParekPractitionerRole**

## Resource Profile: ParekPractitionerRole ( Abstract ) 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-practitioner-role | *Version*:0.1.3 |
| Draft as of 2026-03-20 | *Computable Name*:ParekPractitionerRole |

 
PractitionerRole as used in Parek. Used to combine actors of type Practitioner and Organization. Practitioner and Organization are referenced by their Identifier. This is an 'abstract' base profile for ParekRequester and ParekCollector. 

**Usages:**

* Derived from this Profile: [ParekCollector](StructureDefinition-parek-collector-pr.md) and [ParekRequester](StructureDefinition-parek-requester-pr.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.ParekIG|current/StructureDefinition/parek-practitioner-role)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-parek-practitioner-role.csv), [Excel](StructureDefinition-parek-practitioner-role.xlsx), [Schematron](StructureDefinition-parek-practitioner-role.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "parek-practitioner-role",
  "url" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-practitioner-role",
  "version" : "0.1.3",
  "name" : "ParekPractitionerRole",
  "status" : "draft",
  "date" : "2026-03-20T12:42:40+00:00",
  "publisher" : "Norsk helsenett - NHN",
  "contact" : [{
    "name" : "Norsk helsenett - NHN",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.nhn.no"
    }]
  }],
  "description" : "PractitionerRole as used in Parek. Used to combine actors of type Practitioner and Organization. Practitioner and Organization are referenced by their Identifier.\nThis is an 'abstract' base profile for ParekRequester and ParekCollector.",
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
  "abstract" : true,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "definition" : "Reference to Practitioner. May come from a direct mapping from or from a fallback in original message."
    },
    {
      "id" : "PractitionerRole.practitioner.identifier",
      "path" : "PractitionerRole.practitioner.identifier",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.practitioner.identifier.system",
      "path" : "PractitionerRole.practitioner.identifier.system",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ig/ParekIG/ValueSet/person-id-type-vs"
      }
    },
    {
      "id" : "PractitionerRole.practitioner.identifier.value",
      "path" : "PractitionerRole.practitioner.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.practitioner.display",
      "path" : "PractitionerRole.practitioner.display",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "definition" : "Reference to Organization. May come from a direct mapping or from a fallback in the original message."
    },
    {
      "id" : "PractitionerRole.organization.identifier",
      "path" : "PractitionerRole.organization.identifier",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.organization.identifier.system",
      "path" : "PractitionerRole.organization.identifier.system",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ig/ParekIG/ValueSet/organization-it-type-vs"
      }
    },
    {
      "id" : "PractitionerRole.organization.identifier.value",
      "path" : "PractitionerRole.organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "PractitionerRole.organization.display",
      "path" : "PractitionerRole.organization.display",
      "min" : 1
    }]
  }
}

```
