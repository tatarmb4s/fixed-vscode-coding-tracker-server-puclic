
"use strict";
var version = require('./Version');

module.exports = function(Program) {
    return function (req, res, next) {
        return req.path == '/' ? res.json({
            welcome: 'Visual Studio Code Coding Tracker Server',
            serverVersion: version.server,
            storageVersion: version.storage,
            uploadVersion: version.upload,
            maxUploadVersionSupport: version.uploadSupport.join(';'),
            localServerMode: !!Program.local
        }).end() : next();
    };
};