-- OBJETIVO 1
SELECT 
		F.Nome, 
		F.Ano
FROM dbo.Filmes F


-- OBJETIVO 2
SELECT 
		F.Nome, 
		F.Ano, 
		F.Duracao
FROM dbo.Filmes F
ORDER BY F.Ano ASC


-- OBJETIVO 3
SELECT 
		F.Nome, 
		F.Ano, 
		F.Duracao
FROM dbo.Filmes F
WHERE F.Nome = 'De Volta para o Futuro'


-- OBJETIVO 4
SELECT 
		F.Nome, 
		F.Ano, 
		F.Duracao
FROM dbo.Filmes F
WHERE F.Ano = 1997


--OBJETIVO 5
SELECT 
		F.Nome, 
		F.Ano, 
		F.Duracao
FROM dbo.Filmes F
WHERE F.Ano > 2000


-- OBJETIVO 6
SELECT 
		F.Nome, 
		F.Ano, 
		F.Duracao
FROM dbo.Filmes F
WHERE F.Duracao > 100 
	AND F.Duracao < 150
ORDER BY F.Duracao ASC


-- OBJETIVO 7
SELECT 
		F.Ano,
		COUNT(*) Quantidade
FROM dbo.Filmes F
GROUP BY F.Ano
ORDER BY Quantidade DESC


-- OBJETIVO 8 
SELECT 
		*
FROM dbo.Atores A
WHERE A.Genero = 'M'


-- OBJETIVO 9
SELECT 
		*
FROM dbo.Atores A
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome ASC


-- OBJETIVO 10

SELECT 
		F.Nome, 
		G.Genero
FROM dbo.FilmesGenero FG
INNER JOIN dbo.Filmes F ON FG.IdFilme = F.Id
INNER JOIN dbo.Generos G ON FG.IdGenero = G.Id


-- OBJETIVO 11
SELECT 
		F.Nome, 
		G.Genero
FROM FilmesGenero FG
INNER JOIN dbo.Filmes F	ON FG.IdFilme = F.Id
INNER JOIN dbo.Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'


-- OBJETIVO 12
SELECT 
		F.Nome, 
		A.PrimeiroNome, 
		A.UltimoNome, 
		EF.Papel
FROM dbo.ElencoFilme EF
INNER JOIN dbo.Atores A ON EF.IdAtor = A.Id
INNER JOIN dbo.Filmes F ON EF.IdFilme = F.Id

