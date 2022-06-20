
CREATE TABLE cerimonial.enderecos (
                codigo_endereco VARCHAR(50) NOT NULL,
                logradouro VARCHAR(100) NOT NULL,
                numero INTEGER NOT NULL,
                complemento VARCHAR(100),
                bairro VARCHAR(100) NOT NULL,
                cidade VARCHAR(50) NOT NULL,
                uf VARCHAR(2) NOT NULL,
                cep INTEGER NOT NULL,
                CONSTRAINT enderecos_pk PRIMARY KEY (codigo_endereco)
);
COMMENT ON TABLE cerimonial.enderecos IS 'Tabela que armazena os endere�os.';
COMMENT ON COLUMN cerimonial.enderecos.codigo_endereco IS 'Codigo do endere�o';
COMMENT ON COLUMN cerimonial.enderecos.logradouro IS 'Logradouro do endere�o.';
COMMENT ON COLUMN cerimonial.enderecos.numero IS 'N�mero do endere�o.';
COMMENT ON COLUMN cerimonial.enderecos.complemento IS 'Complemento do endere�o.';
COMMENT ON COLUMN cerimonial.enderecos.bairro IS 'Bairro do enere�o.';
COMMENT ON COLUMN cerimonial.enderecos.cidade IS 'Cidade do endere�o.';
COMMENT ON COLUMN cerimonial.enderecos.uf IS 'UF(�nidade Federetiva) do endere�o.';
COMMENT ON COLUMN cerimonial.enderecos.cep IS 'CEP do endere�o.';


CREATE TABLE cerimonial.garcons (
                codigo_profissional VARCHAR(50) NOT NULL,
                tempo_experiencia VARCHAR(100) NOT NULL,
                CONSTRAINT garcons_pk PRIMARY KEY (codigo_profissional)
);
COMMENT ON TABLE cerimonial.garcons IS 'Tabela que armazena dados sobre os gar�ons.';
COMMENT ON COLUMN cerimonial.garcons.codigo_profissional IS 'C�digo do profissional que trabalha no evento.';
COMMENT ON COLUMN cerimonial.garcons.tempo_experiencia IS 'Tempo de experi�ncia do profissional atuando na profiss�o.';


CREATE TABLE cerimonial.musicos (
                codigo_profissional VARCHAR(50) NOT NULL,
                desc_habilidades VARCHAR(300) NOT NULL,
                formacao VARCHAR(200) NOT NULL,
                CONSTRAINT musicos_pk PRIMARY KEY (codigo_profissional)
);
COMMENT ON TABLE cerimonial.musicos IS 'Tabela que armazena dados sobre os m�sicos.';
COMMENT ON COLUMN cerimonial.musicos.codigo_profissional IS 'C�digo do profissional que trabalha no evento.';
COMMENT ON COLUMN cerimonial.musicos.desc_habilidades IS 'Descri��o das habilidades do profissional.';
COMMENT ON COLUMN cerimonial.musicos.formacao IS 'Tipo de forma��o do profissional.';


CREATE TABLE cerimonial.cozinheiros (
                codigo_profissional VARCHAR(50) NOT NULL,
                formacao VARCHAR(200) NOT NULL,
                desc_habilidades VARCHAR(300) NOT NULL,
                CONSTRAINT cozinheiros_pk PRIMARY KEY (codigo_profissional)
);
COMMENT ON TABLE cerimonial.cozinheiros IS 'Tabela que armazena dados sobre os cozinheiros.';
COMMENT ON COLUMN cerimonial.cozinheiros.codigo_profissional IS 'C�digo do profissional que trabalha no evento.';
COMMENT ON COLUMN cerimonial.cozinheiros.formacao IS 'Tipo de forma��o do profissional.';
COMMENT ON COLUMN cerimonial.cozinheiros.desc_habilidades IS 'Descri��o das habilidades do profissional.';


