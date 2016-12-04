library("jsonlite")
library("tidyverse")
library("rDNAse")
library("stringr")


aptamers_json <- fromJSON("../data/apta-seqs.json")

aptamers <- tibble(molecule = names(aptamers_json),
                   sequence = aptamers_json)

Generate345Mer <- function(seq.vect) {
  
  generate_kmer_df <- function(seq.vect, k) as.data.frame(as.list(kmer(seq.vect, k)))
  
  cbind(generate_kmer_df(seq.vect, k = 3),
            generate_kmer_df(seq.vect, k = 4),
            generate_kmer_df(seq.vect, k = 5))
}

str_shuffle <- function(string) {
  paste(as.character(sample(str_split(string, pattern = "")[[1]])), collapse = "")
}
  
  

set.seed(314)
ATP <- aptamers %>% 
  filter(molecule == "ATP") %>% 
  unnest() %>% 
  select(sequence) %>%
  mutate(shuffled_sequence = sapply(sequence, str_shuffle))

GenerateSequenceDF <- function(dna_seq, is_aptamer) {
  seq.mat <- lapply(dna_seq, Generate345Mer) %>%
    bind_rows() %>%
    select(-X.Other., -NA.s) %>%
    mutate_(is_aptamer = is_aptamer) %>%
    as.matrix()
  
  ## Record only presence or absence of a sequence.
  seq.mat[which(seq.mat > 1)] <- 1
  
  ## If a kmer has value NA, it means the kmer wasn't found in the sequence but was found in 
  ## other sequences.
  seq.mat[which(is.na(seq.mat))] <- 0
 
  seq.df <- as_tibble(seq.mat)
  seq.df
}

aptamer.df <- GenerateSequenceDF(ATP$sequence, 1) %>%
  bind_rows(GenerateSequenceDF(ATP$shuffled_sequence, 0)) %>%
  select(is_aptamer, everything()) %>%
  as_tibble()


saveRDS(aptamer.df, file = "../data/ATP.rds")
