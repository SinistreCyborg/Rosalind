nucleotides <- readChar("input.txt", file.info("input.txt")$size)
split <- strsplit(nucleotides, "")[[1]]

count <- c(0, 0, 0, 0)

for (base in split) {
    if (base == "A") {
        count[1] <- count[1] + 1
    }
    if (base == "C") {
        count[2] <- count[2] + 1
    }
    if (base == "G") {
        count[3] <- count[3] + 1
    }
    if (base == "T") {
        count[4] <- count[4] + 1
    }
}

png(file = "output.png")
barplot(count,
main = "Nucleotide Distribution",
xlab = "Base",
ylab = "Frequency",
names.arg = c("A", "C", "G", "T"))

dev.off()

print(count)
