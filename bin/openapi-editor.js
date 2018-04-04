#!/usr/bin/env node
'use strict';

var program = require('commander');
var fs = require('fs');
var openapiFilePathValue;

program
    .version('1.0')
    .arguments('<openapiFilePath>')
    .option('-p, --port <port>', 'Port to be used. Default is 8080')
    .option('-h, --host <Hostname|Ip>', 'Host to be used. Default is 127.0.0.1')
    .option('-f, --folder <folder>', 'folder to be used for a multifile openapi setup')
    .action(function(openapiFilePath) {
        openapiFilePathValue = openapiFilePath;
    });

program.parse(process.argv);

if (typeof openapiFilePathValue === 'undefined') {
    console.error("<openapiFilePathValue> is required. openapi-editor <openapiFilePathValue> ");
    process.exit(1);
}

if (typeof program.port === 'undefined') {
    program.port = 8080;
}
if (typeof program.host === 'undefined') {
    program.host = "0.0.0.0";
}

if (fs.existsSync(openapiFilePathValue)) {
    require("../index.js").edit(openapiFilePathValue, program.port,program.host,program.folder);
} else {
    console.error(openapiFilePathValue + " does not exist.");
}
