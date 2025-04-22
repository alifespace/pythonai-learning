[Console]::OutputEncoding = [System.Text.UTF8Encoding]::new()

Write-Host "======== 当前环境信息 ========" -ForegroundColor Cyan

# 当前 Python 解释器路径
Write-Host "`n[当前解释器路径] python:" -ForegroundColor Yellow
python -c "import sys; print(sys.executable)"

# 当前 Python 版本
Write-Host "`n[Python 版本]:" -ForegroundColor Yellow
python --version

# 当前 uv 使用的 Python 路径
Write-Host "`n[uv 使用的解释器路径]:" -ForegroundColor Yellow
uv pip run python -c "import sys; print(sys.executable)"

# uv 使用版本
Write-Host "`n[uv 版本]:" -ForegroundColor Yellow
uv --version

# uv 的真实安装路径（可能有多个）
Write-Host "`n[uv 可执行文件路径] (where uv):" -ForegroundColor Yellow
where uv

# 当前环境变量 UV_PYTHON
Write-Host "`n[$env:UV_PYTHON 环境变量]:" -ForegroundColor Yellow
Write-Output $env:UV_PYTHON

# 当前 uv 中已安装的包
Write-Host "`n[uv pip list 当前环境中的已安装包]:" -ForegroundColor Yellow
uv pip list
