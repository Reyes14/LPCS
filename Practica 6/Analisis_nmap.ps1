$ip_loc = Test-Connection -ComputerName(hostname) -Count 1 | select IPV4Address
$ip_loc = $ip_loc.IPV4Address.ToString()

$ip_pub = curl ifconfig.me

$ip_loc_bytes = [System.Text.Encoding]::Unicode.GetBytes($ip_loc)
$ip_loc_encode = [Convert]::ToBase64String($ip_loc_bytes)

$ip_pub_bytes = [System.Text.Encoding]::Unicode.GetBytes($ip_pub)
$ip_pub_encode = [Convert]::ToBase64String($ip_pub_bytes)

Set-Content -Value $ip_loc_encode, $ip_pub_encode -Path '.\Practica 6\resultados.txt'