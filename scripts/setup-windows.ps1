cd ../server

py -m venv .venv
./.venv/Scripts/Activate.ps1
py -m pip install -r requirements.txt

cd ../web

yarn install --network-timeout 1000000000

cd ../config

yarn install --network-timeout 1000000000

cd ../cloudflare

yarn install --network-timeout 1000000000

cd ../libDrive
