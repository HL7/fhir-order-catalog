Instance: example-medication-catalog-header
InstanceOf: Composition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader"
* language = #en-US
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\n   <p><b>Additional Narrative: </b></p>\n    <p><b>Medication catalog title</b>: Drugs authorized for prescription in Healthyland</p>\n            <p><b>id:</b> example-medication-catalog-header</p>\n      <p><b>meta - profile:</b> hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader</p>\n    <p><b>status:</b> preliminary</p>\n            <p><b>type:</b> catalog</p>\n            <p><b>category:</b> medication</p>\n      <p><b>date published:</b> May 20, 2022</p>\n    <p><b>valid from:</b> 2022-09-30 <b>to:</b> 2022-12-31</p>\n            <p><b>author:</b> Healthyland medicinal product agency</p>\n            <p><b>custodian:</b> Healthyland medicinal product agency</p>\n   </div>"
* extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ValidityPeriod"
* extension.valuePeriod.start = "2022-09-30"
* extension.valuePeriod.end = "2022-12-31"
* identifier.use = #official
* identifier.system = "http://fhir.org"
* identifier.value = "HealthylandDrugsCatalog"
* status = #preliminary
* type.text = "Catalog"
* category = http://terminology.hl7.org/CodeSystem/catalogType#medication
* date = "2022-05-20T12:00:00+02:00"
* author.display = "Healthyland medicinal product agency"
* title = "Drugs authorized for prescription in Healthyland"
* custodian.display = "Healthyland medicinal product agency"