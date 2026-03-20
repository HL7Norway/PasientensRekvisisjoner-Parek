# ParekServiceRequest - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParekServiceRequest**

## Resource Profile: ParekServiceRequest 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-service-request | *Version*:0.1.3 |
| Draft as of 2026-03-20 | *Computable Name*:ParekServiceRequest |

 
ServiceRecuest as used in Parek. 

**Usages:**

* Examples for this Profile: [ServiceRequest/ARequest](ServiceRequest-ARequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.no.ParekIG|current/StructureDefinition/parek-service-request)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-parek-service-request.csv), [Excel](StructureDefinition-parek-service-request.xlsx), [Schematron](StructureDefinition-parek-service-request.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "parek-service-request",
  "url" : "http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-service-request",
  "version" : "0.1.3",
  "name" : "ParekServiceRequest",
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
  "description" : "ServiceRecuest as used in Parek.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.contained",
      "path" : "ServiceRequest.contained",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-requester-pr"]
      }]
    },
    {
      "id" : "ServiceRequest.identifier",
      "path" : "ServiceRequest.identifier",
      "definition" : "External identifiers of the request. Generally not global, may be internal to a specific requester/system.",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.identifier.system",
      "path" : "ServiceRequest.identifier.system",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.identifier.value",
      "path" : "ServiceRequest.identifier.value",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.code",
      "path" : "ServiceRequest.code",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.orderDetail",
      "path" : "ServiceRequest.orderDetail",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.orderDetail.parameterFocus",
      "path" : "ServiceRequest.orderDetail.parameterFocus",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.orderDetail.parameterFocus.concept",
      "path" : "ServiceRequest.orderDetail.parameterFocus.concept",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.orderDetail.parameter.value[x]",
      "path" : "ServiceRequest.orderDetail.parameter.value[x]",
      "type" : [{
        "code" : "Quantity"
      },
      {
        "code" : "CodeableConcept"
      },
      {
        "code" : "string"
      }]
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    },
    {
      "id" : "ServiceRequest.subject.identifier",
      "path" : "ServiceRequest.subject.identifier",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.subject.identifier.system",
      "path" : "ServiceRequest.subject.identifier.system",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.no/fhir/ig/ParekIG/ValueSet/public-it-type-vs"
      }
    },
    {
      "id" : "ServiceRequest.subject.identifier.value",
      "path" : "ServiceRequest.subject.identifier.value",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "min" : 1
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "definition" : "The person and/or organization responsible for the request. Typically the doctor in charge of the patient (e.g. fastlege).",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-requester-pr"]
      }]
    },
    {
      "id" : "ServiceRequest.note",
      "path" : "ServiceRequest.note",
      "mustSupport" : true
    }]
  }
}

```
