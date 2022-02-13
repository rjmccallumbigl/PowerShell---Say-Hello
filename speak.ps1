# Create voice program
Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.SelectVoice("Microsoft Zira Desktop")

# Read in a variable
$prompt = "What is your name?"
$speak.Speak($prompt)
$name = Read-Host -Prompt $prompt

# Speak name
$speak.Speak("Hello $($name)")
