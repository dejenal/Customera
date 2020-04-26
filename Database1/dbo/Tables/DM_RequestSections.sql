CREATE TABLE [dbo].[DM_RequestSections] (
    [QuestionSetCode]       BIGINT         NOT NULL,
    [TabID]                 BIGINT         NOT NULL,
    [SectionName]           NVARCHAR (MAX) NOT NULL,
    [SectionDisplayName]    NVARCHAR (MAX) NOT NULL,
    [Order]                 DECIMAL (4, 2) NOT NULL,
    [IsDeleted]             BIT            NOT NULL,
    [Updated_Timestamp]     BINARY (8)     NOT NULL,
    [ods_modified_datetime] DATETIME       NOT NULL,
    CONSTRAINT [PK_DM_RequestSections] PRIMARY KEY CLUSTERED ([QuestionSetCode] ASC)
);

