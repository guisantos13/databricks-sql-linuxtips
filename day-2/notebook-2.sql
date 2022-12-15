-- Databricks notebook source
SELECT *,

  CASE
    WHEN descUF = 'SP' THEN 'paulista'
    WHEN descUF = 'RJ' THEN 'fluminense'
    WHEN descUF = 'PR' THEN 'paranaense'
    ELSE 'outros'
  END AS descNacionalidade,
  
  CASE
    WHEN descCidade LIKE '%sao%' THEN 'Tem São no Nome'
    ELSE 'Não tem são no nome'
  END AS descCidadeSao
  
FROM silver_olist.cliente  
    
    

-- COMMAND ----------

-- 01 Selecione todos os cliente Paulistanos
SELECT * 
FROM silver_olist.cliente
WHERE descCidade = 'sao paulo'


-- COMMAND ----------

-- 02 Selecione todos os clientes paulistas

SELECT *
FROM silver_olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- 03 Selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria','bebes')
AND vlAlturaCm > 5

-- COMMAND ----------

SELECT * FROM silver_olist.item_pedido

-- COMMAND ----------

SELECT 
  descUF AS estados,
  COUNT(*) AS qntClientesEstado
FROM silver_olist.cliente
GROUP BY descUF
ORDER BY qntClientesEstado DESC

-- COMMAND ----------


