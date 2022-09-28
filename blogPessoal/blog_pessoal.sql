CREATE DATABASE blog_pessoal;
USE blog_pessoal;

CREATE TABLE IF NOT EXISTS tb_temas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
  );

CREATE TABLE IF NOT EXISTS tb_usuarios (
	id BIGINT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	usuario VARCHAR(255) NOT NULL,
	senha VARCHAR(255) NOT NULL,
	foto BLOB NULL,
  PRIMARY KEY (id)
  );

CREATE TABLE IF NOT EXISTS tb_postagens(
  id BIGINT NOT NULL AUTO_INCREMENT,
  titulo VARCHAR(100) NOT NULL,
  texto VARCHAR(1000) NOT NULL,
  data_hora DATETIME NULL,
  tb_temas_id BIGINT NOT NULL,
  tb_usuarios_id BIGINT NOT NULL,
  PRIMARY KEY (id),
	FOREIGN KEY (tb_temas_id) REFERENCES tb_temas(id),
    FOREIGN KEY (tb_usuarios_id) REFERENCES tb_usuarios(id)
);


