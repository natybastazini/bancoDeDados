create database automoveis;

use automoveis;

create table carros (
    id int primary key,
    nome varchar(200),
    descrição text,
    preço decimal(10, 2),
    categoria varchar(50),
    quantidade_em_estoque int
);

insert into carros (id, nome, descrição, preço, categoria, quantidade_em_estoque)values
    (1, 'carro 1', 'cor: preto', 25000.00, 'civic', 10),
    (2, 'carro 2', 'cor: preto', 35000.00, 'suv', 10),
    (3, 'carro 3', 'cor: preto', 45000.00, 'porsche', 10);

create table clientes(
    id int primary key,
    nome text(200),
    cpf varchar(20),
    endereco varchar(200),
    telefone varchar(20),
    email text(200)
);

insert into clientes (id, nome, cpf, endereco, telefone, email)values
    (1, 'pessoa 1', '123.456.789-00', 'Rua 1, 07', '(11) 1234-5678', 'pessoa1@email.com'),
    (2, 'pessoa 2', '987.654.321-00', 'Rua 2, 77', '(22) 9876-5432', 'pessoa2@email.com'),
    (3, 'pessoa 3', '111.222.333-00', 'Rua 3, 777', '(33) 1111-2222', 'pessoa3@email.com');


create table compras(
	id int primary key,
    cliente_id int,
    data_compra date,
    total_da_compra decimal(10,2),
    foreign key (cliente_id) references clientes(id)
);

insert into compras (id, cliente_id, data_compra, total_da_compra)values
    (1, 1, '2023-08-10', 28000.00),
    (2, 2, '2023-08-15', 37000.00),
    (3, 3, '2023-08-20', 46000.00);

create table carros_compra(
	id int primary key,
    compra_id int,
    carro_id int,
    quantidade int,
    subtotal decimal(10,2),
    foreign key (compra_id) references compras(id),
    foreign key (carro_id) references carros(id)
);

insert into carros_compra (id, compra_id, carro_id, quantidade, subtotal)values
    (1, 1, 1, 1, 25000.00),
    (2, 1, 2, 2, 70000.00),
    (3, 2, 3, 1, 45000.00);

create table estoque(
	id int primary key,
    carro_id int,
    quantidade_em_estoque int,
    foreign key (carro_id) references carros(id)
);

insert into estoque (id, carro_id, quantidade_em_estoque)values
    (1, 1, 9),
    (2, 2, 3),
    (3, 3, 7);





