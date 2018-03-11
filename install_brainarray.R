# J. Taroni 2018
# Install human ENSG BrainArray package (v22.0.0) for use with SCAN.UPC 

# Platform for E-GEOD-39088
platform <- "hgu133plus2"

# Homo sapiens
org.code <- "hs"

# most recent version of BrainArray
ba.version <- "22.0.0"

# probe package name and url for download
probe.pkg.name <- paste0(platform, org.code, "ensgprobe_",
                         ba.version, ".tar.gz")
probe.url <- paste0("http://mbni.org/customcdf/", ba.version, 
                    "/ensg.download/", probe.pkg.name)

# install using url
devtools::install_url(probe.url)
