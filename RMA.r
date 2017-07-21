# script to exec RMA.
# before run this script, you need to 'cd' to .CEL files containing directory.

source("http://bioconductor.org/biocLite.R")
biocLite("affy")
library(affy)
write.exprs(justRMA(), file=“RMA.txt")
