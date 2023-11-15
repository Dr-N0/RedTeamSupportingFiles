$destinationIP = "192.168.1.100"
$numPackets = 100
$packetSize = 1024

for ($i = 0; $i -lt $numPackets; $i++) {
  $packet = New-Object System.Net.Sockets.UdpClient
  $packet.Connect($destinationIP, 1471)

  $buffer = New-Object byte[] $packetSize
  $random = New-Object System.Random

  $random.NextBytes($buffer)
  $packet.Send($buffer)

  $packet.Close()
}