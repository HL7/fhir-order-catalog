Profile: DrugKnowledge
Parent: MedicationKnowledge
Id: DrugKnowledge
Title: "item in a catalog of drugs"
Description: "This profile constrains the base resource MedicationKnowledge to represent an item in a catalog of medications."
* ^version = "current"
* ^status = #draft
* ^date = "2022-03-04T15:57:00+01:00"
* ^publisher = "HL7 International / Orders and Observations"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* extension contains CatalogReference named CatalogReference 0..*
* code 1..
* intendedJurisdiction MS
* indicationGuideline and indicationGuideline.indication MS
* clinicalUseIssue MS
* definitional and definitional.doseForm MS
* definitional.drugCharacteristic.value[x] 1..

