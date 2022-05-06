Instance: example-devicemodel-breast-pump
InstanceOf: DeviceDefinition
Title: "Philips Avent Breast Pump Single"
Description: "A breast pump example of model of device conforming to profile DeviceModel of DeviceDefinition"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/DeviceModel"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[0].valueReference = Reference(Composition/example-device-catalog-header)
// no description available, unfortunately
* udiDeviceIdentifier.deviceIdentifier = "00075020063816"
* udiDeviceIdentifier.issuer = "http://hl7.org/fhir/NamingSystem/gs1-di"
* udiDeviceIdentifier.jurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
* udiDeviceIdentifier.marketDistribution[0].marketPeriod.start = "2016-09-17"
* udiDeviceIdentifier.marketDistribution[0].subJurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
// no catalog number in the GUDID for this device
* manufacturerString = "Philips Consumer Lifestyle B.V."
* deviceName.name = "Philips Avent Breast Pump Single"
* deviceName.type = #registered-name
* modelNumber = "SCF332"
* classification[0].type.coding[0].system = $GMDN
* classification[0].type.coding[0].display = "Breast pump, electric"
* classification[0].justification[0].type = #citation
* classification[0].justification[0].citation = "A mains electricity (AC-powered) device used to extract milk from the breast, typically for collecting and feeding to an infant. The device produces a continuous low-grade suction through a funnel-like component that is applied to the breast; the milk collects in an attached vessel (e.g., a sterilized bottle). The device may have a safety mechanism to prevent a potentially harmful increase in negative pressure."
* classification[1].type.coding[0] = $SCT#272201008 "Electric breast pump"
* languageCode = $LanguageIso#en-US "American English"  
* property[0].type.text = "For single use"
* property[0].valueBoolean = false
* property[1].type.text = "Prescription use"
* property[1].valueBoolean = false  
* property[2].type.text = "Over the counter"
* property[2].valueBoolean = true  
* property[3].type.text = "Human Cell, Tissue or Cellular or Tissue-Based Product (HCT/P)"
* property[3].valueBoolean = false  
* guideline.relatedArtifact[0].type = #documentation
* guideline.relatedArtifact[0].label = "Device described in GUDID:"
* guideline.relatedArtifact[0].document.url = "https://accessgudid.nlm.nih.gov/devices/00075020063816"