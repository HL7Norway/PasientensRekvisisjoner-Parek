# Home - Pasientens rekvisisjoner v0.1.3

* [**Table of Contents**](toc.md)
* **Home**

## Home

| | |
| :--- | :--- |
| *Official URL*:http://hl7.no/fhir/ig/ParekIG/ImplementationGuide/hl7.fhir.no.ParekIG | *Version*:0.1.3 |
| Draft as of 2026-03-20 | *Computable Name*:ParekIG |

### Introduksjon

Interaksjon mellom lege og pasient skjer typisk i en kontekst med kort utstrekning i tid og rom. Innenfor denne konteksten kan det tas prøver eller bilder og analyseresultater blir tilgjengelige for legen. Konteksten kan være en innleggelse, en avtale eller avtale med oppfølgingsavtale innenfor få dager. Kommunikasjon er typisk elektronisk, men kan også bestå i at pasient får med seg et ark med informasjon om hvilke prøver som skal tas.

```
---
title: Original/normal requisition flow
---
%%{init: {
    'sequence': {
        'mirrorActors':false,
        'useMaxHeigth': 0
        },
    'theme': 'base'
    }
}%%
sequenceDiagram
    actor Requester
    actor Patient
    actor Sampler
    actor Laboratory

    Requester->>Sampler: Requisition
    activate Sampler
    Sampler->>Patient: Aquire samples
    activate Patient
    deactivate Patient
    Sampler->>Laboratory: Samples and requisition
    deactivate Sampler
    activate Laboratory
    Laboratory->>Requester: Results
    deactivate Laboratory

```

Det er to forhold som utfordrer denne lukkede konteksten

* Behov for å frikoble prøvetaking og analysearbeid fra rekvirent 
* Pasienten kan møte opp hvor som helst og få tatt prøvene og de kan sendes til et hvilket som helt laboratorim for analyser.
* "Frikobling i rom".
 
* Behov for å frikoble prøvetaking og analysearbeid fra nåværende kontekst 
* Pasienten skal møte opp på et senere tidspunkt og få tatt prøvene, typisk i forkant av en oppfølgingsavtale et stykke (flere måneder) fram i tid.
* "Frikobling i tid".
 

Prosjekt "**Pasientens rekvisisjoner**" (**Parek**) er etablert for å løse disse utfordringene.

Første fase av prosjektet handler primært om andre kulepunkt. Selv om det i prinsippet ikke er noe som hindrer at også første kulepunkt dekkes så vil det være begrensninger (f.eks. bruk av lokale kodeverk) i selve datainnholdet som i praksis utelukker at prøver kan tas eller analyseres andre steder enn de forhåndsvalgte. Dette er en flyt som allerede brukes en god del, men den er "manuell" har svakheter som gjerne bunner i at pasient møter opp som avtalt til oppfølging, men har glemt å ta de prøvene som skulle tas. Prosjektet tar sikte på å forvalte orkestreringen av aktørene for at denne flyten skal fungere mer optimalt.

```
---
title: Requisition flow with Parek
---
%%{init: {
    'sequence': {
        'mirrorActors':false,
        'useMaxHeigth': 400
        },
    'theme': 'base'
    }
}%%
sequenceDiagram
    actor Requester
    actor Parek
    actor Patient
    actor Sampler
    actor Laboratory

    rect rgb(100, 190, 255)
        Requester->>Parek: Requisition
        Note over Parek: Wait until samples are due
        activate Parek
        Parek-)Patient: Reminder
        activate Patient
        Patient->>Sampler: Visits sampler
        activate Sampler
        loop
            Sampler->Sampler: Collect sample
            Sampler->>Parek: Record samples
        end
        deactivate Patient
        Sampler->>Laboratory: Samples
        deactivate Sampler
        Parek-->>Requester: All samples collected
        deactivate Parek
    end
    Requester->>Laboratory: Final requisition
    activate Laboratory
    Laboratory-->>Requester: Results
    deactivate Laboratory

```

I denne figuren er den del av orkestreringen som Parek tar hånd om markert med blå bakgrunn. Nederst er resten av den manuelle flyten som forvaltes av rekvirenten selv, nå i forvisning om at ting er på plass og har skjedd som de skal.

### Implementasjonsguiden

Denne implementasjonsguiden definerer de ressursene som inngår i den flyten av data som forvaltes av Parek.

```
---
title: FHIR resources in Parek
---
classDiagram
    ServiceRequest <-- Specimen
    ServiceRequest : +PractitionerRole requester
    ServiceRequest : +List(OrderDetail) orderDetail
    ServiceRequest : +List(resource) contained
    Specimen : +PractitionerRole collector
    Specimen : +List(Device) device
    Specimen : +List(resource) contained

```

Siden Parek ikke er, eller har tilgang til, førstehåndsinformasjon om helsepersonell vil alle PractitionerRole-instanser være contained i den aktuelle ressurs. Det samme gjelder Device som kun eksisterer i kontekst av prøven de inneholder.

