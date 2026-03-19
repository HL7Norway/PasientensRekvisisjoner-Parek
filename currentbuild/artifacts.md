# Artifacts Summary - Pasientens rekvisisjoner v0.1.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Abstract Profiles 

These are profiles on resources or data types that describe patterns used by other profiles, but cannot be instantiated directly. I.e. instances can conform to profiles **based** on these abstract profiles but do not declare conformance to the abstract profiles themselves.

| | |
| :--- | :--- |
| [ParekPractitionerRole](StructureDefinition-parek-practitioner-role.md) | PractitionerRole as used in Parek. Used to combine actors of type Practitioner and Organization. Practitioner and Organization are referenced by their Identifier. This is an 'abstract' base profile for ParekRequester and ParekCollector. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Parek Device](StructureDefinition-parek-device.md) | Device as used in Parek. |
| [ParekCollector](StructureDefinition-parek-collector-pr.md) |  |
| [ParekRequester](StructureDefinition-parek-requester-pr.md) |  |
| [ParekServiceRequest](StructureDefinition-parek-service-request.md) | ServiceRecuest as used in Parek. |
| [ParekSpecimen](StructureDefinition-parek-specimen.md) | Specimen as used in Parek. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Organization It Type VS](ValueSet-organization-it-type-vs.md) | Id types for organizations involved in DiagnosticReport/Observation |
| [Person Id Type VS](ValueSet-person-id-type-vs.md) | Id types used to identify persons involved, other than the patient. |
| [PublicIdType_VS](ValueSet-public-it-type-vs.md) | Id types used to identify patients |
| [Specimen Type VS](ValueSet-specimen-type-vs.md) | Type og material in specimen. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Organization Id Type CS](CodeSystem-organization-id-type-cs.md) | Id types used to identify organizations. |
| [Person Id Type CS](CodeSystem-person-id-type-cs.md) | Id types used to identify persons involved, other than the patient. |
| [Public Id Type CS](CodeSystem-public-id-type-cs.md) | Id types used to identify patients |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [A Device](Device-ADevice.md) | Example of a device |
| [A Request](ServiceRequest-ARequest.md) | Example of ParekServiceRequest |
| [A Specimen](Specimen-ASpecimen.md) | Example of ParekSpecimen |
| [Parek Collector](PractitionerRole-ACollector.md) | Example of collector with only organization |
| [Parek Requester](PractitionerRole-ARequester.md) | Example of requester with both practitioner and organization |

