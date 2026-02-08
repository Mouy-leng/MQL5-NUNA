#!/bin/bash
# Helper script to download the latest compiled EA from GitHub Actions (requires gh CLI or manual URL)

# Replace these with your details
REPO="Mouy-leng/MQL5-NUNA"
ARTIFACT_NAME="compiled-eas"
DEST_DIR="/path/to/mt5/MQL5/Experts/Advisors"

echo "Note: This script is a template. You need to configure the DEST_DIR."
# Example using gh CLI:
# gh run download --name "$ARTIFACT_NAME" --dir "$DEST_DIR"
