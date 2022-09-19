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
1. GS1 GTIN: urn:oid:1.3.160,
2. HIBCC: urn:oid:2.16.840.1.113883.6.40,
3. ICCBBA Information Standard for Blood and Transplant (ISBT) 128: urn:oid:2.16.840.1.113883.6.18,
4. ICCBBA for other devices: to be found,
5. IFA (Europe Union only): to be found"
* udiDeviceIdentifier.jurisdiction ^definition = "The jurisdiction to which the deviceIdentifier applies. Known jurisdictions are:
1. US Food & Drug Administration (FDA): urn:oid:2.16.840.1.113883.3.150,
2. Europe Union EUDAMED: https://ec.europa.eu/health/medical-devices-sector_en"
* udiDeviceIdentifier.marketDistribution MS
* partNumber MS
* manufacturer MS				// for 5.0 snapshot-2 and ballot 
//* manufacturer[x] MS			// for 5.0 snapshot-1
* deviceName MS
* modelNumber MS
* classification ^slicing.discriminator.type = #pattern
* classification ^slicing.discriminator.path = "type.coding.system"
* classification ^slicing.description = "Slice based on classification.type pattern"
* classification ^slicing.rules = #open
* classification contains 
  gmdn 0..* and 
  snomed 0..1 and
  emdn 0..1

* classification[gmdn] ^short = "GMDN classification"
* classification[gmdn] ^definition = "Global Medical Device Nomenclature classification"
* classification[gmdn].type.coding.system = "http://terminology.hl7.org/CodeSystem/GMDN"

* classification[snomed] ^short = "SNOMED CT"
* classification[snomed] ^definition = "Systematized nomenclature of medicine - clinical terms"
* classification[snomed].type.coding.system = "http://snomed.info/sct"

* classification[emdn] ^short = "EMDN"
* classification[emdn] ^definition = "European Medical Device Nomenclature"
* classification[emdn].type.coding.system = "urn:oid:1.2.250.1.213.2.68"

* hasPart.count MS
* packaging.count MS
* packaging.udiDeviceIdentifier MS
* packaging.udiDeviceIdentifier.issuer ^definition = "Organization accredited by the jurisdictional authority to operate a system for the issuance of UDIs. Main issuers referenced in the US and/or in EU include:
1. GS1 GTIN: urn:oid:1.3.160,
2. HIBCC: urn:oid:2.16.840.1.113883.6.40,
3. ICCBBA Information Standard for Blood and Transplant (ISBT) 128: urn:oid:2.16.840.1.113883.6.18,
4. ICCBBA for other devices: to be found,
5. IFA (Europe Union only): to be found"
* safety MS
* property MS
* property.value[x] 1..
* guideline MS


