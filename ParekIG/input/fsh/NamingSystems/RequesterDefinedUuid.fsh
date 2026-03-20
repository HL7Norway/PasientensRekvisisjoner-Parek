Instance: RequesterDefinedUuid
InstanceOf: NamingSystem
Usage: #definition
* name = "RequesterDefinedUuid"
* status = #active
* kind = #identifier
* date = "2026-03-20"
* publisher = "HL7 Norway"
* description = "NamingSystem for a required identifier that must be unique. Provides idempotency in case client systems tries to create same resource twice."
* responsible = "Norsk helsenett"
// The uniqueId defines how the system is identified
* uniqueId[0].type = #uuid
* uniqueId[0].value = "http://hl7.no/fhir/ig/ParekIG/NamingSystem/RequesterDefinedUuid"
* uniqueId[0].preferred = true
