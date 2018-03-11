# J Taroni 2018
# Run SCAN.UPC

library(hgu133plus2hsensgprobe)
library(foreach)

# raw affymetrix file
cel.file <- file.path("data", "raw", "GSM955780_DNA10204-303.CEL")

# make directory for processed data
dir.create(file.path("data", "processed"), recursive = TRUE,
           showWarnings = FALSE)

# output file for SCANfast arg
processed.file <- file.path("data", "processed", "GSM955780_DNA10204-303.pcl")

# run SCAN
SCAN.UPC::SCANfast(cel.file,
                   probeSummaryPackage = "hgu133plus2hsensgprobe",
                   outFilePath = processed.file)

# save package/session information
sink("sessionInfo.txt")
sessionInfo()
sink()
