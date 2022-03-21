Instance: example-device-catalog-header
InstanceOf: Composition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader"
* language = #en-US
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en-US\" lang=\"en-US\">\n   <p><b>Additional Narrative: </b></p>\n    <p><b>Device catalog title</b>: Worldwide Device Catalog</p>\n            <p><b>id:</b> example-device-catalog-header</p>\n      <p><b>meta - profile:</b> hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogHeader</p>\n    <p><b>status:</b> preliminary</p>\n            <p><b>type:</b> catalog</p>\n            <p><b>category:</b> device</p>\n      <p><b>date published:</b> March 21, 2022</p>\n    <p><b>valid from:</b> 2022-06-30 <b>to:</b> 2022-12-31</p>\n            <p><b>author:</b> World Device Association</p>\n            <p><b>custodian:</b> World Device Association</p>\n   </div>"
* extension.url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ValidityPeriod"
* extension.valuePeriod.start = "2022-06-30"
* extension.valuePeriod.end = "2022-12-31"
* identifier.use = #official
* identifier.system = "http://fhir.org"
* identifier.value = "GlobalMedicalDevicesCatalog12"
* status = #preliminary
* type.text = "Catalog"
* category = http://terminology.hl7.org/CodeSystem/catalogType#device
* date = "2022-03-21T12:00:00+02:00"
* author.display = "World Device Association"
* title = "Worldwide Device Catalog"
* custodian.display = "World Device Association"