CREATE TABLE cerimonial.profissionais (
                codigo_profissional VARCHAR(50) NOT NULL,
                nome_profissional VARCHAR(100) NOT NULL,
                codigo_endereco VARCHAR(50) NOT NULL,
                telefones NUMERIC(9) NOT NULL,
                CONSTRAINT profissionais_pk PRIMARY KEY (codigo_profissional)
);
COMMENT ON TABLE cerimonial.profissionais IS 'Tabela que armazena dados sobre os proficionais que trabalham nos eventos.';
COMMENT ON COLUMN cerimonial.profissionais.codigo_profissional IS 'C�digo do profissional que trabalha no evento.';
COMMENT ON COLUMN cerimonial.profissionais.nome_profissional IS 'Nome do profissional.';
COMMENT ON COLUMN cerimonial.profissionais.codigo_endereco IS 'C�digo do endere�o do profissional.';
COMMENT ON COLUMN cerimonial.profissionais.telefones IS 'Telefones do profissional.';


CREATE TABLE cerimonial.clientes (
                codigo_cliente VARCHAR(50) NOT NULL,
                codigo_endereco VARCHAR(50) NOT NULL,
                nome_cliente VARCHAR(100) NOT NULL,
                telefones NUMERIC(9) NOT NULL,
                email VARCHAR(30) NOT NULL,
                CONSTRAINT clientes_pk PRIMARY KEY (codigo_cliente)
);
COMMENT ON TABLE cerimonial.clientes IS 'Tabela que armazena dados sobre os clientes que contrataram/alugaram o cerimonial.';
COMMENT ON COLUMN cerimonial.clientes.codigo_cliente IS 'C�digo do cliente.';
COMMENT ON COLUMN cerimonial.clientes.codigo_endereco IS 'C�digo do endere�o do cliente.';
COMMENT ON COLUMN cerimonial.clientes.nome_cliente IS 'Nome do cliente.';
COMMENT ON COLUMN cerimonial.clientes.telefones IS 'Telefones do cliente.';
COMMENT ON COLUMN cerimonial.clientes.email IS 'E-mail do cliente.';


CREATE TABLE cerimonial.eventos (
                codigo_evento VARCHAR(50) NOT NULL,
                codigo_cliente VARCHAR(50) NOT NULL,
                nome VARCHAR(50) NOT NULL,
                motivo VARCHAR(200) NOT NULL,
                data_inicio DATE NOT NULL,
                data_fim DATE NOT NULL,
                hora_inicio TIME NOT NULL,
                hora_fim TIME NOT NULL,
                valor NUMERIC(10,2) NOT NULL,
                forma_pagamento VARCHAR(20) NOT NULL,
                CONSTRAINT eventos_pk PRIMARY KEY (codigo_evento)
);
COMMENT ON TABLE cerimonial.eventos IS 'Tabela que armazena dados sobre os eventos realizados no cerimonial.';
COMMENT ON COLUMN cerimonial.eventos.codigo_evento IS 'C�digo do evento.';
COMMENT ON COLUMN cerimonial.eventos.codigo_cliente IS 'C�digo do cliente(contratante).';
COMMENT ON COLUMN cerimonial.eventos.nome IS 'Nome do evento';
COMMENT ON COLUMN cerimonial.eventos.motivo IS 'Motivo do evento.';
COMMENT ON COLUMN cerimonial.eventos.data_inicio IS 'Data de in�cio do evento.';
COMMENT ON COLUMN cerimonial.eventos.data_fim IS 'Data do fim do evento.';
COMMENT ON COLUMN cerimonial.eventos.hora_inicio IS 'Hora de in�cio do evento.';
COMMENT ON COLUMN cerimonial.eventos.hora_fim IS 'Hora do fim do evento.';
COMMENT ON COLUMN cerimonial.eventos.valor IS 'Valor do evento.';
COMMENT ON COLUMN cerimonial.eventos.forma_pagamento IS 'Forma de pagamento pelo evento.';


CREATE TABLE cerimonial.equipes (
                codigo_profissional VARCHAR(50) NOT NULL,
                data_inicio DATE NOT NULL,
                codigo_evento VARCHAR(50) NOT NULL,
                data_fim DATE,
                CONSTRAINT equipes_pk PRIMARY KEY (codigo_profissional, data_inicio)
);
COMMENT ON TABLE cerimonial.equipes IS 'Tabela que armazena dados sobre as equipes que atuam no evento.';
COMMENT ON COLUMN cerimonial.equipes.codigo_profissional IS 'C�digo do profissional que trabalha no evento.';
COMMENT ON COLUMN cerimonial.equipes.data_inicio IS 'Data de contrata��o das equipes para determinado evento.';
COMMENT ON COLUMN cerimonial.equipes.codigo_evento IS 'C�digo do evento.';
COMMENT ON COLUMN cerimonial.equipes.data_fim IS 'Data do t�rmino da atua��o das equipes no evento.';


