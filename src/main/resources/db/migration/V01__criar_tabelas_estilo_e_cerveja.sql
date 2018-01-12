CREATE TABLE estilo (
  codigo SERIAL,
  nome VARCHAR(50) NOT NULL,
  CONSTRAINT estilo_codigo_key UNIQUE(codigo)
)
WITH (oids = false);

CREATE TABLE cerveja (
  codigo SERIAL,
  sku VARCHAR(50) NOT NULL,
  nome VARCHAR(80) NOT NULL,
  descricao TEXT NOT NULL,
  valor DECIMAL(10, 2) NOT NULL,
  teor_alcoolico DECIMAL(10, 2) NOT NULL,
  comissao DECIMAL(10, 2) NOT NULL,
  sabor VARCHAR(50) NOT NULL,
  origem VARCHAR(50) NOT NULL,
  codigo_estilo BIGINT NOT NULL,
  FOREIGN KEY (codigo_estilo) REFERENCES estilo(codigo),
  CONSTRAINT cerveja_codigo_key UNIQUE(codigo)
) 
WITH (oids = false);

INSERT INTO estilo (nome) VALUES ('Amber Lager');
INSERT INTO estilo (nome) VALUES ('Dark Lager');
INSERT INTO estilo (nome) VALUES ('Pale Lager');
INSERT INTO estilo (nome) VALUES ('Pilsner');