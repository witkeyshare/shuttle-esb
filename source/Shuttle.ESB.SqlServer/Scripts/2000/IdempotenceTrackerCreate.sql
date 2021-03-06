CREATE TABLE [dbo].[IdempotenceTracker](
	[MessageId] [uniqueidentifier] NOT NULL,
	[RegisteredDate] [datetime] NOT NULL,
 CONSTRAINT [PK_IdempotenceTracker] PRIMARY KEY CLUSTERED 
(
	[MessageId] ASC
) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IdempotenceTracker] ADD  CONSTRAINT [DF_IdempotenceTracker_RegisteredDate]  DEFAULT (getdate()) FOR [RegisteredDate]
GO
