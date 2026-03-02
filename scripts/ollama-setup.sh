#!/bin/bash
# automated-ollama-setup.sh
# This script is designed to be used as AWS EC2 User Data for the AI Tier.

# 1. Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# 2. Wait for Ollama to be available
sleep 10

# 3. Configure Ollama to listen on all interfaces (0.0.0.0)
# Create the systemd drop-in directory
mkdir -p /etc/systemd/system/ollama.service.d

# Write the override configuration
cat <<EOF > /etc/systemd/system/ollama.service.d/override.conf
[Service]
Environment="OLLAMA_HOST=0.0.0.0"
EOF

# 4. Reload and Restart the service
systemctl daemon-reload
systemctl restart ollama

# 5. Wait for the service to restart
sleep 10

# 6. Pull the required model
ollama pull tinyllama

echo "Ollama setup complete and listening on port 11434"
