library("Boruta")
library("randomForest")
library("tibble")

SEED <- 314

atp.df <- readRDS("../data/atp.rds")
atp.df$is_aptamer <- as.factor(atp.df$is_aptamer)

atp.df
dim(atp.df)

set.seed(SEED)
orig.rf <- randomForest(is_aptamer ~ ., data = atp.df)

## Build a Boruta model on the sequences
set.seed(SEED)
boruta.model <- Boruta(is_aptamer ~ ., data = atp.df, doTrace = 2)
selected.attributes <- getSelectedAttributes(boruta.model, withTentative = FALSE)

## Build a random forest model on the resulting features.
## Add 1 to feature index below to avoid selecting is_aptamer
atp.df.reduced <- atp.df[, which(names(atp.df) %in% c("is_aptamer", selected.attributes))]
atp.df.reduced$is_aptamer <- atp.df$is_aptamer

set.seed(SEED)
trimmed.rf <- randomForest(is_aptamer ~ ., data = atp.df.reduced)
