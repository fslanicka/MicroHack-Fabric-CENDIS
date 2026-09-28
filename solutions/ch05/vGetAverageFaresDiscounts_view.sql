CREATE VIEW dbo.vGetAverageFaresDiscounts
AS
SELECT 
     DISTINCT passenger_count, 
     ROUND(SUM(fare_amount),0) as TotalFares,
     ROUND(AVG(fare_amount),0) as AvgFares,
     ROUND(AVG(discount),0) as AvgDiscount
FROM 
    goldcurated.dbo.green_discounts
GROUP BY 
    passenger_count