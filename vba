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

Range, Cells, Rows and Columns objects
Range and Cells will be the objects you, probably, use most often. You can use Cells to access one
individual cell and Range to access a cell or a group (range) of cells. With Cells you access the
worksheet elements as in a 2 dimension array (matrix), the first dimension represents the row and the
second the column.

Note: If you use Range or Cells without referring the worksheet:
a ) IF code is in a WorkSheet Module -» you’re accessing ranges and cells where the current macro
code is running (ThisSheet).
b) IF code is in an Independent Module -» you’re accessing ranges and cells belonging to

ActiveSheet
Cells(3,1).value = 7 – cell “A3” receives the value 7 (cell with row=3, column=1)
value is the default property for Range and Cells objects and, for that reason, can be omitted.
(Cells(3,1).value=7 or Cells(3,1)=7 is exactly the same)

You can do the same using the Range object
Range(“A3”) = 7 – cell “A3” receives the value 7

Use the Range object to access a group of cells
Range(“A1:C3”) = 7 or Range(“A1”,”C3”) = 7 or Range(cells(1,1),cells(3,3)) = 7 – all the cells in
the range “A1:C3” receive the value 7
Range(“A1:C3”).Clear – clear cells in “A1:C3” range, including formats
Range(“A1:C3”).ClearContents – clear values in “A1:C3” range, formats will remain

You can refer to the worksheet explicitly
ActiveSheet.Range(“A3”) = 7 – cell “A3” from the selected worksheet receives the value 7
Sheets(“Sheet2”).Range(“A3”) = 7 – cell “A3” from sheet named “Sheet2” receives the value 7

You can refer to multiple areas (groups of cells)
Range(“A1:C3,A5:C7”) = 7 – range “A1:C3” and range “A5:C7” will receive the value 7

You can even use the Range object to access entire rows or columns
Range(“C:C”).Insert – this will insert a new column before column “C” (3)
Or you can do the same using the Columns object
Columns(3).Insert
Range(“3:3”).Delete – row 3 will be deleted, rows 4 and down will shift up
Or you can do the same using the Rows object
Rows(3).Delete

Accessing multiple rows or columns using the Range object
Range(“1:1,3:3,5:5”).Interior.Colorindex=5 – background of rows 1,3 and 5 will be set to blue
Range(“1:7”).Font.Size = 7 or Rows(“1:7”).Font.Size =7 – font size in rows 1 to 7 will be set to 7

Number of rows and columns in a range
Range(“A1:C7”).Rows.Count – returns the number of rows in the “A1:C7” range (7)
Range(“A1:C7”).Columns.Count – returns the number of columns in the “A1:C7” range (3)
