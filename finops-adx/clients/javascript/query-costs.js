const { Client, KustoConnectionStringBuilder } = require("azure-kusto-data");

const cluster = "https://finops-nar-ade.centralus.kusto.windows.net";
const database = "Hub";

const kcsb = KustoConnectionStringBuilder.withAadAzCliAuthentication(cluster);
const client = new Client(kcsb);

const query = "Costs | take 5";

client.execute(database, query).then(res => {
  console.log(res.primaryResults[0]);
});