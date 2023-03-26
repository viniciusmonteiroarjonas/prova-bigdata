// CLIENTES
CREATE TABLE clientes (
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(255),
    email varchar(255),
    telefone varchar(20),
    PRIMARY KEY (id)
);

// PRODUTOS
CREATE TABLE produtos (
    id int NOT NULL AUTO_INCREMENT,
    nome varchar(255),
    descricao varchar(255),
    quantidade int,
    valor double,
    PRIMARY KEY (id)
);

// PEDIDOS
CREATE TABLE pedidos (
    id int NOT NULL AUTO_INCREMENT,
    clienteId int,
    produtoId int,
    quantidade int,
    valor double,
    PRIMARY KEY (id),
    CONSTRAINT fk_cliente FOREIGN KEY (clienteId)
    REFERENCES clientes(id),
    CONSTRAINT fk_produto FOREIGN KEY (produtoId)
    REFERENCES produtos(id) 
);

// INSERINDO CLIENTES 
INSERT INTO clientes (nome, email, telefone) VALUES ("Vinicius Monteiro", "vinicius@gmail.com", "11964508786");
INSERT INTO clientes (nome, email, telefone) VALUES ("Rafael Monteiro", "rafael@gmail.com", "11923458769");
INSERT INTO clientes (nome, email, telefone) VALUES ("Daiane Rocha", "daiane@gmail.com", "11923458769");
INSERT INTO clientes (nome, email, telefone) VALUES ("Julia Almeida", "julia@gmail.com", "11923458769");
INSERT INTO clientes (nome, email, telefone) VALUES ("Alice Cerqueira", "alice@gmail.com", "11923458769");

// INSERINDO PRODUTOS
INSERT INTO produtos (nome, descricao, quantidade, valor) VALUES ("Celular Samsung", "Celular A52", 500, 1000);
INSERT INTO produtos (nome, descricao, quantidade, valor) VALUES ("TV LG", "TV de 60 polegadas", 500, 3000);
INSERT INTO produtos (nome, descricao, quantidade, valor) VALUES ("Ventilador Philco", "Ventilador pequeno", 500, 100);
INSERT INTO produtos (nome, descricao, quantidade, valor) VALUES ("Monitor Samsung", "Monitor LCD de 24 polegadas", 500, 600);
INSERT INTO produtos (nome, descricao, quantidade, valor) VALUES ("Torradeira Philco", "Torradeira 220", 500, 120);

// INSERINDO PEDIDOS
INSERT INTO pedidos (clienteId, produtoId, quantidade, valor) VALUES (1,5, 1, 120);
INSERT INTO pedidos (clienteId, produtoId, quantidade, valor) VALUES (2,4, 2, 1200);
INSERT INTO pedidos (clienteId, produtoId, quantidade, valor) VALUES (3,3, 3, 300);
INSERT INTO pedidos (clienteId, produtoId, quantidade, valor) VALUES (5,2, 4, 12000);
INSERT INTO pedidos (clienteId, produtoId, quantidade, valor) VALUES (5,1, 5, 5000);

// LISTANDO TODOS OS CLIENTES
SELECT * FROM clientes;

// LISTA TODOS OS PRODUTOS QUE FORAM COMPRADOS EM ORDEM DESCRECENTE POR QUANTIDADE
SELECT * FROM pedidos
LEFT JOIN produtos ON produtos.id = pedidos.produtoId
ORDER BY pedidos.quantidade DESC;

// LISTA PRODUTOS QUE MAIS FATURARAM POR ODEM DESCRECENTE
SELECT * FROM pedidos
LEFT JOIN produtos ON produtos.id = pedidos.produtoId
ORDER BY pedidos.valor DESC;















