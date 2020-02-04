#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo         Deploying Libra
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ---Global Variables
echo "LIBRA_ALIAS: $LIBRA_ALIAS"
echo "DEFAULT_LOCATION: $DEFAULT_LOCATION"
echo
# set local variables
# Derive as many variables as possible
applicationName="${LIBRA_ALIAS}"
resourceGroupName="${applicationName}-rg"
storageAccountName=${applicationName}$RANDOM
functionAppName="${applicationName}-func"

echo ---Derived Variables
echo "Application Name: $applicationName"
echo "Resource Group Name: $resourceGroupName"
echo "Storage Account Name: $storageAccountName"
echo "Function App Name: $functionAppName"
echo

echo "Creating resource group $resourceGroupName in $DEFAULT_LOCATION"
# az group create -l "$DEFAULT_LOCATION" --n "$resourceGroupName" --tags  Application=$applicationName

echo "Creating storage account $storageAccountName in $resourceGroupName"
# Create an Azure storage account in the resource group.
# az storage account create \
#  --name $storageAccountName \
#  --location $DEFAULT_LOCATION \
#  --resource-group $resourceGroupName \
#  --sku Standard_LRS

echo "Creating serverless function app $functionAppName in $resourceGroupName"
# az functionapp create \
#  --name $functionAppName \
#  --storage-account $storageAccountName \
#  --consumption-plan-location $DEFAULT_LOCATION \
#  --resource-group $resourceGroupName

echo "Updating App Settings for $functionAppName"
storageConnectionString="dummy-value"
serviceBusConnectionString="dummy-value"
# az webapp config appsettings set -g $resourceGroupName -n $functionAppName --settings AzureWebJobsStorage=$storageConnectionString ServiceBusConnection=$serviceBusConnectionString
