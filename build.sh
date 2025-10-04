#!/bin/bash

# Build script for Render.com - Generates config.js from environment variables

echo "🔧 Generating config.js from environment variables..."

# Set defaults if env vars are not set (for local development)
USER_NAME="${USER_NAME:-ADMIN}"
USER_PASSWORD="${USER_PASSWORD:-ADMIN@MXT1}"

# Generate config.js
cat > config.js << EOF
// Auto-generated configuration file
// DO NOT COMMIT THIS FILE - It contains sensitive credentials
// Generated at build time from environment variables

const APP_CONFIG = {
    credentials: {
        username: '${USER_NAME}',
        password: '${USER_PASSWORD}'
    }
};

// Make config available globally
window.APP_CONFIG = APP_CONFIG;
EOF

echo "✅ config.js generated successfully!"
echo "   Username: ${USER_NAME}"
echo "   Password: ${USER_PASSWORD:0:4}****"

