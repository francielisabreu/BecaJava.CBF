SELECT Jogador.Nome,Clube.Nome 
FROM Jogador INNER JOIN Clube ON Jogador.ClubeId = Clube.Id
WHERE ClubeId = 3