# Architect AI

Build and reimagine websites with AI precision. Created by DLM Media. Clone existing websites or build from scratch using natural language prompts.

## Setup

1. **Clone & Install**
```bash
git clone https://github.com/dlmmedia/architect.git
cd architect
pnpm install  # or npm install / yarn install
```

2. **Add `.env.local`**

```env
# =================================================================
# REQUIRED
# =================================================================
FIRECRAWL_API_KEY=your_firecrawl_api_key    # https://firecrawl.dev

# =================================================================
# AI PROVIDER - Choose your LLM
# =================================================================
ANTHROPIC_API_KEY=your_anthropic_api_key  # https://console.anthropic.com
OPENAI_API_KEY=your_openai_api_key        # https://platform.openai.com
GEMINI_API_KEY=your_gemini_api_key        # https://aistudio.google.com/app/apikey
GROQ_API_KEY=your_groq_api_key            # https://console.groq.com

# =================================================================
# FAST APPLY (Optional - for faster edits)
# =================================================================
MORPH_API_KEY=your_morphllm_api_key    # https://morphllm.com/dashboard

# =================================================================
# SANDBOX PROVIDER - Choose ONE: Vercel (default) or E2B
# =================================================================
SANDBOX_PROVIDER=vercel  # or 'e2b'

# Option 1: Vercel Sandbox (default)
# Choose one authentication method:

# Method A: OIDC Token (recommended for development)
# Run `vercel link` then `vercel env pull` to get VERCEL_OIDC_TOKEN automatically
VERCEL_OIDC_TOKEN=auto_generated_by_vercel_env_pull

# Method B: Personal Access Token (for production or when OIDC unavailable)
# VERCEL_TEAM_ID=team_xxxxxxxxx      # Your Vercel team ID 
# VERCEL_PROJECT_ID=prj_xxxxxxxxx    # Your Vercel project ID
# VERCEL_TOKEN=vercel_xxxxxxxxxxxx   # Personal access token from Vercel dashboard

# Option 2: E2B Sandbox
# E2B_API_KEY=your_e2b_api_key      # https://e2b.dev
```

3. **Run**
```bash
pnpm dev  # or npm run dev / yarn dev
```

Open [http://localhost:3000](http://localhost:3000)

## Features

- **Clone Website Mode**: Enter a URL to scrape and reimagine any existing website with AI
- **Build from Scratch Mode**: Describe what you want to build using natural language prompts
- **Live Preview**: See your website come to life in real-time
- **AI-Powered**: Supports multiple AI models (Anthropic, OpenAI, Gemini, Groq)
- **Modern Stack**: Built with Next.js, React, and Tailwind CSS

## Usage

### Clone Website Mode
1. Enter a URL in the input field
2. Select your preferred design style
3. Click "Scrape Site" to begin
4. Watch as AI reimagines the website

### Build from Scratch Mode
1. Switch to "Build from Scratch" tab
2. Describe what you want to build in natural language
3. Click "Start Building"
4. AI will generate your website from your description

## License

MIT
