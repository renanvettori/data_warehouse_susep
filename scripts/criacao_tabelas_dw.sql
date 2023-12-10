
CREATE TABLE dbo.dim_tempo (
                id_tempo INT IDENTITY NOT NULL,
                cod_tempo VARCHAR(6) NOT NULL,
                data DATETIME NOT NULL,
                cod_mes VARCHAR(25) NOT NULL,
                desc_mes VARCHAR(200) NOT NULL,
                cod_trimestre VARCHAR(25) NOT NULL,
                desc_trimestre VARCHAR(200) NOT NULL,
                cod_semestre VARCHAR(25) NOT NULL,
                desc_semestre VARCHAR(200) NOT NULL,
                cod_ano VARCHAR(25) NOT NULL,
                CONSTRAINT dim_tempo_pk PRIMARY KEY (id_tempo)
)

CREATE TABLE dbo.dim_ramo (
                id_ramo INT IDENTITY NOT NULL,
                cod_ramo VARCHAR(4) NOT NULL,
                desc_ramo VARCHAR(50) NOT NULL,
                atr_seguro_garantia BIT NOT NULL,
                cod_grupo_ramo VARCHAR(2) NOT NULL,
                desc_grupo_ramo VARCHAR(200) NOT NULL,
                CONSTRAINT dim_ramo_pk PRIMARY KEY (id_ramo)
)

CREATE TABLE dbo.dim_empresa (
                id_empresa INT IDENTITY NOT NULL,
                cod_empresa VARCHAR(5) NOT NULL,
                desc_empresa VARCHAR(200) NOT NULL,
                atr_tipo_dependencia VARCHAR(50) NOT NULL,
                atr_porte VARCHAR(50) NOT NULL,
                atr_faixa_retencao VARCHAR(50) NOT NULL,
                cod_cidade VARCHAR(50) NOT NULL,
                desc_cidade VARCHAR(200) NOT NULL,
                cod_estado VARCHAR(2) NOT NULL,
                desc_estado VARCHAR(200) NOT NULL,
                cod_regiao VARCHAR(50) NOT NULL,
                desc_regiao VARCHAR(200) NOT NULL,
                cod_pais VARCHAR(50) NOT NULL,
                desc_pais VARCHAR(200) NOT NULL,
                cod_grupo_econ VARCHAR(5) NOT NULL,
                desc_grupo_econ VARCHAR(200) NOT NULL,
                CONSTRAINT dim_empresa_pk PRIMARY KEY (id_empresa)
)

CREATE TABLE dbo.fact_premios_sinistros_provisoes (
                id_empresa INT NOT NULL,
                id_ramo INT NOT NULL,
                id_tempo INT NOT NULL,
                premio_direto FLOAT NOT NULL,
                premio_de_seguros FLOAT NOT NULL,
                premio_retido FLOAT NOT NULL,
                rvne FLOAT NOT NULL,
                sinistro_de_seguros FLOAT NOT NULL,
                sinistro_retido FLOAT NOT NULL,
                sinistros_ocorridos FLOAT NOT NULL,
                despesas_resseguros FLOAT NOT NULL,
                receitas_resseguros FLOAT NOT NULL,
                ppng FLOAT NOT NULL,
                psl FLOAT NOT NULL,
                ibnr FLOAT NOT NULL,
                CONSTRAINT fact_premios_sinistros_provisoes_pk PRIMARY KEY (id_empresa, id_ramo, id_tempo)
)

ALTER TABLE dbo.fact_premios_sinistros_provisoes ADD CONSTRAINT dim_tempo_fact_premios_sinistros_provisoes_fk
FOREIGN KEY (id_tempo)
REFERENCES dbo.dim_tempo (id_tempo)

ALTER TABLE dbo.fact_premios_sinistros_provisoes ADD CONSTRAINT dim_ramo_fact_premios_sinistros_provisoes_fk
FOREIGN KEY (id_ramo)
REFERENCES dbo.dim_ramo (id_ramo)

ALTER TABLE dbo.fact_premios_sinistros_provisoes ADD CONSTRAINT dim_empresa_fact_premios_sinistros_provisoes_fk
FOREIGN KEY (id_empresa)
REFERENCES dbo.dim_empresa (id_empresa)