
#clean_data <- raw_data

readStates <- function(states)
{
#removing rows that are not needed
    states <- states[-1,]
   # last row is not a state so we dont need that
    num.row <- nrow(states)
    states <- states[-num.row,]
    states <- states[,-1:-4]
    colnames(states) <- c("stateName", "population","popOver18","percentOver18")
    return (states)
    
}
cleanCensus <-readStates(raw_data)
str(cleanCensus)
