create view faturamento_atual AS
SELECT MIN(pl.valor_plano) as faturamento_minimo, MAX(pl.valor_plano) as faturamento_maximo, ROUND(AVG(pl.valor_plano), 2) as faturamento_medio, SUM(pl.valor_plano) as faturamento_total FROM SpotifyClone.usuarios as usu
inner join SpotifyClone.plano as pl
on pl.plano_id = usu.plano_ID;
