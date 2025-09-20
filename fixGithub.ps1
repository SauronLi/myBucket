# 替换 bucket 目录下所有 json 文件中的 github.com 为 hk.gh-proxy.com/https://github.com
Get-ChildItem -Path .\bucket\ -Filter *.json | ForEach-Object {
    (Get-Content $_.FullName) -replace 'https://github.com', 'https://hk.gh-proxy.com/https://github.com' | Set-Content $_.FullName
}