## Dimensões:
- **Empresa:**
    - Inputs:
        - Código da Empresa
        - Nome da Empresa
        - Patrimônio Líquido Ajustado
        - Limite de Retenção para Seguro Garantia
        - Limite de Retenção para Fiança Locatícia
    - Atributos:
        - Porte (baseado no Patrimônio Líquido Ajustado)
        - Apetite ao Risco de Seguro Garantia (baseado no Limite de Retenção)
        - Apetite ao Risco de Fiança Locatícia
    - Hierarquias:
        - Grupo Econômico:
            - Níveis: Empresa < Grupo Econômico
    - Arquivos:
        - Ses_grupos_economicos.csv
        - Ses_limite_ret.csv
        - Ses_pl_margem.csv

- **Ramo:**
    - Inputs:
        - Código do ramo
        - Nome do ramo
    - Atributos:
        - Seguro Garantia (Booleano)
    - Hierarquia:
        - Grupamento de Ramo:
            - Níveis: Ramo < Grupo
    - Arquivos:
        - Ses_ramos.csv
        - ses_gruposramos.csv

- **Tempo:**
    - Inputs:
        - Ano e mês da informação - AAAAMM
    - Hierarquias:
        - Calendário:
            - Níveis: Mês < Trimestre < Semestre < Ano

## Indicadores:
- **Inputs:**
    - Prêmio Direto
    - Prêmio de Seguros
    - Prêmio Retido
    - Prêmio Ganho
    - Prêmios de Riscos Vigentes e Não Emitidos (RVNE)
    - Sinistro de Seguros
    - Sinistro Retido
    - Sinistros Ocorridos
    - Despesas com Resseguros
    - Receitas com Resseguros
    - PPNG (Provisão de Prêmios não Ganhos)
    - PSL (Provisão de Sinistros a Liquidar)
    - IBNR (Provisão de Sinistros Ocorridos e Não Avisados)

- **Calculados:**
    - Sinistralidade: [Sinistro Retido]/[Prêmio Ganho]
    - Lucratividade: [Prêmio Ganho] - [Sinistros Ocorridos]
    - Rentabilidade: ([Lucratividade]/[Prêmio Ganho])*100
    - Resultado de Resseguro ([Receitas com Resseguros] - [Despesas com Resseguros])

## Criação do Data Warehouse
![Esquema Power Architect](images\dw_schema_power_architect.png)
![Esquema SQL Server](images\dw_schema_sql_server.png)
![Quartis Patrimônio Líquido](images\quartis_pl.png)
![Quartis Fiança Locatícia](images\quartis_fian_loc.png)
![Quartis Seguro Garantia](images\quartis_seg_garantia.png)