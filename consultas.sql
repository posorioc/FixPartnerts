-- Consultas prueba de selección FixPartners
-- Escriba una consulta en SQL que retorne la cantidad de clientes distintos por tienda que realizaron una transacción del tipo 15.
SELECT COUNT(DISTINCT(cli.RUT)) FROM POS_TRX as pos INNER JOIN POS_TRX_CLIENTE as cli ON pos.ID_TRX = cli.ID_TRX WHERE pos.Tipo_transaccion = 15

-- Escriba una consulta en SQL que entregue las ventas de cada tienda por año en orden de mayor a menor.
SELECT SUM(pago.Monto_pago), pos.Tienda, YEAR(pos.Fecha_transaccion)  FROM POS_TRX AS pos INNER JOIN POS_TRX_PAGO as pago ON pos.ID_TRX=pago.ID_TRX GROUP BY pos.Tienda, YEAR(pos.Fecha_transaccion) ORDER BY YEAR(pos.Fecha_transaccion) DESC

-- Escriba una consulta en SQL que entregue el valor de la transacción promedio de cada tienda por año en orden de mayor a menor.
SELECT AVG(pago.Monto_pago), pos.Tienda, YEAR(pos.Fecha_transaccion) FROM POS_TRX AS pos INNER JOIN POS_TRX_PAGO as pago ON pos.ID_TRX=pago.ID_TRX GROUP BY pos.Tienda, YEAR(pos.Fecha_transaccion) ORDER BY YEAR(pos.Fecha_transaccion) DESC

-- Escriba una consulta en SQL que responda: ¿Cuál es el principal medio de pago?
SELECT COUNT(Medio_de_pago), Medio_de_pago FROM POS_TRX_PAGO GROUP BY Medio_de_pago ORDER BY COUNT(Medio_de_pago) DESC LIMIT 1
