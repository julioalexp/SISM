-- By doing an inner joing between these databases we can gather a powerfull data/information for a public policy maker..
-- We selected various columns but the main one is "Total_payment_services" which is project idea to unify payment of public services.

SELECT Full_name,  credit_card, cedula as ID, (charge_pay+tribute+charge_today) as Total_payment_services
FROM EDEESTE e
INNER JOIN CAASD c
	ON e.contract_id = c.cedula
INNER JOIN ASDE a
	ON e.contract_id = a.tax_number
WHERE e.province LIKE '%Este%'
AND C.client_SDE = 1
