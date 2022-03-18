Instance: example-devicemodel-breast-pump
InstanceOf: DeviceModel
Title: "Philips Avent Breast Pump Single"
Description: "A breast pump example of model of device conforming to profile DeviceModel of DeviceDefinition"
Usage: #example
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
* classification[0].type.coding[0].system = "http://terminology.hl7.org/CodeSystem/GMDN"
* classification[0].type.coding[0].display = "Breast pump, electric"
* classification[0].justification[0].type = #citation
* classification[0].justification[0].citation = "A mains electricity (AC-powered) device used to extract milk from the breast, typically for collecting and feeding to an infant. The device produces a continuous low-grade suction through a funnel-like component that is applied to the breast; the milk collects in an attached vessel (e.g., a sterilized bottle). The device may have a safety mechanism to prevent a potentially harmful increase in negative pressure."

