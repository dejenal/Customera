CREATE TABLE [dbo].[DM_RequestSections] (
    [QuestionSetCode]       BIGINT                                      NOT NULL,
    [TabID]                 BIGINT                                      NOT NULL,
    [SectionName]           NVARCHAR (MAX)                              NOT NULL,
    [SectionDisplayName]    NVARCHAR (MAX)                              NOT NULL,
    [Order]                 DECIMAL (4, 2)                              NOT NULL,
    [IsDeleted]             BIT                                         NOT NULL,
    [Updated_Timestamp]     BINARY (8)                                  NOT NULL,
    [ods_modified_datetime] DATETIME                                    NOT NULL,
    [SectionId]             BIGINT                                      IDENTITY (1, 1) NOT NULL,
    [CreatedBy]             BIGINT                                      NULL,
    [UpdatedBy]             BIGINT                                      NULL,
    [StartTime]             DATETIME2 (0) GENERATED ALWAYS AS ROW START DEFAULT ('1/1/0001 12:00:00 AM') NOT NULL,
    [EndTime]               DATETIME2 (0) GENERATED ALWAYS AS ROW END   DEFAULT ('9999-12-31 23:59:59.9999999') NOT NULL,
    CONSTRAINT [PK_DM_RequestSections] PRIMARY KEY CLUSTERED ([SectionId] ASC),
    PERIOD FOR SYSTEM_TIME ([StartTime], [EndTime])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[DM_RequestSections_Audit], DATA_CONSISTENCY_CHECK=ON));



