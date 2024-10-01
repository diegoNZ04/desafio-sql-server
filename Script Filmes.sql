
INSERT [dbo].[Filmes] ([Id], [Nome], [Ano], [Duracao]) VALUES (28, N'De Volta para o Futuro', 1985, 116)
GO
SET IDENTITY_INSERT [dbo].[Filmes] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmesGenero] ON 
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (1, 1, 22)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (2, 2, 17)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (3, 2, 3)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (4, 3, 12)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (5, 5, 11)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (6, 6, 8)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (7, 6, 13)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (8, 7, 26)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (9, 7, 28)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (10, 7, 18)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (11, 7, 21)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (12, 8, 2)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (13, 9, 23)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (14, 10, 7)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (15, 10, 27)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (16, 10, 1)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (17, 11, 14)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (18, 12, 6)
GO
INSERT [dbo].[FilmesGenero] ([Id], [IdGenero], [IdFilme]) VALUES (19, 13, 4)
GO
SET IDENTITY_INSERT [dbo].[FilmesGenero] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (1, N'Ação')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (2, N'Aventura')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (3, N'Animação')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (4, N'Biografia')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (5, N'Comédia')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (6, N'Crime')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (7, N'Drama')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (8, N'Horror')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (9, N'Musical')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (10, N'Mistério')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (11, N'Romance')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (12, N'Suspense')
GO
INSERT [dbo].[Generos] ([Id], [Genero]) VALUES (13, N'Guerra')
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0] FOREIGN KEY([IdAtor])
REFERENCES [dbo].[Atores] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdAto__2C3393D0]
GO
ALTER TABLE [dbo].[ElencoFilme]  WITH CHECK ADD  CONSTRAINT [FK__ElencoFil__IdFil__2D27B809] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[ElencoFilme] CHECK CONSTRAINT [FK__ElencoFil__IdFil__2D27B809]
GO
ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdFil__2F10007B] FOREIGN KEY([IdFilme])
REFERENCES [dbo].[Filmes] ([Id])
GO
ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdFil__2F10007B]
GO
ALTER TABLE [dbo].[FilmesGenero]  WITH CHECK ADD  CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Generos] ([Id])
GO
ALTER TABLE [dbo].[FilmesGenero] CHECK CONSTRAINT [FK__FilmesGen__IdGen__2E1BDC42]
GO
