# 🚀 Quick Setup Guide for Architect AI

## ✅ Good News!
The "Build from Scratch" button is now **working perfectly**! You're seeing API errors because the backend services need to be configured with API keys.

## 🔑 Required API Keys

### 1. **Firecrawl** (Website Scraping) - REQUIRED
- **What it does:** Scrapes website content for cloning
- **Cost:** Free tier available
- **Get it:** https://firecrawl.dev
- **Steps:**
  1. Sign up at https://firecrawl.dev
  2. Go to your dashboard
  3. Copy your API key
  4. Add to `.env.local` as `FIRECRAWL_API_KEY`

### 2. **AI Provider** (Code Generation) - CHOOSE ONE

#### Option A: Groq (Recommended for Testing) 🚀
- **Why:** FREE, fast, great for testing
- **Models:** LLaMA 3.1, Mixtral
- **Get it:** https://console.groq.com
- **Steps:**
  1. Sign up at https://console.groq.com
  2. Create an API key
  3. Add to `.env.local` as `GROQ_API_KEY`

#### Option B: Anthropic Claude
- **Why:** Best quality, very smart
- **Cost:** Pay per use (~$0.003 per 1K tokens)
- **Get it:** https://console.anthropic.com
- **Add as:** `ANTHROPIC_API_KEY`

#### Option C: OpenAI GPT
- **Why:** Popular, good quality
- **Cost:** Pay per use (~$0.002 per 1K tokens)
- **Get it:** https://platform.openai.com
- **Add as:** `OPENAI_API_KEY`

### 3. **Sandbox Provider** (Live Preview) - CHOOSE ONE

#### Option A: E2B (Recommended) 🎯
- **Why:** Easier setup, reliable
- **Cost:** Free tier available (100 sandbox hours/month)
- **Get it:** https://e2b.dev
- **Steps:**
  1. Sign up at https://e2b.dev
  2. Go to API Keys section
  3. Create a new API key
  4. Add to `.env.local` as `E2B_API_KEY`
  5. Set `SANDBOX_PROVIDER=e2b`

#### Option B: Vercel Sandbox
- **Why:** If you're already using Vercel
- **More complex:** Requires project setup
- **Get it:** Run `vercel link` then `vercel env pull`

## 📝 Setup Steps

### Step 1: Create Environment File

```bash
cd /Users/shaji/Documents/arcitect-ver-3-lov-opn/open-lovable
cp .env.local.example .env.local
```

### Step 2: Edit `.env.local`

Open the file and fill in your API keys:

```env
# REQUIRED
FIRECRAWL_API_KEY=fc-abc123xyz...

# Choose ONE AI Provider
GROQ_API_KEY=gsk_abc123xyz...

# Choose ONE Sandbox Provider
SANDBOX_PROVIDER=e2b
E2B_API_KEY=e2b_abc123xyz...
```

### Step 3: Restart the Server

```bash
# Stop the current server (Ctrl+C)
# Then restart:
npm run dev
```

### Step 4: Test!

1. Go to http://localhost:3000
2. Click "Build from Scratch"
3. Type: "Create a simple todo list app"
4. Press Enter
5. Watch the magic happen! ✨

## 🎯 Recommended Minimal Setup (Fastest)

For the quickest setup to test the feature:

```env
# .env.local
FIRECRAWL_API_KEY=your_firecrawl_key
GROQ_API_KEY=your_groq_key
SANDBOX_PROVIDER=e2b
E2B_API_KEY=your_e2b_key
```

**Total cost:** $0 (all have free tiers)
**Setup time:** ~10 minutes

## 🔍 Getting Your API Keys

### Groq (Free & Fast)
1. Visit https://console.groq.com
2. Click "Sign Up" (can use Google/GitHub)
3. Click "API Keys" in sidebar
4. Click "Create API Key"
5. Copy the key (starts with `gsk_`)

### Firecrawl (Free Tier)
1. Visit https://firecrawl.dev
2. Click "Get Started"
3. Sign up with email
4. Go to dashboard
5. Copy your API key (starts with `fc-`)

### E2B (Free Tier)
1. Visit https://e2b.dev
2. Click "Get Started"
3. Sign up with email/GitHub
4. Go to "API Keys"
5. Click "Create API Key"
6. Copy the key (starts with `e2b_`)

## ⚠️ Important Notes

### Security
- **Never commit** `.env.local` to git (it's already in .gitignore)
- **Keep your API keys secret**
- **Don't share** your `.env.local` file

### Free Tiers
- **Groq:** Unlimited requests (rate limited)
- **Firecrawl:** 500 pages/month free
- **E2B:** 100 sandbox hours/month free

### Testing Without Clone Mode
If you only want to test "Build from Scratch" (no website cloning):
- You can **skip Firecrawl**
- Just set up Groq + E2B
- This lets you build apps from scratch without scraping websites

## 🐛 Troubleshooting

### Error: "FIRECRAWL_API_KEY environment variable is not set"
**Fix:** Add your Firecrawl API key to `.env.local`

### Error: "Failed to create sandbox"
**Fix:** Check your E2B_API_KEY and ensure you have free tier credits

### Error: "AI model not configured"
**Fix:** Add at least one AI provider key (recommend Groq for free testing)

### Changes not taking effect
**Fix:** Restart the dev server:
```bash
# Press Ctrl+C to stop
npm run dev
```

## 📞 Still Having Issues?

Check:
1. ✅ `.env.local` file exists in the `open-lovable` folder
2. ✅ All required keys are filled in (no "your_key_here" placeholders)
3. ✅ Server was restarted after adding keys
4. ✅ No typos in key names (case-sensitive!)
5. ✅ Keys are valid (test them in their respective dashboards)

## 🎉 Success!

Once configured, you'll see:
- ✅ No 500 errors in console
- ✅ Generation page loads
- ✅ AI starts building your app
- ✅ Live preview appears
- ✅ You can download the code

## Next Steps

After setup works:
1. Try different prompts
2. Experiment with styles
3. Test different AI models
4. Clone some websites
5. Download and deploy your apps!

---

**Need help?** Check the main README.md for more details or open an issue on GitHub.

