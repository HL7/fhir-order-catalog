Instance: example-devicemodel-interbody-fusion-system
InstanceOf: DeviceDefinition
Title: "Imola Interbody Fusion System"
Description: "A spinal interbody fusion cage example of model of device conforming to profile DeviceModel of DeviceDefinition"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/DeviceModel"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[0].valueReference = Reference(Composition/example-device-catalog-header)
* identifier[0].use = #secondary
* identifier[0].type = $IDTYPE#UDI "Universal Device Identifier"
* identifier[0].system = "http://hl7.org/fhir/NamingSystem/gs1-di"
* identifier[0].value = "00843210101415"
* udiDeviceIdentifier.deviceIdentifier = "B417F12260121"
* udiDeviceIdentifier.issuer = "http://hl7.org/fhir/NamingSystem/hibcc-diI"
* udiDeviceIdentifier.jurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
* udiDeviceIdentifier.marketDistribution[0].marketPeriod.start = "2017-08-22"
* udiDeviceIdentifier.marketDistribution[0].subJurisdiction = "http://hl7.org/fhir/NamingSystem/us-fda-udi"
// no catalog number in the GUDID for this device
* manufacturerString = "Altus Spine, LLC"
* deviceName.name = "Imola Interbody Fusion System"
* deviceName.type = #registered-name
* modelNumber = "F12260-12"
* classification[0].type.coding[0] = $GMDN#60762 "Polymeric spinal interbody fusion cage"
* classification[1].type.coding[0] = $SCT#257275005 "Spinal cage"
* classification[2].type.coding[0] = $EMDN#P090701 "Spinal fusion systems"
* safety[0].coding[0] = $NCIthesaurus#C113844 "Labeling does not Contain MRI Safety Information"
* languageCode = $LanguageIso#en-US "American English"  
* property[0].type.text = "For single use"
* property[0].valueBoolean = true
* property[1].type.text = "Prescription use"
* property[1].valueBoolean = true  
* property[2].type.text = "Over the counter"
* property[2].valueBoolean = false  
* property[3].type.text = "Human Cell, Tissue or Cellular or Tissue-Based Product (HCT/P)"
* property[3].valueBoolean = false  
* contact[0].system = #email
* contact[0].value = "Info@altus-spine.com"
* guideline.relatedArtifact[0].type = #documentation
* guideline.relatedArtifact[0].label = "Device described in GUDID:"
* guideline.relatedArtifact[0].document.url = "https://accessgudid.nlm.nih.gov/devices/B417F12260121"