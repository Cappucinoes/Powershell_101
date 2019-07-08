$excel_object = New-Object -ComObject Excel.Application
$excel_workbook = $excel_object.Workbooks.Open("$(pwd)\test_workbook.xlsx")
$excel_object.Visible = $True
