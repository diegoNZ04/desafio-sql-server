SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes 
ORDER BY Ano


SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

SELECT 
	Ano, 
	COUNT(*) Quantidade
FROM Filmes
WHERE Ano <> ''
GROUP BY Ano
ORDER BY Quantidade DESC

SELECT
	Ano 
FROM Filmes 
ORDER BY Duracao 


SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN Generos G
INNER JOIN FilmesGenero FG ON G.Id = FG.IdGenero ON F.Id = FG.IdFilme

SELECT F.Nome, G.Genero
FROM Filmes F 
INNER JOIN Generos G
INNER JOIN FIlmesGenero FG
ON G.Id = FG.IdGenero 
ON F.Id = FG.IdFilme
WHERE G.Genero = 'Mistério'


SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN Atores A
INNER JOIN ElencoFilme EF
ON A.Id = EF.IdAtor
ON F.Id = EF.IdFilme