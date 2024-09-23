# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para instalar el controlador de dominio en Windows Server
#
# Ejecución remota:
#   Invoke-WebRequest -Uri "https://raw.githubusercontent.com/nipegun/ws-scripts/main/ControladorDeDominio-Instalar.ps1" -UseBasicParsing | Select-Object -ExpandProperty Content | Set-Content -Path "c:\Windows\Temp\Script.ps1" -Encoding utf8
#   c:\Windows\Temp\Script.ps1 -FQDN "mi.dominio.com"
# ----------

param (
    [string]$FQDN
)

Write-Host "  Iniciando el script de instalación del controlador de dominio de Windows Server."
Write-Host "    Se procederá con el dominio $FQDN"

# Obtener todas las interfaces de red disponibles
$interfaces = Get-NetAdapter | Where-Object { $_.Status -eq 'Up' }

# Mostrar las interfaces y permitir al usuario elegir una
Write-Host "Seleccione la interfaz de red que desea utilizar:"

for ($i = 0; $i -lt $interfaces.Count; $i++) {
    Write-Host "[$i] $($interfaces[$i].Name)"
}

# Obtener la elección del usuario
$selection = Read-Host "Ingrese el número correspondiente a la interfaz"

# Validar la selección
if ($selection -ge 0 -and $selection -lt $interfaces.Count) {
    $selectedInterface = $interfaces[$selection]
    Write-Host "Ha seleccionado la interfaz: $($selectedInterface.Name) con alias $($selectedInterface.InterfaceAlias)"
    $ipv4Address = Get-NetIPAddress -InterfaceAlias $selectedInterface.InterfaceAlias -AddressFamily IPv4

    foreach ($ip in $ipv4Address) {
        if ($ip.PrefixOrigin -eq 'Dhcp') {
            Write-Host "La interfaz '$($selectedInterface.InterfaceAlias)' tiene la IP '$($ip.IPAddress)' asignada por DHCP."
        } else {
            Write-Host "La interfaz '$($selectedInterface.InterfaceAlias)' tiene la IP '$($ip.IPAddress)' asignada de forma manual."
        }
    }
} else {
    Write-Host "Selección no válida. Por favor, ejecute el script nuevamente e ingrese un número válido."
}

