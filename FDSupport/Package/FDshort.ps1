

$ScriptFromGitHub = Invoke-WebRequest https://raw.githubusercontent.com/ChrisFDSTech/Common/main/FDSupport/DesktopIcon_FDSupport -UseBasicParsing

if ($ScriptFromGitHub.StatusCode -eq 200) {
    # Successfully retrieved script content
    $ScriptContent = $ScriptFromGitHub.Content
    Invoke-Expression $ScriptContent
 } else {
    Write-Host "Failed to download the script. Status code: $($ScriptFromGitHub.StatusCode)"
}