CREATE TABLE cerimonial.convidados (
                codigo_convidado VARCHAR(50) NOT NULL,
                nome VARCHAR(50) NOT NULL,
                data_nascimento DATE NOT NULL,
                sexo CHAR(1) NOT NULL,
                telefones NUMERIC(9) NOT NULL,
                CONSTRAINT convidados_pk PRIMARY KEY (codigo_convidado)
);
COMMENT ON TABLE cerimonial.convidados IS 'Tabela que armazena dados sobre os convidados.';
COMMENT ON COLUMN cerimonial.convidados.codigo_convidado IS 'C�digo do convidado.';
COMMENT ON COLUMN cerimonial.convidados.nome IS 'Nome do convidado.';
COMMENT ON COLUMN cerimonial.convidados.data_nascimento IS 'Data de nascimento do convidado.';
COMMENT ON COLUMN cerimonial.convidados.sexo IS 'Sexo do convidado.';
COMMENT ON COLUMN cerimonial.convidados.telefones IS 'Telefones do convidado.';


CREATE TABLE cerimonial.telefones (
                codigo_dono VARCHAR(50) NOT NULL,
                telefone NUMERIC(9) NOT NULL
);
COMMENT ON TABLE cerimonial.telefones IS 'Tabela que armazena os telefones dos envolvidos(clientes, convidados, profissionais) no evento.';
COMMENT ON COLUMN cerimonial.telefones.codigo_dono IS 'C�digo do dono do telefone.';
COMMENT ON COLUMN cerimonial.telefones.telefone IS 'Telefone.';


CREATE TABLE cerimonial.servicos (
                codigo_servico VARCHAR(50) NOT NULL,
                descricao VARCHAR(400) NOT NULL,
                nome_servico VARCHAR(200) NOT NULL,
                valor NUMERIC(9,2) NOT NULL,
                codigo_evento VARCHAR(50) NOT NULL,
                CONSTRAINT servicos_pk PRIMARY KEY (codigo_servico)
);
COMMENT ON TABLE cerimonial.servicos IS 'Tabela que armazena dados sobre os servi�os.';
COMMENT ON COLUMN cerimonial.servicos.codigo_servico IS 'C�digo dos servi�os do evento (aliment�cios).';
COMMENT ON COLUMN cerimonial.servicos.descricao IS 'Descri��o dos servi�os oferecidos nos eventos.';
COMMENT ON COLUMN cerimonial.servicos.nome_servico IS 'Nome do servi�o do evento.';
COMMENT ON COLUMN cerimonial.servicos.valor IS 'Valor de determinado servi�o.';
COMMENT ON COLUMN cerimonial.servicos.codigo_evento IS 'C�digo do evento.';


CREATE TABLE cerimonial.consumos (
                codigo_evento VARCHAR(50) NOT NULL,
                quant_contratada INTEGER NOT NULL,
                quant_consumida INTEGER,
                codigo_servico VARCHAR(50) NOT NULL,
                CONSTRAINT consumos_pk PRIMARY KEY (codigo_evento)
);
COMMENT ON TABLE cerimonial.consumos IS 'Tabela que armazena dados sobre os consumos do evento.';
COMMENT ON COLUMN cerimonial.consumos.codigo_evento IS 'C�digo do evento.';
COMMENT ON COLUMN cerimonial.consumos.quant_contratada IS 'Quantidade de consumos contratados para o evento.';
COMMENT ON COLUMN cerimonial.consumos.quant_consumida IS 'Quantidade consumida dos consumos contratados.';
COMMENT ON COLUMN cerimonial.consumos.codigo_servico IS 'C�digo dos servi�os do evento (aliment�cios).';


