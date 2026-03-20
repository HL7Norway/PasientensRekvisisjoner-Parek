# Person Id Type VS - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Person Id Type VS**

## ValueSet: Person Id Type VS 

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/ValueSet/person-id-type-vs | *Version*:0.1.3 |
| Draft as of 2026-03-20 | *Computable Name*:PersonIdType_VS |

 
Id types used to identify persons involved, other than the patient. 

 **References** 

* [ParekPractitionerRole](StructureDefinition-parek-practitioner-role.md)
* [ParekPractitionerRole](StructureDefinition-parek-practitioner-role.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "person-id-type-vs",
  "url" : "http://hl7.no/fhir/ig/ParekIG/ValueSet/person-id-type-vs",
  "version" : "0.1.3",
  "name" : "PersonIdType_VS",
  "title" : "Person Id Type VS",
  "status" : "draft",
  "date" : "2026-03-20T13:17:08+00:00",
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
  "compose" : {
    "include" : [{
      "system" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/public-id-type-cs"
    },
    {
      "system" : "http://hl7.no/fhir/ig/ParekIG/CodeSystem/person-id-type-cs"
    }]
  }
}

```
