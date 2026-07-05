$headers = @{
    Authorization = "token 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"
    Accept = "application/vnd.github.v3+json"
}

$body = @{
    name = "pet666"
    description = "Senior Dog Health Hub - AI-powered health assessment"
    private = $false
} | ConvertTo-Json

Invoke-RestMethod -Uri "https://api.github.com/user/repos" -Method Post -Headers $headers -Body $body
