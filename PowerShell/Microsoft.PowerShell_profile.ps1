##PROMPT
function Prompt
{
    $promptString = "$env:USERNAME @ $env:COMPUTERNAME " + $(Get-Location) + " -$"
    Write-Host $promptString -NoNewline -ForegroundColor DarkMagenta
    return " "
}

## ALIASES
new-alias v nvim

## ZOXIDE
Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell | Out-String)
})
