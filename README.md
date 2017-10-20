# vcare-models

- we need to keep the modeling elements simple as possible
- we want to define ontology elements specific to our use cases in vcare and later map them to existing ontologies. (instead of importing huge ontologies first). I'm not sure it it is always possible.

# Reasoning and RDF stores
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
