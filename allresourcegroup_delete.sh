set -x

#This will delete every resource group in your Azure account except any that include the word cloud
notRG=$(az group list --query "[?contains(name, 'cloud')].name" --output json | jq .[] -r)
for i in $(az group list --query "[?name!='$notRG'].name" --output json | jq .[] -r); do az group delete -n $i -y; done
