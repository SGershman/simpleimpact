/****** Object:  View [dbo].[v_Indicator_Results]    Script Date: 8/10/2015 10:46:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[v_Indicator_Results]
AS
SELECT TOP (100) PERCENT o.Org_Name, oc.Org_Chapter_Name, i.Indicator_Name, CAST(ir.Numerator / ir.Denominator AS decimal(18, 2)) AS [Indicator Result], m.Metric_Name, CAST(mr.Numerator / mr.Denominator AS decimal(18, 2)) AS [Metric Result], 
             CAST(mr.Numerator AS decimal(18, 2)) AS [Metric Numerator], CAST(mr.Denominator AS decimal(18, 2)) AS [Metric Denominator], i.Indicator_Type, m.Metric_Source AS [Data Source]
FROM   dbo.Indicator_Results AS ir LEFT OUTER JOIN
             dbo.Org AS o ON o.Org_ID = ir.Org_ID LEFT OUTER JOIN
             dbo.Org_Chapter AS oc ON oc.Org_Chapter_ID = ir.Org_Chapter_ID LEFT OUTER JOIN
             dbo.Indicator AS i ON i.Indicator_ID = ir.Indicator_ID INNER JOIN
             ref.Metric_Mapping AS mm ON mm.Indicator_ID = i.Indicator_ID INNER JOIN
             dbo.Metric AS m ON m.Metric_ID = mm.Metric_ID INNER JOIN
             dbo.Metric_Results AS mr ON mr.Metric_ID = mm.Metric_ID AND mr.Org_Chapter_ID = ir.Org_Chapter_ID
WHERE (o.Org_Name = 'PresenTense')
ORDER BY [Indicator Result] DESC

GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ir"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 325
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "o"
            Begin Extent = 
               Top = 9
               Left = 382
               Bottom = 206
               Right = 673
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "oc"
            Begin Extent = 
               Top = 9
               Left = 730
               Bottom = 206
               Right = 988
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "i"
            Begin Extent = 
               Top = 9
               Left = 1045
               Bottom = 206
               Right = 1330
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mm"
            Begin Extent = 
               Top = 207
               Left = 57
               Bottom = 404
               Right = 325
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "m"
            Begin Extent = 
               Top = 207
               Left = 382
               Bottom = 404
               Right = 650
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mr"
            Begin Extent = 
               Top = 207
               Left = 707
               Bottom = 404
               Right = 975
            End
            DisplayFlags = 280
            TopColumn = 0
         En' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Indicator_Results'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'd
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Indicator_Results'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_Indicator_Results'
GO


