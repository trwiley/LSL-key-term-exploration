#contexts_table.R
#Generate proportional tables showing the contexts that each term appears in.

word_minus_freq <- data.frame(
  word = word_contexts$WORD,
  location = word_contexts$`LOCATION?`,
  indigenous = word_contexts$`INDIGENOUS PEOPLE NAME?`,
  anth_arch = word_contexts$`ANTHROPOLOGICAL/ARCHAEOLOGICAL TERM?`,
  non_indigenous = word_contexts$`NON-INDIGENOUS PEOPLE NAME?`
)

attach(word_minus_freq)

prop_location <- prop.table(table(location))

prop_indigenous <- prop.table(table(indigenous))

prop_anth_arch <- prop.table(table(anth_arch))

prop_non <- prop.table(table(non_indigenous))

detach(word_minus_freq)