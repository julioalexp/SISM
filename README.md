# SISM
Personal project for National Public Innovation Award - DR

* Public Policy: Integrated Multiple Services System

![](https://github.com/julioalexp/SISM/blob/main/Captura.PNG)

# Problem Analysis

According to the statistics of the Santo Domingo Water and Sewer Corporation (CAASD), collections in 2021 reached 58.9%, with a target of increasing to 85% by the end of 2024. However, quarterly monitoring reports show that in 2023, collections reached 68% (versus a target of 82%), and projections for 2024 indicate that it will fall short of the target, averaging 40% in the first half of the year.

![](https://github.com/julioalexp/SISM/blob/main/Imagen2.png)

This jeopardizes the financial sustainability of the institution and, consequently, public finances needed to maintain its operations.

![](https://github.com/julioalexp/SISM/blob/main/Imagen3.png)

CAASD's customer base consists of approximately 196,000 water service users in Santo Domingo Este and part of the National District, while EDEESTE (EDE), within its concession area in the metropolitan area of Santo Domingo, serves around 400,000 customers.  

There is a clear opportunity for collaboration between these two institutions that could benefit CAASD: unifying the billing process for both services. Such an integration could significantly enhance the collection of public service payments, especially for water services.

![](https://github.com/julioalexp/SISM/blob/main/Imagen4.png)

Therefore, integrating public utility bills could not only increase CAASD's revenue but also simplify processes and procedures, directly benefiting citizens. Additionally, this would ease the burden on public finances by reducing the need to transfer funds to CAASD and avoiding the recurring necessity of increasing tax payments.

![](https://github.com/julioalexp/SISM/blob/main/Imagen5.png)

The integration of public utility bills between CAASD and EDEESTE is a viable strategy that can significantly increase revenue and improve the operational efficiency of both institutions. This process requires an initial investment in technological infrastructure and staff training, as well as a detailed analysis of the legal and social implications. However, the benefits include greater convenience for users, reduced administrative costs, and improved financial sustainability for CAASD.  

Integration would not only ease the burden on public finances by avoiding the need to increase tax payments but also foster greater transparency and control in public utility payments.

Likewise, the objective extends to integrating waste collection services into the same billing system, aiming for similar efficiency. For instance, the National District City Council (ADN) reports losing millions of pesos in revenue annually.

![](https://github.com/julioalexp/SISM/blob/main/Imagen6.png)

## Feasibility analysis

The proposal to integrate the utility bills of ``CAASD``, ``EDEESTE``, and waste collection into a single consolidated invoice presents a significant opportunity to enhance the operational and financial efficiency of these institutions. This strategy could increase revenue collection, simplify administrative processes, and improve the user experience. The implementation will require careful planning, investment in technology, staff training, and legal and regulatory adjustments to ensure compliance and protection of user data. A well-designed communication and awareness campaign will be crucial to gaining public acceptance.

The success of this initiative could serve as a model for other regions and public services, demonstrating that innovation and collaboration are key to improving sustainability in the public sector. Reducing reliance on government subsidies and avoiding tax increases would contribute to more efficient management of public finances, benefiting the community as a whole. In conclusion, the integration of water, electricity, and waste collection bills is a promising solution that deserves serious consideration and a concerted effort for its implementation.

## Hands on backend and data analysis using SQL

For this project, we use fictional data or a simulated database to support our analysis and testing.

![](https://github.com/julioalexp/SISM/blob/main/Diagrama%20de%20Venn%20(2).png)

By doing an inner joing between these databases we can gather a powerfull data/information for a public policy maker..
We selected various columns but the main one is ``Total_payment_services`` which is project idea to unify payment of public services.

```sql
SELECT Full_name,  credit_card, cedula as ID, (charge_pay+tribute+charge_today) as Total_payment_services
FROM EDEESTE e
INNER JOIN CAASD c
	ON e.contract_id = c.cedula
INNER JOIN ASDE a
	ON e.contract_id = a.tax_number
WHERE e.province LIKE '%Este%'
AND C.client_SDE = 1
```
| Full_name       | credit_card          | ID          | Total_payment_services |
|-----------------|----------------------|-------------|------------------------|
| Dominic Marrow  | 5.04000022327171E+18 | 176-31440-1 | 4495.9                 |
| Glenda Konert   | 374000014327808      | 283-96381-0 | 6042.3                 |
| Christos Lewtey | 5.46000026048922E+15 | 294-67209-5 | 5511.7                 |
| Kettie Klemke   | 371000013225984      | 519-33226-5 | 7896.4                 |
| Arney Ramsdale  | 6.29999976369357E+15 | 551-74460-5 | 1789.1                 |

### Announcement/Copyright Notice:
This is an original project, legally registered, and has been submitted for the National Public Innovation Award. Any attempt to reproduce, appropriate, or use its content or concepts without authorization is subject to legal action. Respect for the intellectual property of this work is appreciated.

For any futher information about the project, please do not hesitate to contact me.

JAPM

### National impact on media

https://ehplus.do/cobro-de-la-basura-se-hara-a-traves-de-las-distribuidoras-de-electricidad-federacion-dominicana-de-distritos-municipales/
https://elnuevodiario.com.do/electricidad-basura-y-agua-por-que-el-estado-no-ha-sido-capaz-de-unir-el-pago-de-los-tres-servicios/
https://map.gob.do/2024/10/31/el-map-instruye-a-las-entidades-publicas-hacer-levantamiento-sobre-cumplimiento-de-pago-de-servicios-publicos-de-los-empleados-del-estado/
