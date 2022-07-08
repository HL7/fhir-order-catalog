Instance: example-drug-package-clarithromycin
InstanceOf: PackagedProductDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/DrugPackage"
* language = #en-US
* name = "Package for CLARITHROMYCINE GENERIC-LAB 25 mg/ml, granules for oral suspension in 100 ml HDPE bottle"									
* type = $PACKAGETYPE#MedicinalProductPack "Medicinal product pack"
* status = $PUBSTATUS#active "Active"
* statusDate = "2010-03-01"
* containedItemQuantity[0].value = 1
* containedItemQuantity[0].unit = "vial"
* containedItemQuantity[1].value = 3
* containedItemQuantity[1].unit = "syringe for oral administration"
* description = "1 high density polyethylene (HDPE) bottle of 100 ml with 3 syringes for oral administration"