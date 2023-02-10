# ig-order-catalog
An Order Catalog is an administered homogeneous collection of items such as medication products, laboratory tests, procedures, medical devices or knowledge artifacts such as order sets, which support the ordering process, or more generally the healthcare process. 

An order catalog as a whole is represented in FHIR by an instance of the Composition resource.

Two kinds of layout are available:

Catalogs holding collections of manageable size reference their content as Composition.section.entry elements, each one referencing an item represented by a definitional resource.
Bigger order catalogs (e.g. the catalog of all medical devices authorized for the EU market) use only the header of the Composition resource and are referenced by the resources representing their items.
Therefore two profiles of the Composition resource are defined:

Catalog, which includes the content, referencing each item of the catalog.
CatalogHeader, which holds only the set of global metadata and is intended to be referenced by the items of the catalog.
An item of a catalog is represented by a definitional resource, and is often further described by a set of supporting definitional resources.
 
