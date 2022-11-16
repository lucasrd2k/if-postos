-- DROP DATABASE postos;

CREATE DATABASE postos;

USE postos;

CREATE TABLE IF NOT EXISTS cidade (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(75) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS usuario (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  cidade INT NOT NULL,
  cep VARCHAR(45) NOT NULL,
  telefone VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  senha VARCHAR(245) NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_usuario_cidade1_idx (cidade ASC),
  CONSTRAINT fk_usuario_cidade1
    FOREIGN KEY (cidade)
    REFERENCES cidade (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

-- Inserts de cidade iniciais

INSERT INTO cidade (id, nome) VALUES ('1', 'Ceres');
INSERT INTO cidade (id, nome) VALUES ('2', 'Rialma');
INSERT INTO cidade (id, nome) VALUES ('3', 'Rianápolis');

-- Insert de usuário para testes

INSERT INTO usuario VALUES (NULL, 'nome', '1', '76300000', '298938383', 'email@email.email', md5('senha'));

SELECT * FROM usuario;
