# List of services and resources to be Check: Approved.
# Started with a few resource types to get started aligned with the initial mods installed
# You can remove the comment per row to include the resource type.  Make sure you have the related service mod installed

# Acceptable Values:
  # "Skip"
  # "Check: Active"
  # "Enforce: Delete inactive with 1 day warning"
  # "Enforce: Delete inactive with 3 days warning"
  # "Enforce: Delete inactive with 7 days warning"
  # "Enforce: Delete inactive with 14 days warning"
  # "Enforce: Delete inactive with 30 days warning"
  # "Enforce: Delete inactive with 60 days warning"
  # "Enforce: Delete inactive with 90 days warning"
  # "Enforce: Delete inactive with 180 days warning"
  # "Enforce: Delete inactive with 365 days warning"

resource_active = { 
    azure-aks-managedCluster                     = "Check: Active"
    # azure-applicationgateway-applicationGateway  = "Check: Active"
    # azure-applicationinsights-applicationInsight = "Check: Active"
    # azure-apimanagement-apiManagementService     = "Check: Active"
    # azure-appservice-appServicePlan              = "Check: Active"
    # azure-appservice-functionApp                 = "Check: Active"
    # azure-appservice-webApp                      = "Check: Active"
    # azure-compute-availabilitySet                = "Check: Active"
    ##Have Unattached Policy Set instead##azure-compute-disk                           = "Check: Active"
    # azure-compute-diskEncryptionSet              = "Check: Active"
    azure-compute-image                          = "Check: Active"
    azure-compute-snapshot                       = "Check: Active"
    azure-compute-virtualMachine                 = "Check: Active"
    azure-cosmosdb-databaseAccount               = "Check: Active"
    # azure-cosmosdb-mongoDbCollection             = "Check: Active"
    azure-cosmosdb-mongoDbDatabase               = "Check: Active"
    azure-cosmosdb-sqlContainer                  = "Check: Active"
    azure-cosmosdb-sqlDatabase                   = "Check: Active"
    azure-databricks-databricksWorkspace         = "Check: Active"
    # azure-datafactory-dataset                    = "Check: Active"
    # azure-datafactory-factory                    = "Check: Active"
    # azure-datafactory-pipeline                   = "Check: Active"
    # azure-dns-recordSet                          = "Check: Active"
    # azure-dns-zone                               = "Check: Active"
    # azure-firewall-firewall                      = "Check: Active"
    # azure-frontdoorservice-frontDoor             = "Check: Active"
    # azure-iam-roleAssignment                     = "Check: Active"
    # azure-iam-roleDefinition                     = "Check: Active"
    # azure-keyvault-key                           = "Check: Active"
    # azure-keyvault-secret                        = "Check: Active"
    # azure-keyvault-vault                         = "Check: Active"
    # azure-loadbalancer-loadBalancer              = "Check: Active"
    # azure-loganalytics-logAnalyticsWorkspace     = "Check: Active"
    # azure-monitor-actionGroup                    = "Check: Active"
    # azure-monitor-alerts                         = "Check: Active"
    # azure-monitor-logProfile                     = "Check: Active"
    azure-mysql-server                           = "Check: Active"
    # azure-network-applicationSecurityGroup       = "Check: Active"
    # azure-network-networkInterface               = "Check: Active"
    # azure-network-networkSecurityGroup           = "Check: Active"
    # azure-network-publicIpAddress                = "Check: Active"
    # azure-network-routeTable                     = "Check: Active"
    # azure-network-subnet                         = "Check: Active"
    # azure-network-virtualNetwork                 = "Check: Active"
    # azure-networkwatcher-flowLog                 = "Check: Active"
    # azure-networkwatcher-networkWatcher          = "Check: Active"
    azure-postgresql-database                    = "Check: Active"
    azure-postgresql-server                      = "Check: Active"
    # azure-recoveryservice-vault                  = "Check: Active"
    # azure-searchmanagement-searchService         = "Check: Active"
    azure-sql-database                           = "Check: Active"
    # azure-sql-elasticPool                        = "Check: Active"
    azure-sql-server                             = "Check: Active"
    azure-storage-container                      = "Check: Active"
    azure-storage-fileShare                      = "Check: Active"
    azure-storage-storageAccount                 = "Check: Active"
    # azure-synapseanalytics-sqlPool               = "Check: Active"
    azure-synapseanalytics-synapseWorkspace      = "Check: Active"
}

