# LIST All IIS FEATURES: 
# Get-WindowsOptionalFeature -Online | where FeatureName -like 'IIS-*'


Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionDynamic -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45 -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET46 -ALL
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET47 -ALL


choco install urlrewrite -y
choco install dotnetcore-runtime -y
choco install dotnetcore-windowshosting -y
Restart-Computer -Force