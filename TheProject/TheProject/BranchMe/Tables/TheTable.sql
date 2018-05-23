CREATE TABLE [BranchMe].[TheTable]
(
	[TheTableId] BIGINT NOT NULL IDENTITY(1,1),
	[TheColumn]  NVARCHAR(100) NOT NULL,
	[SecondColumn] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_TheTable] PRIMARY KEY ([TheTableId])
)
GO

CREATE INDEX [IX_TheTable_TheColumn] 
	      ON [BranchMe].[TheTable] (
	[TheColumn]
) WITH (DATA_COMPRESSION = PAGE)
GO