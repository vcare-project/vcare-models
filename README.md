# vcare-models

- The vcare-model contains SCHACL shape definitions that are in particular used for the vCare simulator component.
- The general structure of the vcare-simulation model consists of simulation descriptions that contain different states of interest   of a use case. A use case can be a clinical pathway or other use cases that are considered in the vCare project.
- Every state is related/defined by conditions. A condition can be a range condition, a boolean condition or a value condition.
- Moreover, every condition is related to an observation feature. This observation feature shapes define which kind of observation of the environment or of the patient can be made. There are three different kind of observation features:
 - Numerical
 - Nominal
 - Ordinal (currently not used)

# Reasoning and RDF stores
- Currently, we use GraphDB (see [GraphDB Link](http://graphdb.ontotext.com/)) from Ontotext.
  - It allows nice graph representations and is also freely available.
  - In order to integrate the schema into GraphDB, you have to install GraphDB and import the following files into GraphDB  `vcare.shapes.ttl, vcare.ttl` and `algorithms.shapes.ttl`.
  
- we need some reasoning to be automatically avaialable within the store
- at the moment, it is not clear which "regime" is needed
- Some reasoners:
  - http://www.hermit-reasoner.com/

# RDF stores
- we tried Jena+Fusek inside docker `docker run -p 3030:3030 stain/jena-fuseki`
- there are 3 inferencing regimes supported but it requires some special configuration

# Existing ontologies and taxonomies
- **Ontology** ~ schema or meta-model (e.g. Sensor, Device, Platform ...)
- **Taxonomy** ~ some predefined instances (e.g. what quantities can a sensor measure - air pressure, temperature ... )

- http://iot.ee.surrey.ac.uk/fiware/ontologies/iot-lite/iot-taxo#
