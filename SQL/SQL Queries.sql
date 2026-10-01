SELECT 
Vendor_ID,
Vendor_Name,
Category,
Department,
Final_Value_INR
FROM procurement_db.procurement_dataset_shashanth
Group by Vendor_ID,Vendor_Name,Category,Department,Final_Value_INR
Order By Vendor_ID,Category,Department ASC
;   -- to differentiate and get a clean list of vendor vs department--



Select 
Vendor_ID,
Vendor_Name,
Category,
Department,
count(PO_Number) as Total_Purchases,
sum(Final_Value_INR) AS 'Total_Spend'
FROM procurement_db.procurement_dataset_shashanth
group by Vendor_ID,Vendor_Name,Category,Department
order by Vendor_ID,Department,Total_Spend DESC
;





SELECT 
    Department,
    Category,
    Vendor_Name,
    COUNT(PO_Number) AS Total_POs,
    SUM(Final_Value_INR) AS Total_Spend,
    ROUND(AVG(Final_Value_INR), 2) AS Avg_PO_Value,
    SUM(Discount_Percent * Final_Value_INR / 100) AS Total_Savings
FROM procurement_db.procurement_dataset_shashanth
GROUP BY Department, Category, Vendor_Name
ORDER BY Department, Total_Spend DESC;


SELECT 
Vendor_Name,
count(PO_Number) as 'Total_Purchases',
sum(Final_Value_INR) As 'Total_expenditure',
Sum(Discount_Percent*Final_Value_INR/100) AS 'Overall_discount',
(SUM(Discount_Percent * Final_Value_INR / 100) / SUM(Final_Value_INR)) * 100 AS 'Discount_Percentage'
FROM procurement_db.procurement_dataset_shashanth
group by Vendor_Name
Order by Total_expenditure desc, Overall_discount
;



SELECT 
    PO_Date,
    Vendor_Name,
    Category,
    Department,
    Quantity,
    Expected_Delivery_Date,
    Actual_Delivery_Date,
    Status,
    CASE 
        WHEN Status = 'Delivered' 
             AND STR_TO_DATE(Actual_Delivery_Date, '%d-%m-%Y') <= STR_TO_DATE(Expected_Delivery_Date, '%d-%m-%Y') 
             THEN 'On Time'
        WHEN Status = 'Delivered' 
             AND STR_TO_DATE(Actual_Delivery_Date, '%d-%m-%Y') > STR_TO_DATE(Expected_Delivery_Date, '%d-%m-%Y') 
             THEN 'Delayed'
        ELSE 'Pending'
    END AS On_Time_Status,
    CASE 
        WHEN Status = 'Delivered' 
             AND STR_TO_DATE(Actual_Delivery_Date, '%d-%m-%Y') > STR_TO_DATE(Expected_Delivery_Date, '%d-%m-%Y') 
             THEN DATEDIFF(STR_TO_DATE(Actual_Delivery_Date, '%d-%m-%Y'), STR_TO_DATE(Expected_Delivery_Date, '%d-%m-%Y'))
        ELSE 0
    END AS Calculated_Delay_Days
FROM procurement_db.procurement_dataset_shashanth
ORDER BY Vendor_Name, Department, PO_Date ASC;
