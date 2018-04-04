# swagger-editor
Adaptation of the Swagger-Editor for local files

Inspired by [swagger-edit](https://github.com/zixia/swagger-edit) and [swagger-editor-live](https://github.com/moon0326/swagger-editor-live)
I synthesize an node package and docker image to allow for editing swagger
specifications on a local machine using the latest version of the [swagger editor](https://github.com/swagger-api/swagger-editor).

## How to use
There are two ways to use this package:
1. As a node application
2. As docker image

To use the docker image, run
```
$ docker run -ti --rm --volume="$(pwd)":/openapi -p 9090:8080 aomitayo/swagger-editor my-openapi.yaml
```
where ``my-openapi.yaml``  is your open api spec file.