ServiceRequest har ingen kunnskap om Specimen. Specimen opprettes med refereranse til ServiceRequest. Parek bruker denne informasjonen til å finne ut om alle forventede prøver er tatt og endrer status fra "active" til "completed".



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.no.ParekIG",
  "url" : "http://hl7.no/fhir/ig/ParekIG/ImplementationGuide/hl7.fhir.no.ParekIG",
  "version" : "0.1.3",
  "name" : "ParekIG",
  "title" : "Pasientens rekvisisjoner",
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
  "description" : "Implementasjonsguide for Pasientens rekvisisjoner",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NO",
      "display" : "Norway"
    }]
  }],
  "packageId" : "hl7.fhir.no.ParekIG",
  "license" : "CC0-1.0",
  "fhirVersion" : ["5.0.0"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r5",
    "version" : "7.1.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r5",
    "version" : "5.2.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r5#1.1.0"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      }],
      "reference" : {
        "reference" : "Device/ADevice"
      },
      "name" : "A Device",
      "description" : "Example of a device",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-device"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ServiceRequest"
      }],
      "reference" : {
        "reference" : "ServiceRequest/ARequest"
      },
      "name" : "A Request",
      "description" : "Example of ParekServiceRequest",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-service-request"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Specimen"
      }],
      "reference" : {
        "reference" : "Specimen/ASpecimen"
      },
      "name" : "A Specimen",
      "description" : "Example of ParekSpecimen",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-specimen"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/organization-id-type-cs"
      },
      "name" : "Organization Id Type CS",
      "description" : "Id types used to identify organizations.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/organization-it-type-vs"
      },
      "name" : "Organization It Type VS",
      "description" : "Id types for organizations involved in DiagnosticReport/Observation",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ACollector"
      },
      "name" : "Parek Collector",
      "description" : "Example of collector with only organization",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-collector-pr"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/parek-device"
      },
      "name" : "Parek Device",
      "description" : "Device as used in Parek.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ARequester"
      },
      "name" : "Parek Requester",
      "description" : "Example of requester with both practitioner and organization",
      "isExample" : true,
      "profile" : ["http://hl7.no/fhir/ig/ParekIG/StructureDefinition/parek-requester-pr"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/parek-collector-pr"
      },
      "name" : "ParekCollector",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      }],
      "reference" : {
        "reference" : "StructureDefinition/parek-practitioner-role"
      },
      "name" : "ParekPractitionerRole",
      "description" : "PractitionerRole as used in Parek. Used to combine actors of type Practitioner and Organization. Practitioner and Organization are referenced by their Identifier.\nThis is an 'abstract' base profile for ParekRequester and ParekCollector.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/parek-requester-pr"
      },
      "name" : "ParekRequester",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/parek-service-request"
      },
      "name" : "ParekServiceRequest",
      "description" : "ServiceRecuest as used in Parek.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/parek-specimen"
      },
      "name" : "ParekSpecimen",
      "description" : "Specimen as used in Parek.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/person-id-type-cs"
      },
      "name" : "Person Id Type CS",
      "description" : "Id types used to identify persons involved, other than the patient.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/person-id-type-vs"
      },
      "name" : "Person Id Type VS",
      "description" : "Id types used to identify persons involved, other than the patient.",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/public-id-type-cs"
      },
      "name" : "Public Id Type CS",
      "description" : "Id types used to identify patients",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/public-it-type-vs"
      },
      "name" : "PublicIdType_VS",
      "description" : "Id types used to identify patients",
      "isExample" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/specimen-type-vs"
      },
      "name" : "Specimen Type VS",
      "description" : "Type og material in specimen.",
      "isExample" : false
    }],
    "page" : {
      "sourceUrl" : "toc.html",
      "name" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "sourceUrl" : "index.html",
        "name" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "copyrightyear"
      },
      "value" : "2026+"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "releaselabel"
      },
      "value" : "ci-build"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "autoload-resources"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/capabilities"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/examples"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/extensions"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/models"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/operations"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/profiles"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/vocabulary"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/maps"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/testing"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "input/history"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-resource"
      },
      "value" : "fsh-generated/resources"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "template/config"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-pages"
      },
      "value" : "input/images"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "template/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-liquid"
      },
      "value" : "input/liquid"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-qa"
      },
      "value" : "temp/qa"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-temp"
      },
      "value" : "temp/pages"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-output"
      },
      "value" : "output"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/guide-parameter-code",
        "code" : "path-tx-cache"
      },
      "value" : "input-cache/txcache"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-suppressed-warnings"
      },
      "value" : "input/ignoreWarnings.txt"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "path-history"
      },
      "value" : "http://hl7.no/fhir/ig/ParekIG/history.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-html"
      },
      "value" : "template-page.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "template-md"
      },
      "value" : "template-page-md.html"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-contact"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-context"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-copyright"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-jurisdiction"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-license"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-publisher"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-version"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "apply-wg"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "active-tables"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "fmm-definition"
      },
      "value" : "http://hl7.org/fhir/versions.html#maturity"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "propagate-status"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "excludelogbinaryformat"
      },
      "value" : "true"
    },
    {
      "code" : {
        "system" : "http://hl7.org/fhir/tools/CodeSystem/ig-parameters",
        "code" : "tabbed-snapshots"
      },
      "value" : "true"
    }]
  }
}

```
