# secpol.msc
  # Configuración de seguridad
    # Configuración de políticas de auditoría avanzada
      # Directivas de auditoría del sistema
        # Inicio de sesión de cuentas (Categoría: "Inicio de sesión de la cuenta")
          AuditPol /set /subcategory:"Validación de credenciales" /success:enable /failure:enable

        # Administración de cuentas
        # Seguimiento detallado
        # Acceso DS
        # Inicio y cierre de sesión
        # Acceso a objetos
          AuditPol /set /subcategory:"SAM" /success:enable /failure:enable
        # Cambio de directivas
        # Uso de privilegios
        # Sistema
        # Auditoría de acceso a objetos globalirectivas locales
# Para comprobar las categorías configuradas
AuditPol /get /category:*

  
$policies = @(
    @{ Subcategory = "Logon"; Success = "enable"; Failure = "enable" },
    @{ Subcategory = "Account Lockout"; Success = "enable"; Failure = "enable" },
    @{ Subcategory = "Process Creation"; Success = "enable"; Failure = "enable" }
)

# Aplicar las políticas de auditoría
foreach ($policy in $policies) {
    AuditPol /set /subcategory:$($policy.Subcategory) /success:$($policy.Success) /failure:$($policy.Failure)
}

# Visualizar cambioa
  Write-Host ''
  Write-Host '  La categoría "Inicio de sesión de la cuenta" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Inicio de sesión de la cuenta"
  Write-Host ''
  