# Note: the resource map above dictates the applicable use of each line item below.  You do not need to comment out these items to reduce scope
policy_map = {
    azure-aks-managedCluster                     = "tmod:@turbot/azure-aks#/policy/types/managedClusterActive"
    azure-apimanagement-apiManagementService     = "tmod:@turbot/azure-apimanagement#/policy/types/apiManagementServiceActive"
    azure-applicationgateway-applicationGateway  = "tmod:@turbot/azure-applicationgateway#/policy/types/applicationGatewayActive"
    azure-applicationinsights-applicationInsight = "tmod:@turbot/azure-applicationinsights#/policy/types/applicationInsightActive"
    azure-appservice-appServicePlan              = "tmod:@turbot/azure-appservice#/policy/types/appServicePlanActive"
    azure-appservice-functionApp                 = "tmod:@turbot/azure-appservice#/policy/types/functionAppActive"
    azure-appservice-webApp                      = "tmod:@turbot/azure-appservice#/policy/types/webAppActive"
    azure-compute-availabilitySet                = "tmod:@turbot/azure-compute#/policy/types/availabilitySetActive"
    azure-compute-disk                           = "tmod:@turbot/azure-compute#/policy/types/diskActive"
    azure-compute-diskEncryptionSet              = "tmod:@turbot/azure-compute#/policy/types/diskEncryptionSetActive"
    azure-compute-image                          = "tmod:@turbot/azure-compute#/policy/types/imageActive"
    azure-compute-snapshot                       = "tmod:@turbot/azure-compute#/policy/types/snapshotActive"
    azure-compute-virtualMachine                 = "tmod:@turbot/azure-compute#/policy/types/virtualMachineActive"
    azure-cosmosdb-databaseAccount               = "tmod:@turbot/azure-cosmosdb#/policy/types/databaseAccountActive"
    azure-cosmosdb-mongoDbCollection             = "tmod:@turbot/azure-cosmosdb#/policy/types/mongoDbCollectionActive"
    azure-cosmosdb-mongoDbDatabase               = "tmod:@turbot/azure-cosmosdb#/policy/types/mongoDbDatabaseActive"
    azure-cosmosdb-sqlContainer                  = "tmod:@turbot/azure-cosmosdb#/policy/types/sqlContainerActive"
    azure-cosmosdb-sqlDatabase                   = "tmod:@turbot/azure-cosmosdb#/policy/types/sqlDatabaseActive"
    azure-databricks-databricksWorkspace         = "tmod:@turbot/azure-databricks#/policy/types/databricksWorkspaceActive"
    azure-datafactory-dataset                    = "tmod:@turbot/azure-datafactory#/policy/types/datasetActive"
    azure-datafactory-factory                    = "tmod:@turbot/azure-datafactory#/policy/types/factoryActive"
    azure-datafactory-pipeline                   = "tmod:@turbot/azure-datafactory#/policy/types/pipelineActive"
    azure-dns-recordSet                          = "tmod:@turbot/azure-dns#/policy/types/recordSetActive"
    azure-dns-zone                               = "tmod:@turbot/azure-dns#/policy/types/zoneActive"
    azure-firewall-firewall                      = "tmod:@turbot/azure-firewall#/policy/types/firewallActive"
    azure-frontdoorservice-frontDoor             = "tmod:@turbot/azure-frontdoorservice#/policy/types/frontDoorActive"
    azure-iam-roleAssignment                     = "tmod:@turbot/azure-iam#/policy/types/roleAssignmentActive"
    azure-iam-roleDefinition                     = "tmod:@turbot/azure-iam#/policy/types/roleDefinitionActive"
    azure-keyvault-key                           = "tmod:@turbot/azure-keyvault#/policy/types/keyActive"
    azure-keyvault-secret                        = "tmod:@turbot/azure-keyvault#/policy/types/secretActive"
    azure-keyvault-vault                         = "tmod:@turbot/azure-keyvault#/policy/types/vaultActive"
    azure-loadbalancer-loadBalancer              = "tmod:@turbot/azure-loadbalancer#/policy/types/loadBalancerActive"
    azure-loganalytics-logAnalyticsWorkspace     = "tmod:@turbot/azure-loganalytics#/policy/types/logAnalyticsWorkspaceActive"
    azure-monitor-actionGroup                    = "tmod:@turbot/azure-monitor#/policy/types/actionGroupActive"
    azure-monitor-alerts                         = "tmod:@turbot/azure-monitor#/policy/types/alertsActive"
    azure-monitor-logProfile                     = "tmod:@turbot/azure-monitor#/policy/types/logProfileActive"
    azure-mysql-server                           = "tmod:@turbot/azure-mysql#/policy/types/serverActive"
    azure-network-applicationSecurityGroup       = "tmod:@turbot/azure-network#/policy/types/applicationSecurityGroupActive"
    azure-network-networkInterface               = "tmod:@turbot/azure-network#/policy/types/networkInterfaceActive"
    azure-network-networkSecurityGroup           = "tmod:@turbot/azure-network#/policy/types/networkSecurityGroupActive"
    azure-network-publicIpAddress                = "tmod:@turbot/azure-network#/policy/types/publicIpAddressActive"
    azure-network-routeTable                     = "tmod:@turbot/azure-network#/policy/types/routeTableActive"
    azure-network-subnet                         = "tmod:@turbot/azure-network#/policy/types/subnetActive"
    azure-network-virtualNetwork                 = "tmod:@turbot/azure-network#/policy/types/virtualNetworkActive"
    azure-networkwatcher-flowLog                 = "tmod:@turbot/azure-networkwatcher#/policy/types/flowLogActive"
    azure-networkwatcher-networkWatcher          = "tmod:@turbot/azure-networkwatcher#/policy/types/networkWatcherActive"
    azure-postgresql-database                    = "tmod:@turbot/azure-postgresql#/policy/types/databaseActive"
    azure-postgresql-server                      = "tmod:@turbot/azure-postgresql#/policy/types/serverActive"
    azure-recoveryservice-vault                  = "tmod:@turbot/azure-recoveryservice#/policy/types/vaultActive"
    azure-searchmanagement-searchService         = "tmod:@turbot/azure-searchmanagement#/policy/types/searchServiceActive"
    azure-sql-database                           = "tmod:@turbot/azure-sql#/policy/types/databaseActive"
    azure-sql-elasticPool                        = "tmod:@turbot/azure-sql#/policy/types/elasticPoolActive"
    azure-sql-server                             = "tmod:@turbot/azure-sql#/policy/types/serverActive"
    azure-storage-container                      = "tmod:@turbot/azure-storage#/policy/types/containerActive"
    azure-storage-fileShare                      = "tmod:@turbot/azure-storage#/policy/types/fileShareActive"
    azure-storage-storageAccount                 = "tmod:@turbot/azure-storage#/policy/types/storageAccountActive"
    azure-synapseanalytics-sqlPool               = "tmod:@turbot/azure-synapseanalytics#/policy/types/sqlPoolActive"
    azure-synapseanalytics-synapseWorkspace      = "tmod:@turbot/azure-synapseanalytics#/policy/types/synapseWorkspaceActive"
}

