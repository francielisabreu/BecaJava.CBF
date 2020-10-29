CREATE VIEW MA_Partida
as
    SELECT 
    Mandante.Nome AS Mandante,
    Partida.GolsMandante,
    Partida.GolsVisitante,
    Visitante.Nome AS Visitante
    FROM Partida 
    INNER JOIN Clube Mandante ON Mandante.Id = Partida.VisitanteId
    INNER JOIN Clube Visitante ON Visitante.Id = Partida.MandanteId
