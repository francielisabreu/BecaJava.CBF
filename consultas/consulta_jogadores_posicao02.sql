SELECT Mandante.Nome,Partida.GolsMandante,Partida.GolsVisitante,Visitante.Nome
FROM Partida 
    INNER JOIN Clube Mandante ON Mandante.Id = Partida.VisitanteId
    INNER JOIN Clube Visitante ON Visitante.Id = Partida.MandanteId