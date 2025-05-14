-- Criando tabelas
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Pedidos (
    ID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    Valor DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Inserindo dados
INSERT INTO Clientes (ID, Nome, Email) VALUES
(1, 'João Silva', 'joao.silva@email.com'),
(2, 'Maria Oliveira', 'maria.oliveira@email.com'),
(3, 'Carlos Santos', 'carlos.santos@email.com');

INSERT INTO Pedidos (ID, ClienteID, DataPedido, Valor) VALUES
(1, 1, '2025-05-14', 150.75),
(2, 2, '2025-05-13', 230.60),
(3, 3, '2025-05-12', 99.99);
SELECT * FROM Clientes;
