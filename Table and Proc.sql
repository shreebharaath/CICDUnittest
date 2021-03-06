USE [UnitTestCICD]
GO
/****** Object:  Table [dbo].[EmpDetails]    Script Date: 12/07/2020 18:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmpDetails](
	[EmpNo] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[PhoneNo] [int] NULL,
	[City] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[USP_GetDetails]    Script Date: 12/07/2020 18:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[USP_GetDetails]
@EmpNo Int
As

 Select Name,PhoneNo,City From EmpDetails
 Where EmpNo = @EmpNo
GO
/****** Object:  StoredProcedure [dbo].[USP_SaveDetails]    Script Date: 12/07/2020 18:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 Create Procedure [dbo].[USP_SaveDetails]
@EmpNo Int,
@Name Varchar(50),
@PhoneNo Int,
@City Varchar(50)
As

	Insert Into EmpDetails
	Select @EmpNo,@Name,@PhoneNo,@City 
GO
