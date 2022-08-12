rm -r releases
mkdir -p releases

# build for Windows
GOOS=windows GOARCH=amd64 go build
mv vc-node-packager.exe releases/vc-node-packager-windows

# build for Mac M1 (arm64)
#GOOS=darwin GOARCH=arm64 go build
go build
mv vc-node-packager releases/vc-node-packager-mac-arm64

# build for 64bit Linux (amd64)
GOOS=linux GOARCH=amd64 go build
mv vc-node-packager releases/vc-node-packager-linux-amd64
