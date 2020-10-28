USE [CBF]
GO

/****** Object:  Table [dbo].[Jogador]    Script Date: 28/10/2020 14:42:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Jogador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NULL,
	[ClubeId] [int] NOT NULL,
	[PosicaoId] [int] NULL,
 CONSTRAINT [PK_Jogador] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Jogador]  WITH CHECK ADD  CONSTRAINT [FK_Jogador_Clube] FOREIGN KEY([ClubeId])
REFERENCES [dbo].[Clube] ([Id])
GO

ALTER TABLE [dbo].[Jogador] CHECK CONSTRAINT [FK_Jogador_Clube]
GO

ALTER TABLE [dbo].[Jogador]  WITH CHECK ADD  CONSTRAINT [FK_Jogador_Posicao] FOREIGN KEY([PosicaoId])
REFERENCES [dbo].[Posicao] ([Id])
GO

ALTER TABLE [dbo].[Jogador] CHECK CONSTRAINT [FK_Jogador_Posicao]
GO


