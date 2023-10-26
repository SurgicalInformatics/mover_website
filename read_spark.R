library(tidyverse)
library(sparklyr)

spark_install(version = "3.4.0")

sc = spark_connect(master = "local",
                   app_name = "mover",
                   version = "3.4.0")

spark_read_parquet(sc, path = "/home/common/mover_data/spark_full_flowsheet/")
