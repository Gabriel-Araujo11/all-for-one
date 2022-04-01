SELECT

    MIN(plans.plan_value) as faturamento_minimo,
    MAX(plans.plan_value) as faturamento_maximo,
    ROUND(AVG(plans.plan_value), 2) as faturamento_medio,
    SUM(plans.plan_value) as faturamento_total

FROM

    SpotifyClone.users as usuarios
    INNER JOIN SpotifyClone.plan as plans 
    ON usuarios.plan_id = plans.plan_id