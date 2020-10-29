CREATE PROCEDURE SP_Jogador_posicao

			@PosicaoId INT
	
		AS SELECT 		
		
			Jogador.Nome, Posicao.Descricao

		FROM 

			Jogador INNER JOIN Posicao ON Jogador.PosicaoId = Posicao.Id

		WHERE 
		
			 Posicao.Id = @PosicaoId

		EXEC SP_Jogador_posicao 2