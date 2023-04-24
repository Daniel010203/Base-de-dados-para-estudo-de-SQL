/*
Query para publicar a tabela.

Esse é o lugar para:
    - modificar nomes, ordem e tipos de colunas
    - dar join com outras tabelas
    - criar colunas extras (e.g. logs, proporções, etc.)

Qualquer coluna definida aqui deve também existir em `table_config.yaml`.

# Além disso, sinta-se à vontade para alterar alguns nomes obscuros
# para algo um pouco mais explícito.

TIPOS:
    - Para modificar tipos de colunas, basta substituir STRING por outro tipo válido.
    - Exemplo: `SAFE_CAST(column_name AS NUMERIC) column_name`
    - Mais detalhes: https://cloud.google.com/bigquery/docs/reference/standard-sql/data-types
*/

CREATE VIEW basedosdados-dev.br_rj_isp_estatisticas_seguranca.evolucao_mensal_upp AS
SELECT 
SAFE_CAST(ano AS INT64) ano,
SAFE_CAST(mes AS INT64) mes,
SAFE_CAST(id_upp AS STRING) id_upp,
SAFE_CAST(nome AS STRING) nome,
SAFE_CAST(quantidade_homicidio_doloso AS INT64) quantidade_homicidio_doloso,
SAFE_CAST(quantidade_latrocinio AS INT64) quantidade_latrocinio,
SAFE_CAST(quantidade_lesao_corporal_morte AS INT64) quantidade_lesao_corporal_morte,
SAFE_CAST(quantidade_homicidio_intervencao_policial AS INT64) quantidade_homicidio_intervencao_policial,
SAFE_CAST(quantidade_tentativa_homicidio AS INT64) quantidade_tentativa_homicidio,
SAFE_CAST(quantidade_lesao_corporal_dolosa AS INT64) quantidade_lesao_corporal_dolosa,
SAFE_CAST(quantidade_estupro AS INT64) quantidade_estupro,
SAFE_CAST(quantidade_homicidio_culposo AS INT64) quantidade_homicidio_culposo,
SAFE_CAST(quantidade_lesao_corporal_culposa AS INT64) quantidade_lesao_corporal_culposa,
SAFE_CAST(quantidade_roubo_transeunte AS INT64) quantidade_roubo_transeunte,
SAFE_CAST(quantidade_roubo_corporal_coletivo AS INT64) quantidade_roubo_corporal_coletivo,
SAFE_CAST(quantidade_roubo_veiculo AS INT64) quantidade_roubo_veiculo,
SAFE_CAST(quantidade_roubo_carga AS INT64) quantidade_roubo_carga,
SAFE_CAST(quantidade_roubo_comercio AS INT64) quantidade_roubo_comercio,
SAFE_CAST(quantidade_roubo_residencia AS INT64) quantidade_roubo_residencia,
SAFE_CAST(quantidade_roubo_banco AS INT64) quantidade_roubo_banco,
SAFE_CAST(quantidade_roubo_caixa_eletronico AS INT64) quantidade_roubo_caixa_eletronico,
SAFE_CAST(quantidade_roubo_conducao_saque AS INT64) quantidade_roubo_conducao_saque,
SAFE_CAST(quantidade_total_roubos AS INT64) quantidade_total_roubos,
SAFE_CAST(quantidade_furto_veiculos AS INT64) quantidade_furto_veiculos,
SAFE_CAST(quantidade_total_furto AS INT64) quantidade_total_furto,
SAFE_CAST(quantidade_sequestro AS INT64) quantidade_sequestro,
SAFE_CAST(quantidade_extorsao AS INT64) quantidade_extorsao,
SAFE_CAST(quantidade_sequestro_relampago AS INT64) quantidade_sequestro_relampago,
SAFE_CAST(quantidade_estelionato AS INT64) quantidade_estelionato,
SAFE_CAST(quantidade_apreensao_droga AS INT64) quantidade_apreensao_droga,
SAFE_CAST(quantidade_registro_veiculo_recuperado AS INT64) quantidade_registro_veiculo_recuperado,
SAFE_CAST(quantidade_ameaca AS INT64) quantidade_ameaca,
SAFE_CAST(quantidade_pessoa_desaparecida AS INT64) quantidade_pessoa_desaparecida,
SAFE_CAST(quantidade_encontro_cadaver AS INT64) quantidade_encontro_cadaver,
SAFE_CAST(quantidade_encontro_ossada AS INT64) quantidade_encontro_ossada,
SAFE_CAST(quantidade_policial_militar_morto_servico AS INT64) quantidade_policial_militar_morto_servico,
SAFE_CAST(quantidade_policial_civil_morto_servico AS INT64) quantidade_policial_civil_morto_servico,
SAFE_CAST(quantidade_registro_ocorrencia AS INT64) quantidade_registro_ocorrencia
FROM basedosdados-dev.br_rj_isp_estatisticas_seguranca_staging.evolucao_mensal_upp AS t