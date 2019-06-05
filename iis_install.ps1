# LIST All IIS FEATURES: 
# Get-WindowsOptionalFeature -Online | where FeatureName -like 'IIS-*'


Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionDynamic
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance
#Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45
#Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET46
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET47

choco install urlrewrite -y
choco install dotnetcore-runtime -y
choco install dotnetcore-windowshosting -y
Restart-Computer -Force