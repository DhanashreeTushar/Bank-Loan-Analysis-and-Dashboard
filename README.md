## Problem Statement:
The goal of this report is to analyze and summarize the performance and trends of bank loan applications. Specifically, the data is drawn from the bank_loan_data table, and the analysis seeks to generate insights on key performance indicators (KPIs), loan status, and various loan attributes. The analysis is intended to provide an overview of loan applications and their status (good vs bad loans), along with financial details such as loan amounts, payment amounts, interest rates, and other characteristics (e.g., loan term, purpose, home ownership, employee length). This information helps in making data-driven decisions and improving the bank's lending practices.

## Steps Followed:

## Data Extraction:

The bank_loan_data table was queried to extract key information such as loan IDs, issue dates, loan amounts, total payments, loan status, interest rates, debt-to-income (DTI) ratios, and other loan attributes like term, purpose, home ownership, and employee length.

## Calculation of Key Performance Indicators (KPIs):

Total Loan Applications: 
- The total number of loan applications was calculated by counting the IDs.
MTD and PMTD Loan Applications: 
- Monthly loan applications were computed for the current month (MTD) and previous month (PMTD).
Total Funded Amount: 
- The total amount of loans funded was calculated by summing up the loan amounts.
MTD and PMTD Funded Amounts: 
- Similar calculations were made for the current month and previous month.
Total Amount Received: 
- The total payment collected from all loan recipients was calculated.
MTD and PMTD Amount Received: 
- The total amount received in the current and previous months was determined.
Average Interest Rate: 
- The average interest rate for all loans was calculated.
MTD and PMTD Average Interest Rate: 
- The average interest rate for the current and previous months was calculated.
Average DTI (Debt-to-Income ratio): 
- The average DTI ratio was calculated for all loans.
MTD and PMTD Average DTI: 
- The average DTI for the current and previous months was calculated.

## Loan Status Analysis:

Good Loans: 
- Loans that are either fully paid or current were classified as "Good Loans." Their percentage, applications, funded amounts, and received amounts were calculated.
Bad Loans: 
- Loans that are charged off were classified as "Bad Loans." Their percentage, applications, funded amounts, and received amounts were calculated.

## Detailed Loan Status Overview:

The status of each loan (good, bad, etc.) was summarized along with the associated totals for funded amounts, payments, interest rates, and DTI ratios.

A detailed analysis of loan status per month was also performed, showing trends for each loan status (fully paid, current, charged off, etc.).

## Geographical Analysis (State-based):

The data was aggregated by state to see where the majority of loans are issued, showing the number of applications, funded amounts, and received payments by state.
Loan Term Analysis:

Loans were grouped by their term length to show how many loans were issued for each term and how much funding and payments were associated with each term length.

## Employee Length Analysis:

The loans were segmented by employee length, indicating how long borrowers have been employed, to understand if there are any trends in loan applications related to employment tenure.
Purpose-based Analysis:

Loan applications were grouped by the stated purpose of the loan, showing trends in the types of loans being requested (e.g., for home improvement, debt consolidation, etc.).

## Home Ownership Analysis:

The loans were segmented by homeownership status (owned, rented, etc.), to see how homeownership correlates with loan applications and the total loan amounts received.

# Insights:

## Loan Application Trends:

By analyzing loan applications across months, states, and other segments, we can identify trends and shifts in loan demand. For instance, if there is a spike in loan applications during a particular month or in a specific state, it may indicate external factors influencing loan demand.

## Loan Funded Amounts:

A larger funded amount is observed for certain loan terms or states, highlighting where the bank is willing to issue higher amounts. This information is useful for risk management and optimizing loan offerings.

## Good vs. Bad Loans:

The analysis of "Good Loans" (fully paid or current) and "Bad Loans" (charged off) is crucial for assessing the risk of the loan portfolio. A higher percentage of "Bad Loans" could indicate a need for more stringent lending criteria or a review of the underwriting process.

## Interest Rate and DTI Trends:

The average interest rate and DTI ratio give insights into the financial health of the applicants. High DTI ratios could indicate risky borrowers, and lower interest rates might attract more applicants but could also pose a higher risk for the bank.

## Geographical Insights:

The geographical analysis of loans helps identify which regions are seeing more loan activity. This could be correlated with local economic conditions, marketing strategies, or demographic factors that influence loan application rates.

## Loan Purpose and Homeownership:

The purpose of the loan and homeownership status reveal the types of borrowers seeking loans. For example, a significant number of home improvement loans might indicate an opportunity for the bank to focus on targeted marketing to homeowners.

## Term-Based Lending Patterns:

The analysis of loan terms shows whether shorter or longer-term loans are more popular, which could influence future loan product offerings or promotional strategies.

Report Snapshot 
![Image](https://github.com/user-attachments/assets/229d8bf9-b4a1-40cc-bc2f-9d52aaada2b6)

![Image](https://github.com/user-attachments/assets/6cb6c2af-8ba3-47a5-b65a-e84bbf954684)

![Image](https://github.com/user-attachments/assets/9d9dac24-107a-4eef-8ac6-a1d8994813ff)

# Conclusions:
- The analysis allows the bank to understand key patterns in loan issuance, including loan status (good vs. bad), interest rates, amounts funded, and borrower characteristics. Insights from these analyses help in making informed decisions on risk management, marketing strategies, and product offerings.
- It also provides a foundation for improving loan approval processes, enhancing customer targeting strategies, and mitigating risks associated with bad loans.
