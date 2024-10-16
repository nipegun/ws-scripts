$policies = @(
    @{ Subcategory = "Logon"; Success = "enable"; Failure = "enable" },
    @{ Subcategory = "Account Lockout"; Success = "enable"; Failure = "enable" },
    @{ Subcategory = "Process Creation"; Success = "enable"; Failure = "enable" }
)

# Aplicar las políticas de auditoría
foreach ($policy in $policies) {
    AuditPol /set /subcategory:$($policy.Subcategory) /success:$($policy.Success) /failure:$($policy.Failure)
}






# Obtener todas las subcategorías de auditoría
$subcategories = AuditPol /get /subcategory:* | Select-String " - " | ForEach-Object {
    $_ -replace " - .*", "" -replace "\s+$", ""
}

# Deshabilitar la auditoría de éxito y fracaso para todas las subcategorías
foreach ($subcategory in $subcategories) {
    AuditPol /set /subcategory:"$subcategory" /success:disable /failure:disable
}

Write-Output "Todas las categorías de auditoría se han configurado como 'sin configurar'."
