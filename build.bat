
@echo on

::echo %Githash%
::echo %Buildstamp%

SET CGO_ENABLED=0
SET GOOS=windows
SET GOARCH=amd64
go build -i -o redis-dump-go.exe github.com/yannh/redis-dump-go

SET CGO_ENABLED=0
SET GOOS=linux
SET GOARCH=amd64
go build -i -o redis-dump-go github.com/yannh/redis-dump-go

SET CGO_ENABLED=1
SET GOOS=windows
SET GOARCH=amd64