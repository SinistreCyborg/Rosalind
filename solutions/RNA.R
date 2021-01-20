nucleotides <- readChar("input.txt", file.info("input.txt")$size)
split <- strsplit(nucleotides, "")[[1]]

for (i in 1:length(split)) {
    if (split[i] == "T") {
        split[i] <- "U"
    }
}

rna <- paste(split, collapse='')
print(rna)
