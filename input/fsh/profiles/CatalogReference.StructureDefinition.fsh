Alias: $CatalogHeader = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader

Extension: CatalogReference
Id: CatalogReference
Title: "Reference to a catalog"
Description: "This extension to PlanDefinition, MedicationKnowledge and DeviceDefinition conveys the reference to a catalog containing the extended resource"
* ^version = "current"
* ^status = #draft
* ^date = "2022-03-17T12:16:22+01:00"
* ^publisher = "HL7 International - Orders and Observations Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* ^context[0].type = #element
* ^context[=].expression = "PlanDefinition"
* ^context[+].type = #element
* ^context[=].expression = "MedicationKnowledge"
* ^context[+].type = #element
* ^context[=].expression = "DeviceDefinition"
* value[x] only Reference
* valueReference only Reference($CatalogHeader)
* value[x] ^short = "Reference to a catalog containing this item"