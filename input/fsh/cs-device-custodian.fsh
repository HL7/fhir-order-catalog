Instance: cs-device-custodian
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://hl7.org/fhir/uv/order-catalog/CapabilityStatement/cs-device-custodian"
* version = "1.0.0"
* name = "CapabilityStatement4DeviceCustodian"
* title = "CapabilityStatement for custodian of catalog of medical devices"
* status = #active
* experimental = false
* date = "2022-10-21"
* publisher = "HL7 International - Orders and Observations Work Group"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "This Section describes the expected capabilities of the Custodian of a catalog of medical devices. This role is responsible for providing responses to the queries submitted by the catalog consumers. \n\nThe DeviceDefinition Resource is the focal Resource describing a model of device in the catalog."
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* kind = #requirements
* fhirVersion = #5.0.0-ballot
* format[0] = #xml
* format[+] = #json
* implementationGuide = "http://hl7.org/fhir/uv/order-catalog/ImplementationGuide/ig-uv-order-catalog"
* rest.mode = #server
* rest.documentation = "The Custodian of a catalog of medical devices **SHALL**:\n\n1. Support profiles CatalogHeader, DeviceModel defined in this Implementation Guide..\n2.  Implement the RESTful behavior according to the FHIR specification.\n3. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n4. Support json source formats for all order-catalog interactions.\n5. Identify the order-catalog  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n6. Support the searchParameters on each profile  individually and in combination.\n\nThe Custodian of a catalog of medical devices **SHOULD**:\n\n1. Support xml source formats for all order-catalog interactions.\n2. support the Catalog profile of the Composition Resource in the core standard\n"
* rest.security.description = "1. A custodian **SHALL** reject any unauthorized requests by returning an HTTP 401 \"Unauthorized\", HTTP 403 \"Forbidden\", or HTTP 404 \"Not Found\" ."
* rest.resource[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #DeviceDefinition        
* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/DeviceModel"
* rest.resource[=].interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].referencePolicy = #enforced
* rest.resource[=].searchInclude = "iterate=*"
* rest.resource[=].searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"								// wrong url, goes nowhere
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "http://hl7.org/fhir/2022Sep/search.html#id"                                  // url to be updated to R5 once it's published
* rest.resource[=].searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_lastUpdated"
//* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "http://hl7.org/fhir/2022Sep/search.html#lastUpdated"                         // url to be updated to R5 once it's published
// * rest.resource[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"					
// * rest.resource[=].extension.valueCode = #SHALL
// * rest.resource[=].type = #Composition
