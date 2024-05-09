# Cargar el archivo .rda
load("/Users/juank/Desktop/BCOM/Proyecto/deepimpute/data/linnarsson.rda")

# Listar los objetos para ver qué se ha cargado
print(ls())

# Supongamos que el objeto que deseas exportar se llama 'df'
# Guardar el DataFrame como CSV
write.csv(linnarsson, "/Users/juank/Desktop/BCOM/Proyecto/deepimpute/data/linnarsson.csv")
# , row.names = FALSE

# install.packages("SAVER")
library(SAVER)

data.path <- "../data/expression_mRNA_17-Aug-2014.txt"

# Need to remove first 10 rows of metadata
raw.data <- read.table(data.path, header = FALSE, skip = 11, row.names = 1, 
                       check.names = FALSE)
cortex <- as.matrix(raw.data[, -1])


# Abrir mtx
install.packages("Seurat")

library(Seurat)

# Especifica las rutas a tus archivos .mtx y archivos de anotación (si los tienes)
matrix_path <- "/Users/juank/Downloads/filtered_matrices_mex/hg19/matrix.mtx"

# Carga los datos en un objeto Seurat
seurat_data <- Read10X(data.dir = dirname(matrix_path))

# Verifica los datos cargados
print(seurat_data)

dense_matrix <- as.matrix(seurat_data)
print(dense_matrix[1:10, 1:10])

library(Seurat)
matrix_path <- "/Users/juank/Downloads/matrices_mex/hg19/matrix.mtx"
seurat_data <- Read10X(data.dir = dirname(matrix_path))
dense_matrix <- as.matrix(seurat_data)
print(dense_matrix[1:10, 1:10])


library(Matrix)
matrix_path <- "/Users/juank/Downloads/filtered_matrices_mex/hg19/matrix.mtx"
matrix_data <- readMM(matrix_path)
print(matrix_data)





