SELECT * FROM stg_criminalidade.arquivofinal;
UPDATE stg_criminalidade.arquivofinal set mes = 01 where mes = "janeiro" 
UPDATE stg_criminalidade.arquivofinal set mes = 02 where mes = "fevereiro"
UPDATE stg_criminalidade.arquivofinal set mes = 03 where mes = "março"
UPDATE stg_criminalidade.arquivofinal set mes = 04 where mes = "abril"
UPDATE stg_criminalidade.arquivofinal set mes = 05 where mes = "maio" 
UPDATE stg_criminalidade.arquivofinal set mes = 06 where mes = "junho" 
UPDATE stg_criminalidade.arquivofinal set mes = 07 where mes = "julho" 
UPDATE stg_criminalidade.arquivofinal set mes = 08 where mes = "agosto" 
UPDATE stg_criminalidade.arquivofinal set mes = 09 where mes = "setembro" 
UPDATE stg_criminalidade.arquivofinal set mes = 10 where mes = "outubro" 
UPDATE stg_criminalidade.arquivofinal set mes = 11 where mes = "novembro" 
UPDATE stg_criminalidade.arquivofinal set mes = 12 where mes = "dezembro" 
-- Atualizando o valor AnoMes
UPDATE stg_criminalidade.arquivofinal
SET AnoMes = CONCAT(CAST(ano AS CHAR), LPAD(CAST(mes AS CHAR), 2, '0'));
