#!/bin/bash
#
# transforms a version of the first xslx resource found into tsv stream 
#

preston ls\
 | grep hasVersion\
 | grep xlsx\
 | head -1\
 | preston xlsx-stream\
 | mlr --ijson --otsvlite cat
