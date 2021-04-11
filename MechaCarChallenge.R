
## Linear Regression to Predict MPG

library(dplyr)
MechaCar_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data = MechaCar_data)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data = MechaCar_data))

## Summary Statistics on Suspension Coils

Suspensions_Data<- read.csv(file='suspension_coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Suspensions_Data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- Suspensions_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

## T-Tests on Suspension Coils

t.test(Suspensions_Data$PSI, mu = 1500)

lot_1 <- subset(Suspensions_Data, Manufacturing_Lot== "Lot1")
t.test(lot_1$PSI, mu = 1500)

lot_2 <- subset(Suspensions_Data, Manufacturing_Lot== "Lot2")
t.test(lot_2$PSI, mu = 1500)

lot_3 <- subset (Suspensions_Data, Manufacturing_Lot== "Lot3")
t.test(lot_3$PSI, mu = 1500)

