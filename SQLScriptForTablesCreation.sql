--Cast Table

CREATE TABLE [dbo].[Cast](
	[CastID] [int] NOT NULL,
	[CastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cast] PRIMARY KEY CLUSTERED 
(
	[CastID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];



CREATE TABLE [dbo].[Country](
	[CountryID] [int] NOT NULL,
	[CountryName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];




CREATE TABLE [dbo].[Description](
	[DescriptionID] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Description] PRIMARY KEY CLUSTERED 
(
	[DescriptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];



CREATE TABLE [dbo].[Director](
	[DirectorID] [int] NOT NULL,
	[DirectorName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


CREATE TABLE [dbo].[Rating](
	[RatingID] [int] NOT NULL,
	[RatingName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Rating] PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


CREATE TABLE [dbo].[ShowDates](
	[ShowDatesID] [int] NOT NULL,
	[Date_Added] [nvarchar](max) NULL,
	[Release_Year] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShowDates] PRIMARY KEY CLUSTERED 
(
	[ShowDatesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


CREATE TABLE [dbo].[ShowDuration](
	[DurationID] [int] NOT NULL,
	[Duration] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShowDuration] PRIMARY KEY CLUSTERED 
(
	[DurationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


CREATE TABLE [dbo].[ShowListing](
	[ListingID] [int] NOT NULL,
	[ShowListing] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShowListing] PRIMARY KEY CLUSTERED 
(
	[ListingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY];


CREATE TABLE [dbo].[Type](
	[TypeID] [int] NOT NULL,
	[TypeName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY];

CREATE TABLE [dbo].[Show](
	[ShowID] [int] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[CastID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[DescriptionID] [int] NOT NULL,
	[DirectorID] [int] NOT NULL,
	[RatingID] [int] NOT NULL,
	[ShowDatesID] [int] NOT NULL,
	[ShowDurationID] [int] NOT NULL,
	[ShowListingID] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
 CONSTRAINT [PK_Show] PRIMARY KEY CLUSTERED 
(
	[ShowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_CountryID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_DescriptionID] FOREIGN KEY([DescriptionID])
REFERENCES [dbo].[Description] ([DescriptionID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_DescriptionID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_DirectorID] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[Director] ([DirectorID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_DirectorID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_RatingID] FOREIGN KEY([RatingID])
REFERENCES [dbo].[Rating] ([RatingID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_RatingID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_Show_Cast] FOREIGN KEY([CastID])
REFERENCES [dbo].[Cast] ([CastID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_Show_Cast]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_ShowDatesID] FOREIGN KEY([ShowDatesID])
REFERENCES [dbo].[ShowDates] ([ShowDatesID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_ShowDatesID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_ShowDurationID] FOREIGN KEY([ShowDurationID])
REFERENCES [dbo].[ShowDuration] ([DurationID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_ShowDurationID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_ShowListingID] FOREIGN KEY([ShowListingID])
REFERENCES [dbo].[ShowListing] ([ListingID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_ShowListingID]
;

ALTER TABLE [dbo].[Show]  WITH CHECK ADD  CONSTRAINT [FK_TypeID] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([TypeID])
;

ALTER TABLE [dbo].[Show] CHECK CONSTRAINT [FK_TypeID]
;







