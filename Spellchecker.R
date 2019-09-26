require(pacman)
p_load("hunspell",
       "pdftools")

text <- pdftools::pdf_text(file.choose())
bad_words <- hunspell(text)
sort(unique(unlist(bad_words)))
