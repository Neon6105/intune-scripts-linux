#!/usr/bin/bash

# Install extensions for Google Chrome

declare -A EXTlist=(
    # ["extension-name"]="extension_ID"
    ["ublock-origin"]="cjpalhdlnbpafiamejdnhcphjbkeiagm"
)
for i in "${!EXTlist[@]}"; do
    # echo "Key: $i value: ${EXTlist[$i]}"
    echo '{"external_update_url": "https://clients2.google.com/service/update2/crx"}' > /opt/google/chrome/extensions/${EXTlist[$i]}.json
done
