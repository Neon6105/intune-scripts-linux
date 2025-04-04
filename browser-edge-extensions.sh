#!/usr/bin/bash

# Install extensions for Microsoft Edge
# https://learn.microsoft.com/en-us/microsoft-edge/extensions-chromium/developer-guide/alternate-distribution-options#using-a-preferences-json-file-macos-and-linux

declare -A EXTlist=(
    # ["extension-name"]="extension_ID"
    ["ublock-origin"]="odfafepnkmbhccpbejgmiehpchacaeak"
)
for i in "${!EXTlist[@]}"; do
    # echo "Key: $i value: ${EXTlist[$i]}"
    echo '{"external_update_url": "https://edge.microsoft.com/extensionwebstorebase/v1/crx"}' > /usr/share/microsoft-edge/extensions/${EXTlist[$i]}.json
done
