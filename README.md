# openapi-editor
Adaptation of the Swagger-Editor for local files

Inspired by [swagger-edit](https://github.com/zixia/swagger-edit) and [swagger-editor-live](https://github.com/moon0326/swagger-editor-live),
a node package and docker image to allow for editing openapi specifications on 
a local machine using the latest version of the [swagger editor](https://github.com/swagger-api/swagger-editor).

## How to use
There are two ways to use this package:
1. As a node application
2. As docker image

To use the node application, clone this repository, navigate to the directory, then run
```
$ npm bin openapi-editor <openapi spec file path>
```
To use the docker image, run
```
$ docker run -ti --rm --volume="$(pwd)":/openapi -p 8080:8080 aomitayo/openapi-editor my-openapi.yaml
```
where ``my-openapi.yaml``  is your openapi spec file.
