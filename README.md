# Modeling Life Expectancy and Annuity Pricing

**Author:** Jake Skiba  


## Overview
This project explores trends in life expectancy and mortality rates across age, race, and gender using U.S. population data from 2000 to 2021. After data cleaning in R, Excel was used to build an interactive dashboard and actuarial pricing tools for annuities. The analysis concludes with insights into insurance pricing and demographic risk.



## Technologies Used
- **R**: Data cleaning (filtering years 2000–2021, reshaping for modeling)
- **Excel**:
  - Pivot tables for demographic trends
  - Dashboard with slicers (age, race, gender)
  - Annuity pricing model based on mortality
  - Graphs for Covid impact, life expectancy, and more



## Key Features
- Interactive Excel dashboard with filters
- Visual trends for life expectancy, mortality, and survival
- Covid-19 mortality analysis (2019–2021)
- Actuarial pricing model for annuities
- User-adjustable annuity calculator by age/gender/race
- Comparison of annuity pricing and insurance premiums



## How to Use
1. Open the Excel file
2. Navigate the dashboard using slicers to filter by demographic
3. View graphs on life expectancy, mortality rates, and number surviving
4. Use the annuity pricing tool to test custom scenarios in the "Annuity Pricing" sheet
5. Read the project report for full context and conclusions



## Actuarial Focus
- **Annuity Pricing**: Based on the present value of $10,000/year payouts using:
  - Survival probabilities (`kp_x`)
  - 3% discount rate (`v^x`)
- **Insurance Pricing**: Inversely related—higher mortality risk → higher premium
- **Demographic Insights**:
  - Women → higher annuity cost, lower insurance premium
  - Groups with higher life expectancy → more expensive annuities

 ## Dashboard/Annuity Pricing Screenshots of Excel file
![image](https://github.com/user-attachments/assets/83b4fc25-51e2-4068-8fac-864ae56d0f7c)
![image](https://github.com/user-attachments/assets/b26fbce4-0027-4f47-af94-67466907de5b)
![image](https://github.com/user-attachments/assets/a226c758-620c-4e1c-a89a-3aaee9ade236)




## Future Work
- Add insurance premium calculator
- Extend R modeling (e.g., regression on mortality)
- Fill in missing years (e.g., interpolate 2018) for smoother visuals



