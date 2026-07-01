-- Tabela de Usuários
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    home_country VARCHAR(50) NOT NULL,
    current_country VARCHAR(50) NOT NULL,
    arrival_date DATE NOT NULL
);

-- Tabela de Interações Sociais
CREATE TABLE SocialNetworkEvolution (
    interaction_id INT PRIMARY KEY,
    user_id INT,
    interaction_date DATE NOT NULL,
    person_nationality VARCHAR(50) NOT NULL,
    interaction_context VARCHAR(50) NOT NULL
);

-- Tabela de Compras
CREATE TABLE ComprasPorCultura (
    compra_id INT PRIMARY KEY,
    user_id INT,
    item_descricao VARCHAR(100) NOT NULL,
    cultura_produto VARCHAR(50) NOT NULL,
    preco DECIMAL(10, 2),
    data_compra DATE NOT NULL
);

-- Tabela de Adaptação Cultural
CREATE TABLE CulturalAdaptations (
    adaptation_id INT PRIMARY KEY,
    user_id INT,
    element_replaced VARCHAR(100) NOT NULL,
    element_adopted VARCHAR(100) NOT NULL,
    adoption_date DATE NOT NULL,
    satisfaction_level INT
);

-- Tabela de Medição Emocional
CREATE TABLE MedicoesEmocionais (
    medida_id INT PRIMARY KEY,
    user_id INT,
    medida_date DATE NOT NULL,
    nivel_adaptacao INT,
    nivel_confianca INT,
    nivel_satisfacao INT
);

-- Inserir dados de exemplo na tabela Users
INSERT INTO Users (user_id, username, home_country, current_country, arrival_date)
VALUES (1, 'Luana_Saavedra', 'Brazil', 'Spain', '2023-03-15');

-- Inserir dados de exemplo na tabela SocialNetworkEvolution
INSERT INTO SocialNetworkEvolution (interaction_id, user_id, interaction_date, person_nationality, interaction_context)
VALUES
(1, 1, '2023-04-05', 'Spanish', 'Work'),
(2, 1, '2023-04-12', 'Brazilian', 'Friends'),
(3, 1, '2023-04-20', 'Colombian', 'Social'),
(4, 1, '2023-05-01', 'Spanish', 'Neighbors');

-- Inserir dados de exemplo na tabela ComprasPorCultura
INSERT INTO ComprasPorCultura (compra_id, user_id, item_descricao, cultura_produto, preco, data_compra)
VALUES
(1, 1, 'Pão de queijo', 'Brasileira', 5.50, '2023-03-20'),
(2, 1, 'Jamón ibérico', 'Espanhola', 18.00, '2023-04-10'),
(3, 1, 'Açaí', 'Brasileira', 8.00, '2023-05-05'),
(4, 1, 'Paella kit', 'Espanhola', 22.50, '2023-05-12');

-- Inserir dados de exemplo na tabela CulturalAdaptations
INSERT INTO CulturalAdaptations (adaptation_id, user_id, element_replaced, element_adopted, adoption_date, satisfaction_level)
VALUES
(1, 1, 'Jantar às 19h', 'Jantar às 22h', '2023-03-25', 7),
(2, 1, 'Banho de manhã', 'Banho à noite', '2023-04-01', 8),
(3, 1, 'Oi/Olá', '¿Qué tal?', '2023-04-15', 6),
(4, 1, 'Mochila normal', 'Trolley compras', '2023-05-02', 9);

-- Inserir dados de exemplo na tabela MedicoesEmocionais
INSERT INTO MedicoesEmocionais (medida_id, user_id, medida_date, nivel_adaptacao, nivel_confianca, nivel_satisfacao)
VALUES
(1, 1, '2023-03-31', 4, 3, 5),
(2, 1, '2023-04-30', 6, 5, 7),
(3, 1, '2023-05-31', 7, 7, 8);
