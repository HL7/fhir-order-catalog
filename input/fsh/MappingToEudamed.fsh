//========================================================
//       Mapping DeviceDefinition to GUDID Field Labels
//========================================================

Mapping: DeviceModelToEudamed
Source: DeviceModel
Target: "https://ec.europa.eu/tools/eudamed"
Id: devicedefinition-to-eudamed
Title: "Europe Union EUDAMED"
Description: "maps DeviceDefinition elements to EUDAMED UDI data dictionary field IDs|labels"
* -> "EUDAMED data dictionary field IDs/labels"
* description -> "FLD-UDID-175|Additional product description"
* identifier -> "FLD-UDID-136|Secondary UDI - DI code [use = secondary, type = DISTID]; FLD-UDID-138|Direct Marking UDI-DI code [type = DIRECT-MARKING]; FLD-UDID-135|Unit of Use DI code [type = SINGLE-ITEM]"
* udiDeviceIdentifier.deviceIdentifier -> "FLD-UDID-178|UDI-DI code"
* udiDeviceIdentifier.issuer -> "FLD-UDID-291|Issuing Entity UDI-DI"
* udiDeviceIdentifier.jurisdiction -> "https://ec.europa.eu/health/medical-devices-sector_en"
* udiDeviceIdentifier.marketDistribution.marketPeriod.start  -> "FLD-UDID-250|Start date"
* udiDeviceIdentifier.marketDistribution.marketPeriod.end  -> "FLD-UDID-251|End date"
* udiDeviceIdentifier.marketDistribution.subJurisdiction -> "FLD-UDID-141|Countries were the devices is made available"
* partNumber -> "FLD-UDID-163|Reference / Catalogue Number"
//* manufacturer[x] -> "FLD-UDID-10|Legal Manufacturer SRN"			// for 5.0.0
* manufacturer -> "FLD-UDID-10|Legal Manufacturer SRN"				// for 5.0.0
* deviceName.name -> "FLD-UDID-22|Device Name"
* deviceName.type -> "[registered-name]"
* modelNumber -> "FLD-UDID-20|Device Model"
* classification[emdn].type.coding.system -> "urn:oid:1.2.250.1.213.2.68"
* classification[emdn].type.coding.code -> "[EMDN code]"
* classification[emdn].type.coding.display -> "EMDN name"
//* packaging.type -> "FLD-UDID-309|Container Packages related to UDI-DI" ?
* packaging.count -> "FLD-UDID-121|Quantity of item(s)"
* packaging.udiDeviceIdentifier.deviceIdentifier -> "FLD-UDID-120|Package UDI-DI"
* safety -> "FLD-UDID-212|Critical Warnings type: {CW025:MR SAFE, CW026:MR CONDITIONAL, CW027:MR UNSAFE, CW023:Consider hazards from magnetic fields, CW024:Do not store near magnets or magnetic devices}; FLD-UDID-156|Containing latex (Boolean)"
* property -> "FLD-UDID-16|Risk Class; FLD-UDID-18|Animal tissues (Boolean); FLD-UDID-34|Microbial origin (Boolean); FLD-UDID-23|Human tissues (Boolean); FLD-UDID-28|Active Device (Boolean); FLD-UDID-29|Administer/Remove medicinal product (Boolean); FLD-UDID-30|Implantable (Boolean); FLD-UDID-31|Measuring Function (Boolean); FLD-UDID-32|Reusable Surgical Instruments (Boolean); FLD-UDID-33|Companion Diagnostic (Boolean); FLD-UDID-35|Near Patient Testing (Boolean); FLD-UDID-36|Patient Self Testing (Boolean); FLD-UDID-155|Medicinal product from blood/plasma (Boolean); FLD-UDID-158|Medicinal product (Boolean); FLD-UDID-262|Reagent (Boolean); FLD-UDID-263|Professional Testing (Boolean); FLD-UDID-264|Instrument (Boolean); FLD-UDID-356|Kit (Boolean); FLD-UDID-12|Device/Procedure pack/System; FLD-UDID-167|Single use (Boolean); FLD-UDID-169|Sterile; FLD-UDID-170|Sterilisation before use; FLD-UDID-146|Clinical Sizes; Handling Environment Temperature"
* contact -> "FLD-UDID-354|Contact Details"