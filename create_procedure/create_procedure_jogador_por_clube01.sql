	CREATE PROCEDURE SP_Jogador_por_Clube

			@ClubeId INT

		AS SELECT 		
		
			Jogador.Nome, Clube.Nome

		FROM 

			Jogador INNER JOIN Clube ON Jogador.ClubeId = Clube.Id

		WHERE 
		
			 ClubeId = @ClubeId

		EXEC SP_Jogador_por_Clube 3


