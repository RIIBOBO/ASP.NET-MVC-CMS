SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionContentParagraph](
	[ID] [int] NOT NULL,
	[SectionWidgetId] [nvarchar](100) NOT NULL,
	[HtmlContent] [nvarchar](max) NULL,
 CONSTRAINT [PK_SectionContentParagraph] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[SectionContentParagraph]  WITH CHECK ADD  CONSTRAINT [FK_SectionContentParagraph_SectionContent] FOREIGN KEY([ID])
REFERENCES [dbo].[SectionContent] ([ID])
GO
ALTER TABLE [dbo].[SectionContentParagraph] CHECK CONSTRAINT [FK_SectionContentParagraph_SectionContent]
GO
ALTER TABLE [dbo].[SectionContentParagraph]  WITH CHECK ADD  CONSTRAINT [FK_SectionContentParagraph_SectionWidget] FOREIGN KEY([SectionWidgetId])
REFERENCES [dbo].[SectionWidget] ([ID])
GO
ALTER TABLE [dbo].[SectionContentParagraph] CHECK CONSTRAINT [FK_SectionContentParagraph_SectionWidget]
GO
