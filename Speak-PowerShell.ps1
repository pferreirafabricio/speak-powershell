Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$textToSpeak = switch ( [String]::IsNullOrEmpty($args[0]) ) {
  $true    { "Hello World" }
  $false   { $args[0] }
}

$speak.Speak($textToSpeak)