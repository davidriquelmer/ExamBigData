spark = SparkSession.builder.getOrCreate()
escuelastemp = spark.read.format("csv").load("/usr/local/spark/escuelasPR.csv")
escuela = escuelastemp.toDF("region","distrito","ciudad","eid","enombre","nivel","college")
escuela.filter(escuela.region == "Arecibo").groupBy(escuela.distrito, escuela.ciudad).count().show()