const cds = require("@sap/cds");
const fesr = require("@sap/fesr-to-otel-js");

cds.on("bootstrap", (app) => fesr.registerFesrEndpoint(app));

module.exports = cds.server;