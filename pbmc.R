library(dplyr)
library(Seurat)
library(patchwork)

path <- "C:/Users/User/data/"

# Load the PBMC dataset
pbmc.data <- Read10X(data.dir = path)
# Initialize the Seurat object with the raw (non-normalized data)
pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)
pbmc.data[c("CD3D", "TCL1A", "MS4A1"), 1:30]
dense.size <- object.size(as.matrix(pbmc.data))
dense.size
sparse.size <- object.size(pbmc.data)
sparse.size
dense.size/sparse.size
