# API Resources

## QGIS Web Service Configurations

The following `.XML` configuration files which be loaded into the QGIS Data Source Manager (see [docs.qgis.org](https://docs.qgis.org/3.40/en/docs/user_manual/managing_data_source/opening_data.html#connecting-to-web-services)).

- **qgis_web_service_configuration_ofa.xml** provides a connection for the [OS NGD API – Features](https://api.os.uk/features/ngd/ofa/v1/) which pages 100 features to a maximum number of 1000 features.
- **qgis_web_service_configuration_ota.xml** provides connections for the [OS NGD API – Tiles](https://api.os.uk/maps/vector/ngd/ota/v1/) to add all the Basemap (`ngd-base`) styles and the Data overlays.

Note: They will require you to add your API key (which can be done via the Data Source Manager dialog; or by editing the files in a text editor beforehand).
