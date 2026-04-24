# Changelog

All notable changes to the HL7 FHIR Order Catalog Implementation Guide since 2020-08-05.

---

## [Unreleased / In Progress] - 2026

### Removed
- Removed jurisdiction and status changes from IG resources
- Removed all French-language content from the specification

### Fixed
- Fixed QA warnings and errors
  - Migrated `fixed` constraints to `pattern` as required by publisher
  - Replaced inactive codes with current equivalents
  - Added missing examples to resolve QA issues
- Resolved build errors and warnings across profile and example files

---

## [1.0.0] - 2025

### Added
- Added `publication-request.json` file replacing the legacy `package-list.json`
- Added IG resource extensions and parameters (FHIR-49962)
  - Contact and publisher metadata updated

### Changed
- **Version bump**: IG version updated to `1.0.0` and `fhirVersion` set to `5.0.0` (final R5 release)
- **ObservationDefinition** (FHIR-49913): Renamed element `quantitativeDetails` to `permittedUnit` in profile and all examples to align with final FHIR R5 release
- **ActivityDefinition** (FHIR-49964): Updated `observationRequirement` and `observationResultRequirement` to `canonical` data type in examples per final R5 release
- Fixed `languageCode` code system reference and updated display text for `en-US`
- Fixed erroneous (duplicated) anchor name in narrative content
- Reformatted ImplementationGuide resource for consistency
- Updated build scripts to latest versions

### Removed
- Removed `node-v16.17.0-x64.msi` binary from `input/fsh/profiles/`
- Removed `package-list.json` (superseded by `publication-request.json`)

---

## 2024

### Changed
- **FHIR-41369**: Changed `Catalog` profile to use `ValidityPeriod` extension (replacing `cqm-ValidityPeriod`); made the extension optional and `mustSupport`, consistent with `CatalogHeader`; removed further unneeded constraints
- **FHIR-41369**: Aligned the name and filename for the `Catalog` profile for consistency
- **FHIR-41369**: Fixed links to the "Profile for Catalog" (moved from the base FHIR spec `Composition` to this IG)
- Cleaned up FHIR version references — removed "ballot" and "snapshot" labels throughout
- Updated `_updatePublisher.sh` to the latest version

### Removed
- Removed `fsh-generated/` directory and `FHIR-order-catalog.xml` from source control; updated `.gitignore` accordingly

---

## 2023

### Changed
- **FHIR-40841** (PR #1): Updated IG per FHIR-40841 tracker item
- **FHIR-40823** (PR #2): Updated IG per FHIR-40823 tracker item
- **FHIR-28345** (PR #3): Updated IG per FHIR-28345 tracker item
- **FHIR-41341** (PR #4): Updated IG per FHIR-41341 tracker item
- Rebuilt output artifacts

---

## 2022

### Added
- **Drug catalog**
  - New capability statement for custodian of catalog of drugs
  - New search parameters for drug catalog
  - Completed clarithromycin medication example with diagram
  - Built out full medication catalog example (MedicationKnowledge-based)
  - Added HTML pages for examples of search on drug compendium
- **Device catalog**
  - Completed specification for catalogs of devices
  - New capability statements for catalog custodian
  - Mapping of `DeviceModel` profile to GUDID (Global Unique Device Identification Database)
  - Mapping of `DeviceModel` profile to EUDAMED
  - New `DeviceModel` profile of `DeviceDefinition` with GMDN classification
  - First example instance of `DeviceDefinition`
  - Use case pages for device catalogs
  - Consolidated and reorganized device model examples

### Changed
- Migrated to **FHIR R5 5.0.0-ballot** and then to **5.0.0-snapshot1**
  - Large-scale adjustments throughout profiles and examples
  - Added `caseSensitivity` to local code systems
  - Removed residual `fhirVersion` elements
- Migrated new `DeviceModel` and `DrugKnowledge` (`MedicationKnowledge`) profiles from XML to **FSH (FHIR Shorthand)**
- Added UCUM alias to FSH aliases file
- Converted Devices specification page from HTML to Markdown; added device mappings
- Updated `exlabservices.xml` example
- Shortened artifact names to remove abbreviations (except "Lab")
- Reorganized examples in Artifacts index
- Updated profiles of `ClinicalUseDefinition` with cardinalities on `warning`
- Removed `#current` suffix appended to `hl7.fhir.template`

### Fixed
- Fixed slicing errors in `DeviceDefinition` profiles
- Corrected OID of issuer GS1 from `1.3.160` to `2.51.1.1`
- Fixed `udiDeviceIdentifier` issuer and jurisdiction using correct OIDs
- Fixed erroneous `document` tags
- Fixed a broken link in the devices specification page

### Removed
- Removed `input-cache` files and folders (including `txcache`) from version control
- Removed `fsh-generated` directory from version control

---

## 2021

### Added
- New profiles for **ClinicalUseDefinition** resources (5 profiles):
  - `IndicationDefinition`
  - `ContraindicationDefinition`
  - `UndesirableEffectDefinition`
  - `InteractionDefinition`
  - `WarningDefinition`
- Examples for indication and contraindication resources
- Extended `CatalogReference` extension to also cover `DeviceDefinition` and `MedicationKnowledge`
- Device use cases page; numbered use cases
- Big picture diagram for catalogs of medications
- Subscription specification added (now that IG targets R5)
- Drug use cases complemented with contribution from PHARM WG
- Added copyrights to `ValueSet` examples containing SNOMED CT content

### Changed
- Migrated to **FHIR R5** (initial work on `catalogR5` branch, merged January 2022)
  - Updated `Composition.relatesTo` for R5 changes
  - Accommodated new `RelatedArtifact` structure in R5
  - Updated all examples for R5 conformity
  - Reopened `Composition.subject` for DaVinci grafting
- **ObservationDefinition** profiles and examples updated for R5 conformity
- Updated drug catalog specification page
- Updated home page to mention R5 and definitional resources
- Refined catalog definition and wording throughout
- Clarification of catalog diagrams
- Updated figure for catalog of medications
- Naming of profiles aligned per catalog call decisions
- Removed "note to ballotters" from spec page

### Fixed
- Fixed canonical reference issue in FSH profiles
- Corrected display name for Vitamin D LOINC code (US English)
- Corrections to `ValueSet` and `ObservationDefinition` examples for R5 conformity

---

## 2020

### Changed
- Applied the first 22 dispositions from the September 2020 ballot comment resolution
- Applied further ballot comment dispositions (CatalogHeader, LabServiceDefinition, device image)
- Corrected slicing in `LabChargeItemDefinition` profile
- Corrected typos from ballot comments

### Fixed
- **JIRA-28353**: Added example `ValueSet` to `useContext.value` in `ChargeItemDefinition` profile
- **JIRA-28493**: Completed description of reflex testing in the specification
- Finalized ballot comments resolution

---

*This changelog covers the period from 2020-08-05 through 2026-04-17.*
*JIRA/tracker references are to [HL7 JIRA](https://jira.hl7.org) unless otherwise noted.*
