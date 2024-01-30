Profile: DrugPackage
Parent: PackagedProductDefinition
Id: DrugPackage
Title: "definition of a packaging of a medication"
Description: "This profile constrains the base resource PackagedProductDefinition to represent a definition of a packaging in a catalog of medications."
* ^version = "current"
* ^status = #draft
* ^date = "2022-06-10T11:57:00+01:00"
* ^publisher = "HL7 International / Orders and Observations"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension.valueCode = #oo
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/orders"
* ^useContext.code = http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction
* ^useContext.valueCodeableConcept = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* name MS
* type 1..
// Wait for snapshot #2 for this value set: * type = $PACKAGETYPE#MedicinalProductPack "Medicinal product pack"

