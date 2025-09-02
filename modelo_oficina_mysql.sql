-- Arquivo para importação no MySQL Workbench e geração de diagrama visual
-- Basta importar este arquivo como modelo (Forward Engineer) no MySQL Workbench

CREATE DATABASE IF NOT EXISTS oficina;
USE oficina;

CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

CREATE TABLE Veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL,
    modelo VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Equipe (
    id_equipe INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(200),
    especialidade VARCHAR(50),
    id_equipe INT,
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

CREATE TABLE Servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    valor_mao_obra DECIMAL(10,2) NOT NULL
);

CREATE TABLE Peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE OrdemServico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(20) NOT NULL,
    data_emissao DATE NOT NULL,
    valor_total DECIMAL(10,2),
    status VARCHAR(20),
    data_conclusao DATE,
    id_veiculo INT,
    id_equipe INT,
    autorizado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES Equipe(id_equipe)
);

CREATE TABLE ItemServico (
    id_item_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT,
    id_servico INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

CREATE TABLE ItemPeca (
    id_item_peca INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT,
    id_peca INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_os) REFERENCES OrdemServico(id_os),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);
