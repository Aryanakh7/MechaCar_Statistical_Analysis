# MechaCar_Statistical_Analysis

## Purpose of the Analysis

The purpose of this analysis is to review the production data and to provide insights that could help the manufacturing team. In order to accomplish this, multiple linear regression analysis will be performed to identify which variables in the dataset can predict the mpg of MechaCar prototypes and summary statistics on the pounds per square inch (PSI) of the suspension coils will be collected from the manufacturing lots. Finally, t-tests are run to determine if the manufacturing lots are statistically different from the mean population and a statistical study will compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

In the first part of the analysis, R is used to design a linear model that predicts the mpg of MechaCar prototypes using several variables from the data provided. The metrics used to complete this section are vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive (AWD) variables. Based on the linear regressions provided, several observations could be made:

1- The variables that provided a non-random amount of variance to the mpg values in the dataset were vehicle length and ground clearance. Since these two variables have a very small p-value respectively of 2.60e-12 and 5.21e-08, they produce a greater impact on the MechaCar prototype and have a higher level of significance. In this case, the p-value of these variables is smaller than the significance level, and there is therefore  sufficient statistical evidence to state that the null hypothesis is not true and should be rejected. However, the vehicle weight, spoiler angle and AWD have a random amount of variance to the mpg values as their p-value is larger than the significance level.

![image](https://user-images.githubusercontent.com/75655852/114327522-6797a580-9b07-11eb-9fee-706be088d5f6.png)

2- The slope of the linear model is not considered to be zero because of the the presence of a non-random amount of variance in the data set. Since there is enough evidence to conclude that the the null hypothesis is not true and should be rejected, the slope of the linear model is not equal to zero. If the null hypothesis had been confirmed and no relationship between the independent variable and the dependent variable was found, then the linear regression would have been equal to zero. 

The linear model presented would be able to effectively predict the mpg of MechaCar prototypes. Since the r-squared value of the linear model is 0.7149, the mpg could be predicted accurately by 71%. This confirms that the predictions of the linear model can be effective.

## Summary Statistics on Suspension Coils

This category of the analysis presents the results from multiple production lots of the dataset provided. The weight capacities of different suspension coils were tested to determine if the manufacturing process is considered consistent across production lots. Two statistical tables were created in order to project the suspension coil’s PSI continuous variable across all manufacturing lots and to analyze PSI metrics such as the mean, median, variance, and standard deviation of each lot.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. As shown on the Total Summary Table below, the current variance is about 62.29. As this result is within the PSI variance specification of 100, this means that the current manufacturing data meets the design specification for all manufacturing lots in total. Furthermore, Lot 1 and Lot 2 meet the requirements since the variance for both lots are 0.98 and 7.47 respectively. However, the variance for Lot 3 is 170.29, which is above the specified requirement stating that the variance of the suspension coils must not exceed 100 pounds. Lots 1 and 2 therefore seem to be better choices when taking into consideration the design specification for the MechaCar suspension coils.

**Total Summary Table**

![image](https://user-images.githubusercontent.com/75655852/114332408-31145780-9b14-11eb-9cf6-7fcd147bfe82.png)

**Lot Summary Table** 

![image](https://user-images.githubusercontent.com/75655852/114332512-5dc86f00-9b14-11eb-87f3-ab05902318d1.png)


## T-Tests on Suspension Coils

The statistical analysis of this section will determine if all manufacturing lots and each individual lot are statistically different from the population mean of 1,500 pounds per square inch. To achieve this, t-tests will be used to compare all manufacturing lots against mean PSI of the population.

As seen on the Tables provided below, there is a 95 percent confidence interval across all manufacturing lots and the true mean is equal to 1498.78. In addition, the p-value is 0.060, which shows that sufficient evidence to reject the null hypothesis has not been provided.

**All manufacturing lots**

![image](https://user-images.githubusercontent.com/75655852/114336564-4772e100-9b1d-11eb-98b9-31d0a9596b79.png)


A similar conclusion can be drawn while analyzing each individual Lot. The p-value of Lot 1 is 1, while the p-value of Lot 2 is indicated to be 0.61. Finally, the p-value of lot 3 is 0.04. Since Lot 1 and Lot 2's p-values are greater than the significance level, they fail to reject the null hypothesis and a statistical difference between these two Lots and the population mean can therefore be established. However, Lot 3's p-value is smaller than the significance level, and there is consequently sufficient statistical evidence that the null hypothesis is not true, and can be rejected in Lot 3's case. This demonstrates that Lot 3 and the presumed population mean are not statistically different.

**Lot 1**

![image](https://user-images.githubusercontent.com/75655852/114336651-6e311780-9b1d-11eb-9814-c8a77a3dcd0d.png)

**Lot 2**

![image](https://user-images.githubusercontent.com/75655852/114336691-81dc7e00-9b1d-11eb-9151-e5a2482f6851.png)

**Lot 3**

![image](https://user-images.githubusercontent.com/75655852/114336738-97ea3e80-9b1d-11eb-8f08-46f402520e9c.png)


## Study Design: MechaCar vs Competition

This section is completed as a study design to adress how the MechaCar performs against the competition. Several metrics will have to be compared such as:
 
 - **The price of the MechaCar**: *How competitive and affordable are they and what are the payment options?*
 - **Fuel-efficiency** : *How does it perform when analyzing the competition?*
 - **The engine type** : *How does the MechaCar perform with regards to gasoline-fueled cars or electric cars? Does it take into consideration contemporary concerns such as the environment and clean living?*
- **Safety features**: *How safe is the MechaCar? Is there anything that can be improved to take the user experience to the next level?

The null hypothesis would state that MechaCars and cars with similar features and in the same category would have adequate safety ratings. The alternate hypothesis would state that MechaCars would not have the same adequate safety ratings as other cars with similar features and belonging to the same category. 

In terms of statistical tests, I would use a Chi-Squared test, and an ANOVA test to observe the presence or absence of difference in categorical frequencies between groups and to  measure the statistical difference between the distribution means from multiple samples.

Different data would be needed to run the statistical test, such as:

- A list of different kinds of cars and their selling prices over the years.
- Safety features from individual cars and the yearly addition of new features.
