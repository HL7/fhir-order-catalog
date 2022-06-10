Profile: DrugPackage
Parent: PackagedProductDefinition
Id: DrugPackage
Title: "definition of a packaging of a medication"
Description: "This profile constrains the base resource PackagedProductDefinition to represent a definition of a packaging in a catalog of medications."
* ^version = "current"
* ^status = #draft
* ^date = "2022-06-10T11:57:00+01:00"
* ^publisher = "HL7 International - Orders and Observations Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* name MS
* type 1..
* type = $PACKAGETYPE#MedicinalProductPack "Medicinal product pack"

