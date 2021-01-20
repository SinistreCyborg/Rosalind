nucleotides <- readChar("input.txt", file.info("input.txt")$size)
split <- strsplit(nucleotides, "")[[1]]

res <- c()

for (i in length(split):1) {
    if (split[i] == "A") {
        res <- c(res, "T")
    }
    if (split[i] == "T") {
        res <- c(res, "A")
    }
    if (split[i] == "G") {
        res <- c(res, "C")
    }
    if (split[i] == "C") {
        res <- c(res, "G")
    }
}

revc <- paste(res, collapse='')
print(revc)
