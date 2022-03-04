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
* description MS
* identifier MS
* identifier ^definition = "This repeatable element is used in catalogs of devices to convey any kind of identifier assigned to the model of device, other than the primary UDI DI."
* identifier ^comment = "identifier may convey for instance, the secondary UDI-DI, the direct-marking UDI-DI, the unit-of-use UDI-DI or any additional non-UDI identifier."
* udiDeviceIdentifier MS
* udiDeviceIdentifier.marketDistribution MS
* partNumber MS
* manufacturer[x] MS
* deviceName MS
* modelNumber MS
* classification ^slicing.discriminator.type = #value
* classification ^slicing.discriminator.path = "DeviceDefinition.classification.type.coding.system"
* classification ^slicing.description = "Discriminated type.coding.system"
* classification ^slicing.rules = #open
* classification contains gmdn 0..*
* classification[gmdn] ^short = "GMDN classification"
* classification[gmdn] ^definition = "Global Medical Device Nomenclature classification"
* classification[gmdn].type.coding.system = "http://terminology.hl7.org/CodeSystem/GMDN" (exactly)
* hasPart.count MS
* packaging.count MS
* packaging.udiDeviceIdentifier MS
* safety MS
* property MS
* property.value[x] 1..
* guideline MS


