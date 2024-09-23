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
