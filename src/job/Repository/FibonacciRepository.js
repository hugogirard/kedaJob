const CosmosClient = require('@azure/cosmos').CosmosClient;
const Config = require('../config')();

class FibonacciRepository {

    constructor(){
        //const client = new CosmosClient({ Config.cosmosEndpoint, Config.cosmosKey() });
    }
}

module.exports = FibonacciRepository;