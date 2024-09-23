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
  [string]$vExtens

  [int]$vIP
)

Write-Host "Se va a proceder a instalar el controplador de dominio para el dominio $vDominio.$vExtens"
