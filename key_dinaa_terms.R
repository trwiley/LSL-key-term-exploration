#key_dinaa_terms.R
#Purpose: generate a frequency table of all of the words in titles of referenced literature in DINAA LSL.

referenced <- lsl_data$`Is Referenced By`

referenced_coll <- paste(referenced, collapse = " ")

ref_words <- strsplit(referenced_coll, split = "[ ]")

ref_table <- table(ref_words)
