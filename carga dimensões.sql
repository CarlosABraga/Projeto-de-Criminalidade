DROP PROCEDURE IF EXISTS dimensao_tempo;
DELIMITER //

CREATE PROCEDURE dimensao_tempo(IN startdate DATE, IN stopdate DATE)
BEGIN
    DECLARE currentdate DATE;
    SET currentdate = DATE_FORMAT(startdate, '%Y-%m-01'); -- força para o primeiro dia do mês

    WHILE currentdate <= stopdate DO
        INSERT INTO mmd_criminalidade.dimtempo (
            IdTempo,
            Ano,
            Mes,
            Semestre,
            nome_mes
        )
        VALUES (
            CAST(DATE_FORMAT(currentdate, '%Y%m') AS UNSIGNED), -- ID como AAAAMM
            YEAR(currentdate),
            MONTH(currentdate),
            FLOOR(1 + (MONTH(currentdate) - 1) / 6),
            DATE_FORMAT(currentdate, '%M')
        );

        -- pula para o próximo mês
        SET currentdate = ADDDATE(currentdate, INTERVAL 1 MONTH);
    END WHILE;
END //

DELIMITER ;

CALL dimensao_tempo('2015-01-01','2022-12-31');

SELECT * FROM mmd_criminalidade.dimtempo LIMIT 1000;

-- Carga Tipo crime
truncate table mmd_criminalidade.dimtipocrime;
insert into mmd_criminalidade.dimtipocrime(DeTipoCrime)
select distinct trim(TipoCrime)
from arquivofinal;

select * from mmd_criminalidade.dimtipocrime;

-- carga categoria do crime
truncate table mmd_criminalidade.dimcategoriadocrime;
insert into mmd_criminalidade.dimcategoriadocrime (DeCategoriaCrime)
select distinct trim(CrimeContraaVida)
from arquivofinal;
select * from mmd_criminalidade.dimcategoriadocrime;

-- carga dimensão sexo

truncate table mmd_criminalidade.dimsexo;
insert into mmd_criminalidade.dimsexo (DeSexo)
select distinct trim(SexodaVitima)
from arquivofinal;
select * from mmd_criminalidade.dimsexo;

-- Carga dimensão UF
truncate table mmd_criminalidade.dimuf;
insert into mmd_criminalidade.dimuf (DeUF)
Select distinct trim(UF)
from arquivofinal;
select * from mmd_criminalidade.dimUF;

-- carga dimensão idhm 
truncate table mmd_criminalidade.dimidhm;
insert into mmd_criminalidade.dimidhm(Posicao, UFIDHM)
Select distinct PosicaoIDHM, trim(Territorialidade)
from idhm;
select * from mmd_criminalidade.dimidhm;

-- carga dimensão educação
truncate table mmd_criminalidade.dimidhmeducacao;
insert into mmd_criminalidade.dimidhmeducacao(Posicao, UFEducacao)
Select distinct PosicaoIDHMEducacao, trim(Territorialidade)
from idhm;
select * from mmd_criminalidade.dimidhmeducacao;

-- carga IDHM longevidade

truncate table mmd_criminalidade.dimidhmlongevidade;
insert into mmd_criminalidade.dimidhmlongevidade(Posicao, UFLongevidade)
Select distinct PosicaoIDHMLongevidade, trim(Territorialidade)
from idhm;
select * from mmd_criminalidade.dimidhmlongevidade;

-- carga IDHM RENDA 
truncate table mmd_criminalidade.dimidhmrenda;
insert into mmd_criminalidade.dimidhmrenda(Posicao, UFRenda)
Select distinct PosicaoIDHMRenda, trim(Territorialidade)
from idhm;
select * from mmd_criminalidade.dimidhmrenda;

select * from mmd_criminalidade.dimidhmrenda;
select * from mmd_criminalidade.dimidhmlongevidade;
select * from mmd_criminalidade.dimidhmeducacao;
select * from mmd_criminalidade.dimidhm;
select * from mmd_criminalidade.dimUF;
select * from mmd_criminalidade.dimsexo;
select * from mmd_criminalidade.dimcategoriadocrime;
select * from mmd_criminalidade.dimtipocrime;
SELECT * FROM mmd_criminalidade.dimtempo LIMIT 1000;

