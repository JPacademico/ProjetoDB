--populando

INSERT INTO Categoria (idCategoria, nomeCategoria) VALUES
    (1, 'Higiene'),
    (2, 'Alimento'),
    (3, 'Materiais de Construção');

INSERT INTO Fornecedor (idFornecedor, nomeFornecedor, contatoFornecedor, idCategoria) VALUES
    (1, 'Dove', '9999-9999', 1),
    (2, 'Colgate', '8888-8888', 1),
    (3, 'Kicaldo', '7777-7777', 2),
    (4, 'Soya', '6666-6666', 2),
    (5, 'Zabata', '5555-5555', 3),
    (6, 'Comacil', '4444-4444', 3);

INSERT INTO Produto (idProduto, nomeProduto, idFornecedor) VALUES
    (1, 'Sabonete', 1),
    (2, 'Papel Higiênico', 1),
    (3, 'Escova de Dentes', 2),
    (4, 'Shampoo', 2),
    (5, 'Arroz', 3),
    (6, 'Feijão', 3),
    (7, 'Óleo de Soja', 4),
    (8, 'Macarrão', 4),
    (9, 'Tijolos', 5),
    (10, 'Cimento', 5),
    (11, 'Tinta', 6),
    (12, 'Telhas', 6);

INSERT INTO Lote (idLote, dataValidade, valorUnitario, valorTotal, quantidade, idProduto) VALUES
    (1, '2024-12-31', 50.00, 5000.00, 100, 9),  -- Tijolos
    (2, '2025-06-30', 80.00, 8000.00, 100, 10), -- Cimento
    (3, '2023-10-15', 5.00, 500.00, 100, 1),   -- Sabonete
    (4, '2024-08-20', 10.00, 1000.00, 100, 2),  -- Papel Higiênico
    (5, '2023-11-30', 15.00, 300.00, 100, 3),   -- Escova de Dentes
    (6, '2024-09-25', 25.00, 500.00, 100, 4),   -- Shampoo
    (7, '2024-07-10', 2.50, 250.00, 100, 5),    -- Arroz
    (8, '2024-05-05', 3.00, 300.00, 100, 6),    -- Feijão
    (9, '2025-02-28', 12.00, 1200.00, 100, 7),  -- Óleo de Soja
    (10, '2024-04-15', 4.00, 400.00, 100, 8),   -- Macarrão
    (11, '2023-12-20', 30.00, 3000.00, 100, 11),-- Tinta
    (12, '2025-01-10', 15.00, 1500.00, 100, 12),-- Telhas
    (13, '2024-12-31', 50.00, 5000.00, 100, 9),  -- Tijolos
    (14, '2025-06-30', 80.00, 8000.00, 100, 10), -- Cimento
    (15, '2023-10-15', 5.00, 500.00, 100, 1),   -- Sabonete
    (16, '2024-08-20', 10.00, 1000.00, 100, 2),  -- Papel Higiênico
    (17, '2023-11-30', 15.00, 300.00, 100, 3),   -- Escova de Dentes
    (18, '2024-09-25', 25.00, 500.00, 100, 4),   -- Shampoo
    (19, '2024-07-10', 2.50, 250.00, 100, 5),    -- Arroz
    (20, '2024-05-05', 3.00, 300.00, 100, 6),    -- Feijão
    (21, '2025-02-28', 12.00, 1200.00, 100, 7),  -- Óleo de Soja
    (22, '2024-04-15', 4.00, 400.00, 100, 8),   -- Macarrão
    (23, '2023-12-20', 30.00, 3000.00, 100, 11),-- Tinta
    (24, '2025-01-10', 15.00, 1500.00, 100, 12);-- Telhas


INSERT INTO EntradaEstoque (idEntrada, idProduto, idFornecedor, quantidadeEntrada, dataEntrada) VALUES
    (1, 1, 1, 50, '2024-02-08'),  -- Sabonete
    (2, 2, 2, 30, '2024-02-10'),  -- Papel Higiênico
    (3, 5, 3, 100, '2024-02-12'),  -- Arroz
    (4, 6, 4, 80, '2024-02-15');   -- Feijão

INSERT INTO SaidaEstoque (idSaida, idProduto, quantidadeSaida, dataSaida) VALUES
    (1, 9, 20, '2024-02-20'),   -- Tijolos
    (2, 10, 15, '2024-02-22'),  -- Cimento
    (3, 3, 10, '2024-02-25'),   -- Escova de Dentes
    (4, 4, 5, '2024-02-28');    -- Shampoo
