--criando
CREATE DATABASE almoxarifadobd;

use almoxarifadobd

--tabelas

CREATE TABLE Categoria (
    idCategoria INT PRIMARY KEY,
    nomeCategoria VARCHAR(50)
);

CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY,
	nomeFornecedor VARCHAR(100),
    contatoFornecedor VARCHAR(50),
	idCategoria INT,
	foreign key (idCategoria) references Categoria(idCategoria)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
	nomeProduto VARCHAR(100),
	idFornecedor INT,
	foreign key (idFornecedor) references Fornecedor(idFornecedor)
);

CREATE TABLE Lote (
    idLote INT PRIMARY KEY,
    dataValidade DATE,
    valorUnitario DECIMAL(10, 2),
    valorTotal DECIMAL(10, 2),
    quantidade INT default 100,
	idProduto INT,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE EntradaEstoque (
    idEntrada INT PRIMARY KEY,
    idProduto INT,
    idFornecedor INT,
    quantidadeEntrada INT,
    dataEntrada DATE,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

CREATE TABLE SaidaEstoque (
    idSaida INT PRIMARY KEY,
    idProduto INT,
    quantidadeSaida INT,
    dataSaida DATE,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);