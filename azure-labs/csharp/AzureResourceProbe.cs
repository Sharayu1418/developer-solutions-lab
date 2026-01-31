using System;
using Azure.Identity;
using Azure.ResourceManager;
using Azure.ResourceManager.Resources;

class AzureResourceProbe
{
    static void Main()
    {
        string subscriptionId = Environment.GetEnvironmentVariable("AZURE_SUBSCRIPTION_ID");

        var armClient = new ArmClient(new DefaultAzureCredential(), subscriptionId);
        var resourceGroups = armClient.GetDefaultSubscription().GetResourceGroups();

        foreach (var rg in resourceGroups)
        {
            Console.WriteLine($"Resource Group: {rg.Data.Name}");
        }
    }
}