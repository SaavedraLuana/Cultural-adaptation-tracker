-- Consulta 1: Qual o nível médio de adaptação, confiança e satisfação ao longo do tempo?
SELECT 
    medida_date AS Data,
    nivel_adaptacao AS Adaptacao,
    nivel_confianca AS Confianca,
    nivel_satisfacao AS Satisfacao
FROM MedicoesEmocionais
WHERE user_id = 1
ORDER BY medida_date;

-- Consulta 2: Qual a soma dos gastos por cultura de produto?
SELECT 
    cultura_produto AS Cultura,
    SUM(preco) AS Total_Gasto,
    COUNT(item_descricao) AS Qtd_Itens
FROM ComprasPorCultura
WHERE user_id = 1
GROUP BY cultura_produto
ORDER BY Total_Gasto DESC;

-- Consulta 3: Minha rede social - de quais nacionalidades são as pessoas que conheci?
SELECT 
    person_nacionalidade AS Nacionalidade,
    COUNT(interaction_id) AS Qtd_Contatos
FROM SocialNetworkEvolution
WHERE user_id = 1
GROUP BY person_nacionalidade
ORDER BY Qtd_Contatos DESC;

-- Consulta 4: Quais mudanças de hábitos me trouxeram mais satisfação?
SELECT 
    element_replaced AS Antes,
    element_adopted AS Depois,
    satisfaction_level AS Satisfacao
FROM CulturalAdaptations
WHERE user_id = 1
ORDER BY satisfaction_level DESC;

-- Consulta 5: (Usando JOIN) Veja as interações sociais agrupadas por contexto.
SELECT 
    sne.interaction_context AS Contexto,
    COUNT(sne.interaction_id) AS Qtd_Interacoes,
    GROUP_CONCAT(DISTINCT sne.person_nacionalidade) AS Nacionalidades_Encontradas
FROM SocialNetworkEvolution AS sne
WHERE sne.user_id = 1
GROUP BY sne.interaction_context
ORDER BY Qtd_Interacoes DESC;
