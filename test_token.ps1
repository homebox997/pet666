$headers = @{
    Authorization = "token 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"
}
try {
    $repo = Invoke-RestMethod -Uri "https://api.github.com/repos/homebox997/pet666" -Headers $headers -TimeoutSec 10
    Write-Host "Token OK - last push:" $repo.pushed_at
} catch {
    Write-Host "Token check failed:" $_.Exception.Message
}
