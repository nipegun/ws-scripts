# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para instalar el controlador de dominio en Windows Server
#
# Ejecución remota:
#   Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/nipegun/ws-scripts/refs/heads/main/Prueba.ps1" -UseBasicParsing).Content
# ----------

$interfaces = Get-NetIPConfiguration

foreach ($interface in $interfaces) {
    # Obtener la dirección IPv4 de la interfaz
    $ipv4Address = Get-NetIPAddress -InterfaceAlias $interface.InterfaceAlias -AddressFamily IPv4

    foreach ($ip in $ipv4Address) {
        if ($ip.PrefixOrigin -eq 'Dhcp') {
            Write-Host "La interfaz '$($interface.InterfaceAlias)' tiene la IP '$($ip.IPAddress)' asignada por DHCP."
        } else {
            Write-Host "La interfaz '$($interface.InterfaceAlias)' tiene la IP '$($ip.IPAddress)' asignada de forma manual."
        }
    }
}
