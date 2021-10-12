For Each [Element] In [Collection] [Code Block] Next [Element]

For [Counter] = [Start] To [End] [Step Value] [Code Block] Next [Counter]

Do [While Condition] [Code Block] Loop

Do [Code Block] Loop [While Condition]

Do [Until Condition] [Code Block] Loop

Do [Code Block] Loop [Until Condition]

VBA Sample
Private Sub Worksheet_Activate() 
End Sub 

Private Sub Worksheet_BeforeDelete() 
End Sub 

Private Sub Worksheet_BeforeDoubleClick(ByVal Target As Range, _ 
                                        ByRef Cancel As Boolean) 
End Sub 

Private Sub Worksheet_BeforeRightClick(ByVal Target As Range, _ 
                                       ByRef Cancel As Boolean) 
End Sub 

Private Sub Worksheet_Calculate() 
End Sub 

Private Sub Worksheet_Change(ByVal Target As Range) 
End Sub 

Private Sub Worksheet_Deactivate() 
End Sub 

Private Sub Worksheet_FollowHyperlink(ByVal Target As Hyperlink) 
End Sub 

Private Sub Worksheet_LensGalleryRenderComplete() 
End Sub 

Private Sub Worksheet_PivotTableAfterValueChange( _ 
          ByVal TargetPivotTable As PivotTable, _ 
          ByVal TargetRange As Range) 
End Sub 

Private Sub Worksheet_PivotTableBeforeAllocateChanges( _ 
          ByVal TargetPivotTable As PivotTable, _ 
          ByVal ValueChangeStart As Long, _ 
          ByVal ValueChangeEnd As Long, _ 
          ByRef Cancel As Boolean) 
End Sub 

Private Sub Worksheet_PivotTableBeforeCommitChanges( _ 
          ByVal TargetPivotTable As PivotTable, _ 
          ByVal ValueChangeStart As Long, _ 
          ByVal ValueChangeEnd As Long, _ 
          ByRef Cancel As Boolean) 
End Sub 

Private Sub Worksheet_PivotTableBeforeDiscardChanges( _ 
          ByVal TargetPivotTable As PivotTable, _ 
          ByVal ValueChangeStart As Long, _ 
          ByVal ValueChangeEnd As Long) 
End Sub 

Private Sub Worksheet_PivotTableChangeSync(ByVal Target As PivotTable) 

End Sub 

Private Sub Worksheet_PivotTableUpdate(ByVal Target As PivotTable) 
End Sub 

Private Sub Worksheet_SelectionChange(ByVal Target As Range) 
End Sub 

Private Sub Worksheet_TableUpdate(ByVal Target As TableObject) 
End Sub 
