Use mmd_criminalidade;

select distinct 
saf.CrimeContraaVida, saf.SexodaVitima, saf.UF, saf.TipoCrime, saf.AnoMes,
#dcc.IdDimCategoriadoCrime, ds.DeSexo, du.UF, dtc.DeTipoCrime, dt.Tempo, di.IdIDHM,
sum(Ocorrências) as ocorrencias
from stg_criminalidade.arquivofinal saf
inner join dimcategoriadocrime dcc on saf.CrimeContraaVida = dcc.DeCategoriaCrime
inner join dimsexo ds on saf.SexodaVitima = ds.DeSexo
inner join dimuf du ON saf.UF = du.DeUF
inner join dimtipocrime dtc ON saf.TipoCrime = dtc.DeTipoCrime
inner join dimtempo dt on saf.AnoMes = dt.IdTempo
group by saf.CrimeContraaVida, saf.SexodaVitima, saf.UF, saf.TipoCrime, saf.AnoMes;
