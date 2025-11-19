#!/bin/bash

# Setup Vercel Environment Variables
# This script helps you configure all required API keys for your Architect AI Precision app

cd /Users/shaji/Documents/arcitect-ver-3-lov-opn/open-lovable

echo "=================================="
echo "Architect AI Precision - Environment Setup"
echo "=================================="
echo ""
echo "We need to configure your API keys in Vercel."
echo "You can get these keys from:"
echo ""
echo "1. FIRECRAWL_API_KEY: https://firecrawl.dev"
echo "2. AI Provider (choose ONE):"
echo "   - AI_GATEWAY_API_KEY: https://vercel.com/dashboard/ai-gateway/api-keys (RECOMMENDED)"
echo "   - OR ANTHROPIC_API_KEY: https://console.anthropic.com"
echo "   - OR OPENAI_API_KEY: https://platform.openai.com"
echo "   - OR GROQ_API_KEY: https://console.groq.com"
echo ""
echo "=================================="
echo ""

# Function to add environment variable
add_env_var() {
    local var_name=$1
    local var_description=$2
    local required=$3
    
    echo "→ $var_description"
    read -p "  Enter your $var_name (or press Enter to skip): " var_value
    
    if [ -n "$var_value" ]; then
        echo "$var_value" | npx vercel env add "$var_name" production
        echo "  ✓ Added $var_name"
    else
        if [ "$required" = "yes" ]; then
            echo "  ⚠ WARNING: $var_name is required for the app to work!"
        else
            echo "  ⊘ Skipped $var_name"
        fi
    fi
    echo ""
}

# Add required variables
echo "=== REQUIRED API KEYS ==="
echo ""
add_env_var "FIRECRAWL_API_KEY" "Firecrawl API Key (for website scraping)" "yes"

echo "=== AI PROVIDER (Need at least ONE) ==="
echo ""
add_env_var "AI_GATEWAY_API_KEY" "Vercel AI Gateway API Key (RECOMMENDED - provides access to all models)" "no"
add_env_var "ANTHROPIC_API_KEY" "Anthropic API Key (for Claude models)" "no"
add_env_var "OPENAI_API_KEY" "OpenAI API Key (for GPT models)" "no"
add_env_var "GROQ_API_KEY" "Groq API Key (for fast inference)" "no"
add_env_var "GEMINI_API_KEY" "Google Gemini API Key" "no"

echo "=== OPTIONAL ==="
echo ""
add_env_var "MORPH_API_KEY" "Morph Fast Apply API Key (optional optimization)" "no"

echo ""
echo "=================================="
echo "✓ Setup Complete!"
echo "=================================="
echo ""
echo "Next steps:"
echo "1. Redeploy your application: npx vercel --prod"
echo "2. Visit: https://open-lovable-phi-henna.vercel.app"
echo ""

