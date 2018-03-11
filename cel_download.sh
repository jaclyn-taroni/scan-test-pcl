#!/bin/bash

# create directory to hold raw CEL files
mkdir data && cd data && mkdir raw && cd raw

# download CEL file from PLIER repo
wget https://github.com/greenelab/rheum-plier-data/raw/332481ec526b9e62ae5edbe14e53d20d738349b7/sle-wb/arrayexpress/E-GEOD-39088/raw/GSM955780_DNA10204-303.CEL
