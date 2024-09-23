# Pongo a disposición pública este script bajo el término de "software de dominio público".
# Puedes hacer lo que quieras con él porque es libre de verdad; no libre con condiciones como las licencias GNU y otras patrañas similares.
# Si se te llena la boca hablando de libertad entonces hazlo realmente libre.
# No tienes que aceptar ningún tipo de términos de uso o licencia para utilizarlo o modificarlo porque va sin CopyLeft.

# ----------
# Script de NiPeGun para instalar el controlador de dominio en Windows Server
#
# Ejecución remota:
#   Invoke-Expression (Invoke-WebRequest -Uri "https://raw.githubusercontent.com/nipegun/ws-scripts/refs/heads/main/ControladorDeDominio-Instalar.ps1" -UseBasicParsing).Content
# ----------

param (
  [Parameter(Mandatory=$true)]
  [string]$vDominio
  [string]$vExtens,

  [int]$vIP
)

Write-Host "Se va a proceder a instalar el controlador de dominio para el dominio $vDominio.$vExtens"

$vInterfacesDeRed = Get-NetIPConfiguration

# Determinar si la IP asignada a la interfaz es fija o es por DHCP
Write-Host "    Comprobando que el servidor tenga asignada una IP fija..."
foreach ($vInterfaz in $vInterfacesDeRed) {
  Write-Host "      Interfaz: $($vInterfaz.vInterfacesDeRed)"
  # Determinar si está usando DHCP para IPv4
  if ($vInterfaz.DhcpEnabled) {
    Write-Host "    El servidor tiene dirección IP por DHCP. Configura una IP fija y vuelve a ejecutar el script."
  } else {
    Write-Host "    La dirección asignada al servidor es fija. Se procederá con la instalación del controlador de dominio."

    
  }
    
  # Determinar si está usando DHCP para IPv6 (si aplica)
  #if ($interface.IPv6DhcpEnabled) {
  #  Write-Host "  IPv6: DHCP está habilitado."
  #} else {
  #  Write-Host "  IPv6: Dirección IP fija."
  #}

  Write-Host "-------------------------------------"

}
