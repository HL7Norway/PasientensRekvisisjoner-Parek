# ParekSpecimen - Mal v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParekSpecimen**

## Resource Profile: ParekSpecimen 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-specimen | *Version*:0.1.0 |
| Draft as of 2026-03-17 | *Computable Name*:ParekSpecimen |

 
Specimen as used in Parek. 

**Usages:**

* Examples for this Profile: [Specimen/ASpecimen](Specimen-ASpecimen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.ParekIG|current/StructureDefinition/parek-specimen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-parek-specimen.csv), [Excel](StructureDefinition-parek-specimen.xlsx), [Schematron](StructureDefinition-parek-specimen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "parek-specimen",
  "url" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-specimen",
  "version" : "0.1.0",
  "name" : "ParekSpecimen",
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
  "description" : "Specimen as used in Parek.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Specimen",
      "path" : "Specimen"
    },
    {
      "id" : "Specimen.contained",
      "path" : "Specimen.contained",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr"]
      }]
    },
    {
      "id" : "Specimen.identifier",
      "path" : "Specimen.identifier",
      "definition" : "External identifiers of the specimen. Generally not global, may be internal to a specific report or requester."
    },
    {
      "id" : "Specimen.identifier.system",
      "path" : "Specimen.identifier.system",
      "min" : 1
    },
    {
      "id" : "Specimen.identifier.value",
      "path" : "Specimen.identifier.value",
      "min" : 1
    },
    {
      "id" : "Specimen.type",
      "path" : "Specimen.type",
      "min" : 1,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://hl7.no/fhir/ig/ParekIG/ValueSet/specimen-type-vs"
      }
    },
    {
      "id" : "Specimen.subject",
      "path" : "Specimen.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "Specimen.subject.identifier",
      "path" : "Specimen.subject.identifier",
      "min" : 1
    },
    {
      "id" : "Specimen.subject.identifier.system",
      "path" : "Specimen.subject.identifier.system",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ig/ParekIG/ValueSet/public-it-type-vs"
      }
    },
    {
      "id" : "Specimen.subject.identifier.value",
      "path" : "Specimen.subject.identifier.value",
      "min" : 1
    },
    {
      "id" : "Specimen.request",
      "path" : "Specimen.request",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Specimen.collection",
      "path" : "Specimen.collection",
      "min" : 1
    },
    {
      "id" : "Specimen.collection.collector",
      "path" : "Specimen.collection.collector",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr"]
      }]
    },
    {
      "id" : "Specimen.collection.collected[x]",
      "path" : "Specimen.collection.collected[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Specimen.container",
      "path" : "Specimen.container",
      "min" : 1
    }]
  }
}

```
