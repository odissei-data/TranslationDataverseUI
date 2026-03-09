TranslationDataverseUI
======================

Contains the properties files used by the Dataverse application for the ODISSEI portal. 

The main GUI texts are in the `Bundle_en.properties`. Metadata blocks also have these properties files; for instance the mandatory `citation_en.properties`. 

These can be found here: https://api.github.com/repos/IQSS/dataverse/contents/src/main/java/propertyFiles

Not al 'standard' metadata blocks have been translated to Dutch (`*_nl.properties`), just the ones used in the ODISSEI portal. 

Also added are the English and Dutch properties files for the (custom) metadata blocks the portal uses, which can be found in the `nl_NL` directory. 

These 'blocks' can be found here: https://github.com/odissei-data/Custom-Metadata-Blocks

There we have:
- `CBSMetadata.properties`
- `DANSmetadata.properties`
- `enrichments.properties`
- `provenance.properties`
- `questionInformation.properties`
- `variableInformation.properties`

## Updating

When Datavesre  is updated we should use the new properties file for the English 'version' (`*_en.properties`). 
There is a Bash script that downloads the properties file from the IQSS Github repo: `download_from_IQSS.sh`. Pleas read the content and use it when updating. 
