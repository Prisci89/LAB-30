#merge, fundir tablas

#instalar packages("data.table")
library(data.table)

choose.files()
green.products<-read.csv("C:\\Users\\Usuario\\OneDrive\\Escritorio\\DOCTORADO\\DRA. CARLA-COMPLEJIDAD ECONÓMICA\\LABS\\LAB 30\\green products.csv")
all.products<-read.csv("C:\\Users\\Usuario\\OneDrive\\Escritorio\\DOCTORADO\\DRA. CARLA-COMPLEJIDAD ECONÓMICA\\LABS\\LAB 30\\COMPLETE_YEARS_PRODUCTS.csv")

#leer variables como tablas de datos
green.products<-as.data.table(green.products)
all.products<-as.data.table(all.products)

#fundir/merge
merge.allproducts=merge(all.products,green.products,by="product_code")

merge.full=merge(all.products,green.products,by="product_code",all.x=T)

#descargar
write.csv(merge.full,file = "merge.full.csv")
