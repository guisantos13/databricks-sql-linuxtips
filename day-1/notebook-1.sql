-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido
LIMIT 5

-- COMMAND ----------

SELECT *,
       datediff(dtEstimativaEntrega,dtEntregue) AS diasEntregaEfetivada

FROM silver_olist.pedido       


-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega,dtAprovado) > 30

-- COMMAND ----------


