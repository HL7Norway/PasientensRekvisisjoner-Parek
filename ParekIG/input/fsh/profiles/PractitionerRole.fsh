Profile: ParekPractitionerRole
Parent: PractitionerRole
Id: parek-practitioner-role
Description: "PractitionerRole as used in Parek. Used to combine actors of type Practitioner and Organization. Practitioner and Organization are referenced by their Identifier.
This is an 'abstract' base profile for ParekRequester and ParekCollector."
* practitioner ^definition = "Reference to Practitioner. May come from a direct mapping from or from a fallback in original message."
* practitioner 0..1
* practitioner
  * display 1..1
  * identifier 1..1
    * system from PersonIdType_VS
    * system 1..1
    * value 1..1
* organization ^definition = "Reference to Organization. May come from a direct mapping or from a fallback in the original message."
* organization 0..1
* organization
  * display 1..1
  * identifier 1..1
    * system from OrganizationIdType_VS
    * system 1..1
    * value 1..1


Profile: ParekRequester
Parent: ParekPractitionerRole
Id: parek-requester-pr 
* practitioner 1..1
* organization 1..1


Profile: ParekCollector
Parent: ParekPractitionerRole
Id: parek-collector-pr 
* organization 1..1
