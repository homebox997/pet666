$vercelToken = "vcp_1a2b3c4d5e6f7g8h9i0j"  # 你需要提供Vercel token

$headers = @{
    Authorization = "Bearer $vercelToken"
    "Content-Type" = "application/json"
}

# Create new Vercel project
$body = @{
    name = "pet666"
    gitRepository = @{
        type = "github"
        repo = "homebox997/pet666"
    }
} | ConvertTo-Json -Depth 3

$response = Invoke-RestMethod -Uri "https://api.vercel.com/v13/projects" -Method Post -Headers $headers -Body $body

Write-Host "Project created: $($response.id)"
Write-Host "URL: https://pet666.vercel.app"
