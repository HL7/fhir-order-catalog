Instance: example-devicemodel-presthetics-accessories
InstanceOf: DeviceDefinition
Title: "A.B. DENTAL DEVICES LTD Presthetic Accessories"
Description: "A  Titanium Healing Cap, 3.75 mm Diameter, 5 mm lengh - example of model of device conforming to profile DeviceModel of DeviceDefinition"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/DeviceModel"
* language = #en-US
* extension[0].url = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference"
* extension[0].valueReference = Reference(Composition/example-device-catalog-header)
* description = "Titanium Healing Cap, 3.75 mm Diameter, 5 mm lengh"
* udiDeviceIdentifier.deviceIdentifier = "07290107271400"
//* udiDeviceIdentifier.issuer = "urn:oid:1.3.160"
* udiDeviceIdentifier.issuer = "urn:oid:2.51.1.1"
* udiDeviceIdentifier.jurisdiction = "urn:oid:2.16.840.1.113883.3.150"
* udiDeviceIdentifier.marketDistribution[0].marketPeriod.start = "2019-05-05"
* udiDeviceIdentifier.marketDistribution[0].subJurisdiction = "urn:oid:2.16.840.1.113883.3.150"
* partNumber = "P0-3.75,5"
* manufacturer.display = "A.B. DENTAL DEVICES LTD"				// for 5.0 snapshot-2 and ballot
//* manufacturerString = "A.B. DENTAL DEVICES LTD"				// for 5.0 snapshot-1
* deviceName.name = "Presthetic Accessories"
* deviceName.type = #registered-name
* modelNumber = "P0-3.75,5"
* classification[0].type = $GMDN#44881 "Dental implant suprastructure kit"  
* classification[0].justification[0].type = #citation
* classification[0].justification[0].citation = "A collection of prefabricated dental devices and components used to create a suprastructure on a dental implant to mimic preparations of natural teeth. It is used during dental implant restorative and laboratory procedures and will typically consist of a direct dental abutment (the device that is screwed into the surgically implanted fixture that creates the anchorage for the prosthetic tooth in the mandible or maxilla), a carrier, an impression pick-up, a replica, a healing cap and a burnout cylinder. This is a single-use device."
* classification[1].type = $SCT#1141761008 "Dental implant suprastructure"
* classification[2].type = $EMDN#P01020180 "Dental implants - accessories"
* packaging[0].type.coding[0] = $SCT#37284003 "Bag, device"
* packaging[0].count = 10
* packaging[0].udiDeviceIdentifier[0].deviceIdentifier = "17290107271407"
//* packaging[0].udiDeviceIdentifier[0].issuer = "urn:oid:1.3.160"
* packaging[0].udiDeviceIdentifier[0].issuer = "urn:oid:2.51.1.1"
* packaging[0].udiDeviceIdentifier[0].jurisdiction = "urn:oid:2.16.840.1.113883.3.150"
* packaging[0].packaging[0].type.coding[0] = $SCT#37284003 "Bag, device"
* packaging[0].packaging[0].count = 100
* packaging[0].packaging[0].udiDeviceIdentifier[0].deviceIdentifier = "27290107271404"
//* packaging[0].packaging[0].udiDeviceIdentifier[0].issuer = "urn:oid:1.3.160"
* packaging[0].packaging[0].udiDeviceIdentifier[0].issuer = "urn:oid:2.51.1.1"
* packaging[0].packaging[0].udiDeviceIdentifier[0].jurisdiction = "urn:oid:2.16.840.1.113883.3.150"
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
* property[4].type.text = "Device Packaged as Sterile"
* property[4].valueBoolean = false 
* property[5].type.text = "Requires Sterilization Prior to Use"
* property[5].valueBoolean = true  
* contact[0].system = #email
* contact[0].value = "Info@ab-dent.com"
* guideline.relatedArtifact[0].type = #documentation
* guideline.relatedArtifact[0].label = "Device described in GUDID:"
* guideline.relatedArtifact[0].document.url = "https://accessgudid.nlm.nih.gov/devices/07290107271400"