Install-Module sqlserver
$query = "SELECT TOP 5 * FROM [AdventureWorks2017].[Person].[Person]"
$result = Invoke-Sqlcmd -Query $query -ServerInstance "." -Database "AdventureWorks2017"
foreach($row in $Result){
    Write-Output($row)
}
