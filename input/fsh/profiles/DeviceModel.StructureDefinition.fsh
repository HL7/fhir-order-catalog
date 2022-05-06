Profile: DeviceModel
Parent: DeviceDefinition
Id: DeviceModel
Title: "Device Model"
Description: "This profile constrains the base resource DeviceDefinition to represent a model of device in a catalog of medical devices"
* ^version = "current"
* ^status = #draft
* ^date = "2022-02-20T18:06:45+01:00"
* ^publisher = "HL7 International - Orders and Observations Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/Special/committees/orders"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* extension contains CatalogReference named CatalogReference 0..*
* description MS
* identifier MS
* identifier ^definition = "This repeatable element is used in catalogs of devices to convey any kind of identifier assigned to the model of device, other than the primary UDI DI.
identifier may convey for instance, the secondary UDI-DI, the direct-marking UDI-DI, the unit-of-use UDI-DI or any additional non-UDI identifier."
* udiDeviceIdentifier MS
* udiDeviceIdentifier.issuer ^definition = "Organization accredited by the jurisdictional authority to operate a system for the issuance of UDIs. Main issuers referenced in the US and/or in EU include:
1. GS1: http://hl7.org/fhir/NamingSystem/gs1-di,
2. HIBCC: http://hl7.org/fhir/NamingSystem/hibcc-diI,
3. ICCBBA for blood containers: http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
4. ICCBBA for other devices: http://hl7.org/fhir/NamingSystem/iccbba-other-di,
5. IFA (Europe Union only): http://hl7.org/fhir/NamingSystem/ifa-gmbh-di"
* udiDeviceIdentifier.marketDistribution MS
* partNumber MS
* manufacturer[x] MS
* deviceName MS
* modelNumber MS
* classification ^slicing.discriminator.type = #value
* classification ^slicing.discriminator.path = "DeviceDefinition.classification.type.coding.system"
* classification ^slicing.description = "Discriminated type.coding.system"
* classification ^slicing.rules = #open
* classification.type.coding 1..1
* classification contains gmdn 0..*
* classification[gmdn] ^short = "GMDN classification"
* classification[gmdn] ^definition = "Global Medical Device Nomenclature classification"
* classification[gmdn].type.coding.system = "http://terminology.hl7.org/CodeSystem/GMDN" (exactly)
* classification contains snomed 0..1
* classification[snomed] ^short = "SNOMED CT"
* classification[snomed] ^definition = "Systematized nomenclature of medicine - clinical terms"
* classification[snomed].type.coding.system = "http://snomed.info/sct" (exactly)
* hasPart.count MS
* packaging.count MS
* packaging.udiDeviceIdentifier MS
* packaging.udiDeviceIdentifier.issuer ^definition = "Organization accredited by the jurisdictional authority to operate a system for the issuance of UDIs. Main issuers referenced in the US and/or in EU include:
1. GS1: http://hl7.org/fhir/NamingSystem/gs1-di,
2. HIBCC: http://hl7.org/fhir/NamingSystem/hibcc-diI,
3. ICCBBA for blood containers: http://hl7.org/fhir/NamingSystem/iccbba-blood-di,
4. ICCBBA for other devices: http://hl7.org/fhir/NamingSystem/iccbba-other-di,
5. IFA (Europe Union only): http://hl7.org/fhir/NamingSystem/ifa-gmbh-di"
* safety MS
* property MS
* property.value[x] 1..
* guideline MS


