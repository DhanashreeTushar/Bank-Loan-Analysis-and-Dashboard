SELECT * FROM bank_loan_data;
USE [Bank Loan DB] 


SELECT COUNT(id) AS Total_loan_applications FROM bank_loan_data;

SELECT COUNT(id) AS MTD_Total_loan_applications FROM bank_loan_data 
WHERE MONTH(issue_date) = 12

SELECT COUNT(id) AS PMTD_Total_loan_applications FROM bank_loan_data 
WHERE MONTH(issue_date) = 11

SELECT SUM(loan_amount) AS Total_funded_loan FROM bank_loan_data;

SELECT SUM(loan_amount) AS MTD_Total_funded_loan FROM bank_loan_data
WHERE MONTH(issue_date) = 12;

SELECT SUM(loan_amount) AS PMTD_Total_funded_loan FROM bank_loan_data
WHERE MONTH(issue_date) = 11;


SELECT SUM(total_payment) AS Total_amount_recieved from bank_loan_data;


SELECT SUM(total_payment) AS MTD_Total_amount_recieved from bank_loan_data
WHERE MONTH(issue_date) = 12;

SELECT SUM(total_payment) AS PMTD_Total_amount_recieved from bank_loan_data
WHERE MONTH(issue_date) = 11;



SELECT 
(COUNT(CASE WHEN loan_status = 'Fully Paid' or loan_status = 'Current' THEN id END)*100)/ COUNT(id) AS Good_Loan_percentage

FROM bank_loan_data


SELECT count(*) AS Good_Loan_Applications FROM bank_loan_data 
WHERE loan_status = 'Fully Paid' or loan_status = 'Current';

SELECT SUM(loan_amount) AS Good_Loan_Funded_Amount FROM bank_loan_data 
WHERE loan_status IN('Fully Paid','Current');

SELECT SUM(total_payment) AS Good_Loan_amount_received  FROM bank_loan_data 
WHERE loan_status IN('Fully Paid','Current');


SELECT 
(COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END)*100)/ COUNT(id) AS bad_Loan_percentage

FROM bank_loan_data;

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT loan_status,
COUNT(id) AS loan_count,
SUM(total_payment) AS Total_Amount_Received,
SUM(loan_amount) AS Total_Funded_Amount,
ROUND(AVG(int_rate * 100),3) AS Interest_Rate,
ROUND(AVG(dti * 100),3) AS DTI

FROM bank_loan_data
GROUP BY loan_status


SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

SELECT COUNT(id) AS Total_Loan_Applications,
MONTH(issue_date) AS Month_Number,
DATENAME(MONTH, issue_date) AS Month_name, 
SUM(loan_amount) Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received

FROM bank_loan_data
GROUP BY MONTH(issue_date),DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) DESC


SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose

SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership


-- For different filters
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY home_ownership
ORDER BY home_ownership