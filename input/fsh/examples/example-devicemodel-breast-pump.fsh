Instance: example-devicemodel-breast-pump
InstanceOf: DeviceModel
Title: "Philips Avent Breast Pump Single"
Description: "A breast pump example of model of device conforming to profile DeviceModel of DeviceDefinition"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/DeviceModel"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[0].valueReference = Reference(Composition/example-device-catalog-header)
// no description available, unfortunately
* udiDeviceIdentifier.deviceIdentifier = "00075020063816"
//* udiDeviceIdentifier.issuer = "urn:oid:1.3.160"
* udiDeviceIdentifier.issuer = "urn:oid:2.51.1.1"
* udiDeviceIdentifier.jurisdiction = "urn:oid:2.16.840.1.113883.3.150"
* udiDeviceIdentifier.marketDistribution[0].marketPeriod.start = "2016-09-17"
* udiDeviceIdentifier.marketDistribution[0].subJurisdiction = "urn:oid:2.16.840.1.113883.3.150"
// no catalog number in the GUDID for this device
//* manufacturerString = "Philips Consumer Lifestyle B.V."			// for 5.0.0
* manufacturer.display = "Philips Consumer Lifestyle B.V."			// for 5.0.0
* deviceName.name = "Philips Avent Breast Pump Single"
* deviceName.type = #registered-name
* modelNumber = "SCF332"
//* classification[gmdn].type.coding[0].system = $GMDN don't have GMDN code so just use text.	
//* classification[gmdn].type.coding[0].code = ???
//* classification[gmdn].type.coding[0].display = "Breast pump, electric"
* classification[gmdn].type.text = "Breast pump, electric"
* classification[gmdn].justification[0].type = #citation
* classification[gmdn].justification[0].citation = "A mains electricity (AC-powered) device used to extract milk from the breast, typically for collecting and feeding to an infant. The device produces a continuous low-grade suction through a funnel-like component that is applied to the breast; the milk collects in an attached vessel (e.g., a sterilized bottle). The device may have a safety mechanism to prevent a potentially harmful increase in negative pressure."
* classification[snomed].type = $SCT#272201008 "Electric breast pump"
* languageCode = $LanguageIso#en-US "English (United States)"  
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