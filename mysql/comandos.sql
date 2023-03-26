// CLIENTES
CREATE TABLE clientes (
    id int NOT NULL,
    nome varchar(255),
    email varchar(255),
    telefone varchar(20),
    PRIMARY KEY (id)
);

// INSERINDO CLIENTES 
INSERT INTO clientes (nome, email, telefone) VALUES ("Vinicius Monteiro", "vinicius@gmail.com", "11964508786");
INSERT INTO clientes (nome, email, telefone) VALUES ("Rafael Monteiro", "rafael@gmail.com", "11923458769");
INSERT INTO clientes (nome, email, telefone) VALUES ("Daiane Rocha", "daiane@gmail.com", "11923458769");
INSERT INTO clientes (nome, email, telefone) VALUES ("Julia Almeida", "julia@gmail.com", "11923458769");
INSERT INTO clientes (nome, email, telefone) VALUES ("Alice Cerqueira", "alice@gmail.com", "11923458769");

// LISTANDO TODOS OS CLIENTES
SELECT * FROM clientes;


// produtos
CREATE TABLE produtos (
    id int NOT NULL,
    RIMARY KEY (id)
);


// pedidos
CREATE TABLE pedidos (
    id int NOT NULL,
    clienteId int,
    produtoId int,
    FOREIGN KEY (clienteId) REFERENCES Persons(clienteId)
    FOREIGN KEY (produtoId) REFERENCES Persons(produtoId)
    RIMARY KEY (id)
);


















