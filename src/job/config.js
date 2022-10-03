

class Config {

    get cosmosEndpoint() {
        return rocess.env.COSMOS_ENDPOINT;
    }

    get cosmosKey() {
        return process.env.COSMOS_KEY;
    }

    get cosmosDatabaseId() {
        return 'calculus';
    }

    get cosmosContainerId() {
        return 'fibonacci'
    }

    get cosmosPartitionKey() {
        return { kind: "Hash", paths: ["/seq"] };
    }
}

module.exports = function(){
    return new Config();
};