ACCESS_TOKEN=$(az account get-access-token \
  --resource https://kusto.kusto.windows.net \
  --query accessToken -o tsv)

curl -X POST \
  https://finops-nar-ade.centralus.kusto.windows.net/v1/rest/query \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "db": "Hub",
    "csl": "Costs | take 5"
  }'