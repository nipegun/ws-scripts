
# Ejecución remota:
#  Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/nipegun/ws-scripts/main/PostInst/PrepararParaAuditar.ps1" -UseBasicParsing).Content

# Imprimir estado de todas las categorías
  AuditPol /get /category:*
# secpol.msc
  # Configuración de seguridad
    # Configuración de políticas de auditoría avanzada
      # Directivas de auditoría del sistema
        # Inicio de sesión de cuentas (Categoría: "Inicio de sesión de la cuenta")
          AuditPol /set /subcategory:"Validación de credenciales"                   /success:enable  /failure:enable
          AuditPol /set /subcategory:"Servicio de autenticación Kerberos"           /success:disable /failure:disable
          AuditPol /set /subcategory:"Operaciones de vales de servicio Kerberos"    /success:disable /failure:disable
          AuditPol /set /subcategory:"Otros eventos de inicio de sesión de cuentas" /success:enable  /failure:enable
        # Administración de cuentas
          AuditPol /set /subcategory:"Administración de grupos de aplicaciones"   /success:enable /failure:enable
          AuditPol /set /subcategory:"Administración de cuentas de equipo"        /success:enable /failure:enable
          AuditPol /set /subcategory:"Administración de grupos de distribución"   /success:enable /failure:enable
          AuditPol /set /subcategory:"Otros eventos de administración de cuentas" /success:enable /failure:enable
          AuditPol /set /subcategory:"Administración de grupos de seguridad"      /success:enable /failure:enable
          AuditPol /set /subcategory:"Administración de cuentas de usuario"       /success:enable /failure:enable
        # Seguimiento detallado
          AuditPol /set /subcategory:"Actividad DPAPI"                       /success:disable /failure:disable
          AuditPol /set /subcategory:"Eventos Plug and Play"                 /success:enable  /failure:disable
          AuditPol /set /subcategory:"Creación del proceso"                  /success:enable  /failure:enable
          AuditPol /set /subcategory:"Finalización del proceso"              /success:enable  /failure:enable
          AuditPol /set /subcategory:"Eventos de RPC"                        /success:enable  /failure:enable
          AuditPol /set /subcategory:"Eventos de ajuste de derecho de token" /success:enable  /failure:disable
        # Acceso DS
          AuditPol /set /subcategory:"Replicación de servicio de directorio detallada" /success:disable /failure:disable
          AuditPol /set /subcategory:"Acceso del servicio de directorio"               /success:disable /failure:disable
          AuditPol /set /subcategory:"Cambios de servicio de directorio"               /success:enable  /failure:enable
          AuditPol /set /subcategory:"Replicación de servicio de directorio"           /success:disable /failure:disable
        # Inicio y cierre de sesión
          AuditPol /set /subcategory:"Bloqueo de cuenta"                          /success:enable  /failure:disable
          AuditPol /set /subcategory:"Notificaciones de usuario o dispositivo"    /success:disable /failure:disable
          AuditPol /set /subcategory:"Pertenencia a grupos"                       /success:enable  /failure:disable
          AuditPol /set /subcategory:"Modo extendido de IPSec"                    /success:disable /failure:disable
          AuditPol /set /subcategory:"Modo principal de IPSec"                    /success:disable /failure:disable
          AuditPol /set /subcategory:"Modo rápido de IPSec"                       /success:disable /failure:disable
          AuditPol /set /subcategory:"Cerrar sesión"                              /success:enable  /failure:disable
          AuditPol /set /subcategory:"Inicio de sesión"                           /success:enable  /failure:enable
          AuditPol /set /subcategory:"Servidor de directiva de redes"             /success:enable  /failure:enable
          AuditPol /set /subcategory:"Otros eventos de inicio y cierre de sesión" /success:enable  /failure:enable
          AuditPol /set /subcategory:"Inicio de sesión especial"                  /success:enable  /failure:enable
        # Acceso a objetos
          AuditPol /set /subcategory:"Aplicación generada"                              /success:enable  /failure:enable
          AuditPol /set /subcategory:"Servicios de certificación"                       /success:enable  /failure:enable
          AuditPol /set /subcategory:"Recurso compartido de archivos detallado"         /success:enable  /failure:disable
          AuditPol /set /subcategory:"Recurso compartido de archivos"                   /success:enable  /failure:enable
          AuditPol /set /subcategory:"Sistema de archivos"                              /success:enable  /failure:disable
          AuditPol /set /subcategory:"Conexión de plataforma de filtrado"               /success:enable  /failure:disable
          AuditPol /set /subcategory:"Colocación de paquetes de plataforma de filtrado" /success:disable /failure:disable
          AuditPol /set /subcategory:"Manipulación de identificadores"                  /success:disable /failure:disable
          AuditPol /set /subcategory:"Objeto de kernel"                                 /success:enable  /failure:enable
          AuditPol /set /subcategory:"Otros eventos de acceso a objetos"                /success:disable /failure:disable
          AuditPol /set /subcategory:"Registro"                                         /success:enable  /failure:disable
          AuditPol /set /subcategory:"Almacenamiento extraíble"                         /success:enable  /failure:enable
          AuditPol /set /subcategory:"SAM"                                              /success:enable  /failure:disable
          AuditPol /set /subcategory:"Almacenamiento provisional de directiva central"  /success:disable /failure:disable
        # Cambio de directivas
          AuditPol /set /subcategory:"Cambio de directiva de auditoría"                 /success:enable  /failure:enable
          AuditPol /set /subcategory:"Cambio de directiva de autenticación"             /success:enable  /failure:enable
          AuditPol /set /subcategory:"Cambio de directiva de autorización"              /success:enable  /failure:enable
          AuditPol /set /subcategory:"Cambio de directiva de plataforma de filtrado"    /success:enable  /failure:disable
          AuditPol /set /subcategory:"Cambio de directiva de nivel de reglas de MPSSVC" /success:disable /failure:disable
          AuditPol /set /subcategory:"Otros eventos de cambios de directiva"            /success:disable /failure:disable
        # Uso de privilegios
          AuditPol /set /subcategory:"Uso de privilegio no confidencial"  /success:disable /failure:disable
          AuditPol /set /subcategory:"Otros eventos de uso de privilegio" /success:disable /failure:disable
          AuditPol /set /subcategory:"Uso de privilegio confidencial"     /success:enable  /failure:enable
          # Sistema
          AuditPol /set /subcategory:"Controlador IPSec"                  /success:enable  /failure:disable
          AuditPol /set /subcategory:"Otros eventos de sistema"           /success:disable /failure:enable
          AuditPol /set /subcategory:"Cambio de estado de seguridad"      /success:enable  /failure:enable
          AuditPol /set /subcategory:"Extensión del sistema de seguridad" /success:enable  /failure:enable
          AuditPol /set /subcategory:"Integridad del sistema"             /success:enable  /failure:enable
        # Auditoría de acceso a objetos global
          AuditPol /set /subcategory:"Sistema de archivos" /success:enable  /failure:enable
          AuditPol /set /subcategory:"Registro"            /success:enable  /failure:enable

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
  Write-Host '  La categoría "Inicio de sesión de cuentas" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Inicio de sesión de la cuenta"
  Write-Host ''
  
  Write-Host ''
  Write-Host '  La categoría "Administración de cuentas" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Administración de cuentas"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Seguimiento detallado" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Seguimiento detallado"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Acceso DS" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Seguimiento DS"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Inicio y cierre de sesión" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Inicio/cierre de sesión"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Acceso a objetos" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Acceso a objetos"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Cambio en directivas" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Cambio de plan"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Uso de privilegios" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Uso de privilegios"
  Write-Host ''

  Write-Host ''
  Write-Host '  La categoría "Sistema" ha quedado de la siguiente manera: '
  Write-Host ''
  AuditPol /get /category:"Sistema"
  Write-Host ''

Set-AdvancedAuditPolicyConfiguration -Policy "AuditPolicy" -Subcategory "Credential Validation" -Success:$true -Failure:$true
          Set-AdvancedAuditPolicyConfiguration -Policy "AuditPolicy" -Subcategory "Validación de credenciales" -Success:$true -Failure:$true
          Set-AuditPolicy -Subcategory "Credential Validation" -Success $true -Failure $true
