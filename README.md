## Dimensões:
- **Empresa:**
    - Inputs:
        - Código da Empresa
        - Nome da Empresa
    - Atributos:
        - Tipo de Dependência (Filial, Representante...)
        - Porte (por Patrimônio Líquido Ajustado)
        - Faixa de Limite de Retenção 
    - Hierarquias:
        - Geográfica de Empresa:
            - Níveis: Cidade < Estado < Região < País
        - Grupo Econômico:
            - Níveis: Empresa < Grupo Econômico

- **Ramo:**
    - Inputs:
        - Código do ramo
        - Nome do ramo
    - Atributos:
        - Seguro Garantia (Booleano)
    - Hierarquia:
        - Grupamento de Ramo:
            - Níveis: Ramo < Grupo

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