-- DROP DATABASE postos;

CREATE DATABASE postos;
USE postos;
select * from usuario;



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

CREATE TABLE IF NOT EXISTS admin (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  email VARCHAR(45) NOT NULL,
  senha VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));

INSERT INTO admin VALUES (NULL, 'Lucas', 'email@email.email', md5('email'));

CREATE TABLE IF NOT EXISTS bandeira (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
  
CREATE TABLE IF NOT EXISTS posto (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  cidade INT NOT NULL,
  cep VARCHAR(45) NOT NULL,
  endereco VARCHAR(45) NOT NULL,
  bandeira INT NOT NULL,
  etanol DECIMAL(8,2) NOT NULL,
  diesels500 DECIMAL(8,2) NOT NULL,
  diesels10 DECIMAL(8,2) NOT NULL,
  gasolina DECIMAL(8,2) NOT NULL,
  admin INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_posto_cidade1_idx (cidade ASC),
  INDEX fk_posto_bandeira1_idx (bandeira ASC),
  INDEX fk_posto_admin1_idx (admin ASC),
  CONSTRAINT fk_posto_cidade1 FOREIGN KEY (cidade) REFERENCES cidade (id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT fk_posto_bandeira1 FOREIGN KEY (bandeira) REFERENCES bandeira (id) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT fk_posto_admin1 FOREIGN KEY (admin) REFERENCES admin (id) ON DELETE NO ACTION ON UPDATE NO ACTION);
    
    
CREATE TABLE IF NOT EXISTS pedido (
  id INT NOT NULL AUTO_INCREMENT,
  etanol DECIMAL(8,2) NOT NULL,
  gasolina DECIMAL(8,2) NOT NULL,
  diesels500 DECIMAL(8,2) NOT NULL,
  diesels10 VARCHAR(45) NOT NULL,
  posto INT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_pedido_posto1_idx (posto ASC),
  CONSTRAINT fk_pedido_posto1 FOREIGN KEY (posto) REFERENCES posto (id) 
  ON DELETE NO ACTION ON UPDATE NO ACTION);
  
INSERT INTO `postos`.`bandeira` (`id`, `nome`) VALUES ('1', 'Petrobrás');
INSERT INTO `postos`.`bandeira` (`id`, `nome`) VALUES ('2', 'Shell');

INSERT INTO `postos`.`posto` (`id`, `nome`, `cidade`, `cep`, `endereco`, `bandeira`, `etanol`, `diesels500`, `diesels10`, `gasolina`, `admin`) VALUES ('1', 'Posto wk', '1', '76300000', 'Avenida', '1', '2.90', '2.90', '2.90', '5.40', '1');
INSERT INTO `postos`.`posto` (`id`, `nome`, `cidade`, `cep`, `endereco`, `bandeira`, `etanol`, `diesels500`, `diesels10`, `gasolina`, `admin`) VALUES ('2', 'Posto da biquinha', '1', '76300000', 'Avenida', '1', '2.67', '2.48', '3.23', '4.70', '1');

