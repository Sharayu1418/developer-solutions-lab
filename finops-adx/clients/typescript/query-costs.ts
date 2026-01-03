import { KustoConnectionStringBuilder, Client } from "azure-kusto-data";

const cluster = "https://finops-nar-ade.centralus.kusto.windows.net";
const database = "Hub";

const kcsb = KustoConnectionStringBuilder.withAadDeviceAuthentication(cluster); 
const client = new Client(kcsb);

async function main() {
    const query = "Costs | take 5";
    const response = await client.execute(database, query);
    console.log(response.primaryResults[0]?.toString());
}

main();