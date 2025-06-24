USE mmd_criminalidade;

INSERT INTO mmd_criminalidade.fatocrime (
    IdDimCategoriadoCrime,
    IdIDHM, 
    IdEducacao,
    IdLongevidade, 
    IdRenda,
    idSexo, 
    idTempo,
    idTipoCrime,
    idUF,
    Ocorrencias
)
SELECT 
    dcc.IdDimCategoriadoCrime,
    dih.IdIDHM,
    die.IdIDHMEducacao,
    dil.IdIDHMLongevidade,
    dir.IdIDHMRenda,
    dse.idSexo,
    dte.IdTempo,
    dtc.idTipoCrime,
    duf.idDimUF,
    SUM(saf.Ocorrências) AS Ocorrencias
FROM stg_criminalidade.arquivofinal saf
INNER JOIN mmd_criminalidade.dimcategoriadocrime dcc ON saf.CrimeContraaVida = dcc.DeCategoriaCrime
INNER JOIN mmd_criminalidade.dimsexo dse ON saf.SexodaVitima = dse.DeSexo
INNER JOIN mmd_criminalidade.dimuf duf ON saf.UF = duf.DeUF
INNER JOIN mmd_criminalidade.dimtipocrime dtc ON saf.TipoCrime = dtc.DeTipoCrime
INNER JOIN mmd_criminalidade.dimtempo dte ON saf.AnoMes = dte.IdTempo
INNER JOIN stg_criminalidade.idhm dhm ON saf.UF = dhm.Territorialidade 
INNER JOIN mmd_criminalidade.dimidhm dih ON dih.UFIDHM = saf.UF
INNER JOIN mmd_criminalidade.dimidhmeducacao die ON die.UFEducacao = saf.UF
INNER JOIN mmd_criminalidade.dimidhmrenda dir ON dir.UfRenda = saf.UF
INNER JOIN mmd_criminalidade.dimidhmlongevidade dil ON dil.UFLongevidade = saf.UF
GROUP BY 
    dcc.IdDimCategoriadoCrime,
    dih.IdIDHM,
    die.IdIDHMEducacao,
    dil.IdIDHMLongevidade,
    dir.IdIDHMRenda,
    dse.idSexo,
    dte.IdTempo,
    dtc.idTipoCrime,
    duf.idDimUF;