# Note: the resource map above dictates the applicable use of each line item below.  You do not need to comment out these items to reduce scope
policy_map_age = {
    azure-aks-managedCluster                     = "tmod:@turbot/azure-aks#/policy/types/managedClusterActiveAge"
    azure-apimanagement-apiManagementService     = "tmod:@turbot/azure-apimanagement#/policy/types/apiManagementServiceActiveAge"
    azure-applicationgateway-applicationGateway  = "tmod:@turbot/azure-applicationgateway#/policy/types/applicationGatewayActiveAge"
    azure-applicationinsights-applicationInsight = "tmod:@turbot/azure-applicationinsights#/policy/types/applicationInsightActiveAge"
    azure-appservice-appServicePlan              = "tmod:@turbot/azure-appservice#/policy/types/appServicePlanActiveAge"
    azure-appservice-functionApp                 = "tmod:@turbot/azure-appservice#/policy/types/functionAppActiveAge"
    azure-appservice-webApp                      = "tmod:@turbot/azure-appservice#/policy/types/webAppActiveAge"
    azure-compute-availabilitySet                = "tmod:@turbot/azure-compute#/policy/types/availabilitySetActiveAge"
    azure-compute-disk                           = "tmod:@turbot/azure-compute#/policy/types/diskActiveAge"
    azure-compute-diskEncryptionSet              = "tmod:@turbot/azure-compute#/policy/types/diskEncryptionSetActiveAge"
    azure-compute-image                          = "tmod:@turbot/azure-compute#/policy/types/imageActiveAge"
    azure-compute-snapshot                       = "tmod:@turbot/azure-compute#/policy/types/snapshotActiveAge"
    azure-compute-virtualMachine                 = "tmod:@turbot/azure-compute#/policy/types/virtualMachineActiveAge"
    azure-cosmosdb-databaseAccount               = "tmod:@turbot/azure-cosmosdb#/policy/types/databaseAccountActiveAge"
    azure-cosmosdb-mongoDbCollection             = "tmod:@turbot/azure-cosmosdb#/policy/types/mongoDbCollectionActiveAge"
    azure-cosmosdb-mongoDbDatabase               = "tmod:@turbot/azure-cosmosdb#/policy/types/mongoDbDatabaseActiveAge"
    azure-cosmosdb-sqlContainer                  = "tmod:@turbot/azure-cosmosdb#/policy/types/sqlContainerActiveAge"
    azure-cosmosdb-sqlDatabase                   = "tmod:@turbot/azure-cosmosdb#/policy/types/sqlDatabaseActiveAge"
    azure-databricks-databricksWorkspace         = "tmod:@turbot/azure-databricks#/policy/types/databricksWorkspaceActiveAge"
    azure-datafactory-dataset                    = "tmod:@turbot/azure-datafactory#/policy/types/datasetActiveAge"
    azure-datafactory-factory                    = "tmod:@turbot/azure-datafactory#/policy/types/factoryActiveAge"
    azure-datafactory-pipeline                   = "tmod:@turbot/azure-datafactory#/policy/types/pipelineActiveAge"
    azure-dns-recordSet                          = "tmod:@turbot/azure-dns#/policy/types/recordSetActiveAge"
    azure-dns-zone                               = "tmod:@turbot/azure-dns#/policy/types/zoneActiveAge"
    azure-firewall-firewall                      = "tmod:@turbot/azure-firewall#/policy/types/firewallActiveAge"
    azure-frontdoorservice-frontDoor             = "tmod:@turbot/azure-frontdoorservice#/policy/types/frontDoorActiveAge"
    azure-iam-roleAssignment                     = "tmod:@turbot/azure-iam#/policy/types/roleAssignmentActiveAge"
    azure-iam-roleDefinition                     = "tmod:@turbot/azure-iam#/policy/types/roleDefinitionActiveAge"
    azure-keyvault-key                           = "tmod:@turbot/azure-keyvault#/policy/types/keyActiveAge"
    azure-keyvault-secret                        = "tmod:@turbot/azure-keyvault#/policy/types/secretActiveAge"
    azure-keyvault-vault                         = "tmod:@turbot/azure-keyvault#/policy/types/vaultActiveAge"
    azure-loadbalancer-loadBalancer              = "tmod:@turbot/azure-loadbalancer#/policy/types/loadBalancerActiveAge"
    azure-loganalytics-logAnalyticsWorkspace     = "tmod:@turbot/azure-loganalytics#/policy/types/logAnalyticsWorkspaceActiveAge"
    azure-monitor-actionGroup                    = "tmod:@turbot/azure-monitor#/policy/types/actionGroupActiveAge"
    azure-monitor-alerts                         = "tmod:@turbot/azure-monitor#/policy/types/alertsActiveAge"
    azure-monitor-logProfile                     = "tmod:@turbot/azure-monitor#/policy/types/logProfileActiveAge"
    azure-mysql-server                           = "tmod:@turbot/azure-mysql#/policy/types/serverActiveAge"
    azure-network-applicationSecurityGroup       = "tmod:@turbot/azure-network#/policy/types/applicationSecurityGroupActiveAge"
    azure-network-networkInterface               = "tmod:@turbot/azure-network#/policy/types/networkInterfaceActiveAge"
    azure-network-networkSecurityGroup           = "tmod:@turbot/azure-network#/policy/types/networkSecurityGroupActiveAge"
    azure-network-publicIpAddress                = "tmod:@turbot/azure-network#/policy/types/publicIpAddressActiveAge"
    azure-network-routeTable                     = "tmod:@turbot/azure-network#/policy/types/routeTableActiveAge"
    azure-network-subnet                         = "tmod:@turbot/azure-network#/policy/types/subnetActiveAge"
    azure-network-virtualNetwork                 = "tmod:@turbot/azure-network#/policy/types/virtualNetworkActiveAge"
    azure-networkwatcher-flowLog                 = "tmod:@turbot/azure-networkwatcher#/policy/types/flowLogActiveAge"
    azure-networkwatcher-networkWatcher          = "tmod:@turbot/azure-networkwatcher#/policy/types/networkWatcherActiveAge"
    azure-postgresql-database                    = "tmod:@turbot/azure-postgresql#/policy/types/databaseActiveAge"
    azure-postgresql-server                      = "tmod:@turbot/azure-postgresql#/policy/types/serverActiveAge"
    azure-recoveryservice-vault                  = "tmod:@turbot/azure-recoveryservice#/policy/types/vaultActiveAge"
    azure-searchmanagement-searchService         = "tmod:@turbot/azure-searchmanagement#/policy/types/searchServiceActiveAge"
    azure-sql-database                           = "tmod:@turbot/azure-sql#/policy/types/databaseActiveAge"
    azure-sql-elasticPool                        = "tmod:@turbot/azure-sql#/policy/types/elasticPoolActiveAge"
    azure-sql-server                             = "tmod:@turbot/azure-sql#/policy/types/serverActiveAge"
    azure-storage-container                      = "tmod:@turbot/azure-storage#/policy/types/containerActiveAge"
    azure-storage-fileShare                      = "tmod:@turbot/azure-storage#/policy/types/fileShareActiveAge"
    azure-storage-storageAccount                 = "tmod:@turbot/azure-storage#/policy/types/storageAccountActiveAge"
    azure-synapseanalytics-sqlPool               = "tmod:@turbot/azure-synapseanalytics#/policy/types/sqlPoolActiveAge"
    azure-synapseanalytics-synapseWorkspace      = "tmod:@turbot/azure-synapseanalytics#/policy/types/synapseWorkspaceActiveAge"
}