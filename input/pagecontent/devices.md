This page provides the detailed specifications for catalogs of medical devices

### Resources and Profiles for catalogs of devices

The figure below shows the resources and profiles used to represent catalogs of medical devices.

{% include img.html img="DeviceCatalog.png" caption="Figure 9.1: Artifacts used in catalogs of devices" width="70%" %}

When method 1 is chosen by the custodian of the catalog of devices, the catalog references its items: the [Composition](http://hl7.org/fhir/composition.html) resource constrained by the [Catalog](http://hl7.org/fhir/composition-catalog.html) profile to represent the whole catalog, references the items of this catalog from its `Composition.section.entry` elements.

When method 2 is chosen instead, the catalog is referenced by its items: Each [DeviceDefinition](http://hl7.org/fhir/devicedefinition.html) resource constrained by the [DeviceModel](StructureDefinition-DeviceModel) profile 	and representing an item of the catalog, references the [Composition](http://hl7.org/fhir/composition.html) resource constrained by the [CatalogHeader](StructureDefinition-CatalogHeader.html) profile to represent the catalog header, which holds the catalog general properties.

An item of the catalog describes a model or type of device, with its various identifiers, classifications, safety characteristics and properties, instantiated as a [DeviceDefinition](http://hl7.org/fhir/devicedefinition.html) resource linked to a number of supporting resources providing further details about this item.

### Searching and retrieving devices from the catalog

#### Searching Approaches

The key searcheable assets in a catalog of devices are the model of devices exposed to the consumers as instances of [DeviceDefinition](http://hl7.org/fhir/devicedefintion.html). 

- **Two-step search**: A client application browsing the content of the catalog may wish to first get the overview of a collection of devices at first glance, and then retrieve the full details associated with the ones of interest. In this case, the first query will perform a simple search on [DeviceDefinition](http://hl7.org/fhir/devicedefintion.html) with the desirable criteria listed in the table below ; and then a second narrower search will add the `_include:iterate=*` parameter, to retrieve the selected [DeviceDefinition](http://hl7.org/fhir/devicedefintion.html) resource(s) with their supporting resources ([ClinicalUseDefinition](http://hl7.org/fhir/clinicalusedefintion.html), [ChargeItemDefinition](http://hl7.org/fhir/chargeitemdefintion.html)) in the *searchset Bundle*.
- **One-step search**: Conversely a client application may wish to retrieve the full details of a device (or a small collection of devices) at first glance. In this case, it uses the appropriate search criteria for [DeviceDefinition](http://hl7.org/fhir/devicedefintion.html), in combination with the `_include:iterate=*` parameter so as to obtain all the supporting resources of each device retrieved, in the *searchset Bundle*.

Catalog servers may limit the iteration depth to an appropriate level for performance sake.

#### Search Parameters for models of devices (DeviceDefinition)

{:class="table table-bordered"}
| Name | Type | Description | Expression | Comment |
| --- | --- | --- | --- | --- |
| _lastUpdated | date | Last system point in time of the DeviceDefinition instance |  | can be used with =gt... |
| class | token | specific class of models of devices | DeviceDefinition.classification.type | For instance device class in GMDN or EMDN |
| udi | token | The primary UDI of the device model | DeviceDefinition.udiDeviceIdentifier.deviceIdentifier |  | 
| packaging-udi | token | The primary UDI of the package containing the device | DeviceDefinition.packaging.udiDeviceIdentifier.deviceIdentifier |  |
| identifier | token | A business identifier (other than primary UDI) of the device | DeviceDefinition.identifier |  |
| model-number | string | The model number of the device | DeviceDefinition.modelNumber |  |
| name | string | a name of the model of device | DeviceDefinition.deviceName.name | A device may have more than one name. |
| catalog | reference | The reference to a Composition resource (profiled by CatalogHeader) owning this item | DeviceDefinition.extension.where(url='http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference').valueReference.reference(Composition) | catalog to search from |
 
#### Examples of searching and retrieving devices from catalogs

In all examples below, `base` represents the endpoint of the catalog server. The answer of the server comes as a `Bundle` of type 'searchset' encapsulating the resources selected by the search. One particular device catalog is assumed to have Composition.id "a1" on the server.

##### List all catalogs of the server

`GET base/Composition?type:text=Catalog&amp;_summary=true`

Obtains the summary of every catalog available on the server. The anwser Bundle contains one entry with a Composition resource for each catalog found.

##### List all device catalogs

`GET base/Composition?type:text=Catalog&amp;category=device&amp;_summary=true`

Obtains the summary of each catalog of devices available on the server. The anwser Bundle contains one entry with a Composition resource for each device catalog found.

##### Retrieve all details for a device model

`GET [base]/DeviceDefinition?modelNumber=SCF332&amp;_include:iterate=*`

Obtains the full content of instances of `DeviceDefinition` with modelNumber = "SCF332" accompanied by their supporting resources. The anwser Bundle contains the full details for each: An entry for each matching `DeviceDefinition` and, below it, as many entries as resources referenced by this one (recursively). 

### Mapping of jurisdictional device databases to FHIR Resources

{:class="table table-bordered"}
| GUDID | EUDAMED | DeviceDefinition | Device | 
| --- | --- | --- | --- | 
| Brand Name | FLD-UDID-22: Device Name (under Basic UDI) | deviceName (type = registered-name) | deviceName (type = registered-name) |
| n.a. | FLD-UDID-176: Name/Trade name(s) | deviceName (type = user-friendly-name) | deviceName (type = user-friendly-name) | 
| Version or Model | FLD-UDID-20: Device model (under Basic UDI) | modelNumber | modelNumber | 
| Catalog Number | FLD-UDID-163: Reference-catalogue number | partNumber | partNumber | 
| Primary DI Number | FLD-UDID-178: UDI-DI code | udiDeviceIdentifier.deviceIdentifier | udiCarrier.deviceIdentifier |
| Issuing Agency (for Primary DI Number) | FLD-UDID-291: Issuing Entity UDI-DI | udiDeviceIdentifier.issuer | udiCarrier.issuer | 
| Device description | FLD-UDID-175: Additional Product description | description | n.a. | 
| Company Name | FLD-UDID-353: Actor/Organisation name | manufacturer.display or manufacturer.reference->Organization.name | manufacturer |
| Secondary DI Number | FLD-UDID-136: Secondary UDI-DI code | identifier.value (use = secondary, type = UDI) | identifier.value  (use = secondary, type = UDI) | 
| Issuing Agency (for Secondary DI Number) | FLD-UDID-293: Issuing Entity Secondary DI | identifier.assigner (use = secondary, type = UDI) | identifier.assigner (use = secondary, type = UDI) | 
| DM DI Number | FLD-UDID-138: Direct Marking UDI-DI code | identifier.value (use = official, type = DIRECT-MARKING) | identifier.value (use = official, type = DIRECT-MARKING) |
| n.a. | FLD-UDID-294: Issuing Entity Direct marking DI | identifier.assigner (use = official, type = DIRECT-MARKING) | identifier.assigner (use = official, type = DIRECT-MARKING) | 
| Unit of Use DI Number | FLD-UDID-135: Unit of Use DI code | identifier (use = official, type = SINGLE-ITEM) | identifier (use = official, type = SINGLE-ITEM) | 
| n.a. | FLD-UDID-14: Basic UDI-DI | regulatoryIdentifier (type = basic) | n.a. |
| PACKAGE DI Number | FLD-UDID-120: Package UDI-DI | packaging[.packaging]*.udiDeviceIdentifier.deviceIdentifier | n.a. | 
| Commercial Distribution Status | FLD-UDID-130: Device status (on EU market, no longer on EU market, not intended for EU market) | inferred from marketDistribution.marketPeriod | n.a. | 
| n.a. | FLD-UDID-250: Start date (per EU member country where device is commercialized) | marketDistribution.marketPeriod.start | n.a. |
| Commercial Distribution End Date | FLD-UDID-251: End date (per EU member country where device is commercialized) | marketDistribution.marketPeriod.end | n.a. | 
| n.a. | FLD-UDID-252: Member State were the device is or is to be made available | marketDistribution.subJurisdiction | n.a. | 
| Device Count (Number of MDs contained in the base package) | FLD-UDID-121: Quantity of item(s)(for any package level, including the base package) | packaging.count | n.a. |
| Labeler D-U-N-S Number | FLD-UDID-10: Legal manufacturer SRN | manufacturerReference->Organization.identifier (type = PRN, system = appropriate namespace for D-U-N-S in the US or SRN in EU) | n.a. | 
| n.a. | FLD-UDID-16: Risk Class | classification.type (system representing Risk Class code system) | n.a. | 
| Device GMDN classification | n.a. | classification.type (system = http://terminology.hl7.org/CodeSystem/GMDN) | n.a. |
| n.a. | Device EMDN classification | classification.type (system = urn:oid:1.2.250.1.213.2.68) | n.a. |
| Previous DI (same version or model of device) | ? | ? | n.a. |
| MRI safety information: safe, unsafe, conditional, not stated (ASTM F2503) | FLD-UDID-144: List of critical warnings (FLD-UDID-212: Critical warnings type) : safe, unsafe, conditional, consider hazards for magnetic fields, do not store near magnets or magnetic devices | safety: ValueSet device-safety (ASTM F2503 with C-codes from NCIthesaurus) | safety: ValueSet device-safety (ASTM F2503 with C-codes from NCIthesaurus) |
| Device required to be labeled as containing latex (Y/N) | ? | ? | n.a. |
| Device labeled as containing latex | FLD-UDID-156: Containing latex (Boolean) | safety: ValueSet device-safety (ASTM F2503 with C-codes from NCIthesaurus) | safety: ValueSet device-safety (ASTM F2503 with C-codes from NCIthesaurus) |
| For Single Use | ? | property | n.a. |
| Prescription Use | ? | property | n.a. |
| Over the Counter | ? | property | n.a. |
| Human Cell, Tissue or Cellular or Tissue-Based Product | ? | property | n.a. |
| n.a. | FLD-UDID-28: Active Device | property | n.a. |
| n.a. | FLD-UDID-30: Implantable | property | n.a. |

### Resources and Profiles for catalogs of IVD testing devices

See the [LIVD Implementation Guide](https://build.fhir.org/ig/HL7/livd/).  