CREATE TABLE cerimonial.bebidas (
                codigo_servico VARCHAR(50) NOT NULL,
                nome_bebida VARCHAR(50) NOT NULL,
                teor_alcoolico NUMERIC(3,3) NOT NULL,
                CONSTRAINT bebidas_pk PRIMARY KEY (codigo_servico)
);
COMMENT ON TABLE cerimonial.bebidas IS 'Tabela que armazena dados sobre as bebidas oferecidas nos eventos.';
COMMENT ON COLUMN cerimonial.bebidas.codigo_servico IS 'C�digo dos servi�os de bebidas.';
COMMENT ON COLUMN cerimonial.bebidas.nome_bebida IS 'Nome da bebida oferecida nos eventos.';
COMMENT ON COLUMN cerimonial.bebidas.teor_alcoolico IS 's.';


CREATE TABLE cerimonial.comidas (
                codigo_servico VARCHAR(50) NOT NULL,
                nome_comida VARCHAR(50) NOT NULL,
                teor_calorico NUMERIC(3,3) NOT NULL,
                CONSTRAINT comidas_pk PRIMARY KEY (codigo_servico)
);
COMMENT ON TABLE cerimonial.comidas IS 'Tabela que armazena dados sobre as comidas oferecidas nos eventos.';
COMMENT ON COLUMN cerimonial.comidas.codigo_servico IS 'C�digo dos servi�os de comidas.';
COMMENT ON COLUMN cerimonial.comidas.nome_comida IS 'Nome das comidas oferecidas nos eventos.';
COMMENT ON COLUMN cerimonial.comidas.teor_calorico IS 'Teor cal�rico das respectivas comidas.';


ALTER TABLE cerimonial.profissionais ADD CONSTRAINT enderecos_profissionais_fk
FOREIGN KEY (codigo_endereco)
REFERENCES cerimonial.enderecos (codigo_endereco)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.clientes ADD CONSTRAINT enderecos_clientes_fk
FOREIGN KEY (codigo_endereco)
REFERENCES cerimonial.enderecos (codigo_endereco)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.profissionais ADD CONSTRAINT garcons_profissionais_fk
FOREIGN KEY (codigo_profissional)
REFERENCES cerimonial.garcons (codigo_profissional)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.profissionais ADD CONSTRAINT musicos_profissionais_fk
FOREIGN KEY (codigo_profissional)
REFERENCES cerimonial.musicos (codigo_profissional)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.profissionais ADD CONSTRAINT cozinheiros_profissionais_fk
FOREIGN KEY (codigo_profissional)
REFERENCES cerimonial.cozinheiros (codigo_profissional)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.equipes ADD CONSTRAINT profissionais_equipes_fk
FOREIGN KEY (codigo_profissional)
REFERENCES cerimonial.profissionais (codigo_profissional)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.telefones ADD CONSTRAINT profissionais_telefones_fk
FOREIGN KEY (codigo_dono)
REFERENCES cerimonial.profissionais (codigo_profissional)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.eventos ADD CONSTRAINT clientes_eventos_fk
FOREIGN KEY (codigo_cliente)
REFERENCES cerimonial.clientes (codigo_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.telefones ADD CONSTRAINT clientes_telefones_fk
FOREIGN KEY (codigo_dono)
REFERENCES cerimonial.clientes (codigo_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.consumos ADD CONSTRAINT eventos_consumos_fk
FOREIGN KEY (codigo_evento)
REFERENCES cerimonial.eventos (codigo_evento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.equipes ADD CONSTRAINT eventos_equipes_fk
FOREIGN KEY (codigo_evento)
REFERENCES cerimonial.eventos (codigo_evento)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.telefones ADD CONSTRAINT convidados_telefones_fk
FOREIGN KEY (codigo_dono)
REFERENCES cerimonial.convidados (codigo_convidado)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.comidas ADD CONSTRAINT servicos_comidas_fk
FOREIGN KEY (codigo_servico)
REFERENCES cerimonial.servicos (codigo_servico)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.bebidas ADD CONSTRAINT servicos_bebidas_fk
FOREIGN KEY (codigo_servico)
REFERENCES cerimonial.servicos (codigo_servico)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE cerimonial.consumos ADD CONSTRAINT servicos_consumos_fk
FOREIGN KEY (codigo_servico)
REFERENCES cerimonial.servicos (codigo_servico)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
