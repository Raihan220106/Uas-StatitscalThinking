# Matriks Data
data <- matrix(c(120,100,80, 90,130,100, 60,70,140), nrow=3, byrow=TRUE)
colnames(data) <- c("Desain A", "Desain B", "Desain C")
rownames(data) <- c("18–25", "26–35", ">35")

# Mosaic Plot
mosaicplot(data, main="Mosaic Plot: Usia vs Desain", color=TRUE)

# Bar Plot: Observed vs Expected
observed <- as.vector(data)
expected <- chisq.test(data)$expected
barplot(rbind(observed, expected), beside=TRUE, col=c("steelblue", "orange"),
        legend=c("Observed", "Expected"), main="Observed vs Expected")
