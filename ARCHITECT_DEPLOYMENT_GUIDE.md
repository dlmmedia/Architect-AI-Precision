# Architect AI - Clean Deployment Guide

## ✅ What's Been Done

### Code Cleanup
- ✅ Removed ALL unnecessary AI providers (Groq, Anthropic, Gemini, AI Gateway)
- ✅ Using **ONLY OpenAI (GPT-4o)** for AI generation
- ✅ Configured E2B sandbox with provided API key
- ✅ Using Firecrawl for web scraping
- ✅ Default model set to `gpt-4o` (OpenAI's latest)

### Environment Variables Configured
- ✅ `SANDBOX_PROVIDER=e2b`
- ✅ `E2B_API_KEY=e2b_d92b9290efed9886c28466f013bec448b9432df5`

---

## ⚠️ REQUIRED: Add Your API Keys

You need to add 2 more environment variables to make the app work:

### 1. OpenAI API Key (REQUIRED)
```bash
cd /Users/shaji/Documents/arcitect-ver-3-lov-opn/open-lovable
npx vercel env add OPENAI_API_KEY production
```
When prompted, paste your OpenAI API key from: https://platform.openai.com/api-keys

### 2. Firecrawl API Key (REQUIRED)
```bash
npx vercel env add FIRECRAWL_API_KEY production
```
When prompted, paste your Firecrawl API key from: https://firecrawl.dev

---

## 🚀 Deploy

After adding your API keys, deploy:

```bash
cd /Users/shaji/Documents/arcitect-ver-3-lov-opn/open-lovable
npx vercel --prod
```

---

## 📋 Configuration Summary

### AI Provider
- **Provider**: OpenAI only
- **Default Model**: `gpt-4o`
- **Supported Models**: All OpenAI models (gpt-4o, gpt-4-turbo, etc.)
- **API Key Required**: Yes

### Sandbox
- **Provider**: E2B
- **API Key**: Already configured ✅

### Web Scraping
- **Provider**: Firecrawl
- **API Key Required**: Yes (add via CLI)

---

## 🔧 Environment Variables Reference

| Variable | Value | Status |
|----------|-------|--------|
| `SANDBOX_PROVIDER` | `e2b` | ✅ Configured |
| `E2B_API_KEY` | `e2b_d92b...` | ✅ Configured |
| `OPENAI_API_KEY` | Your key | ❌ **REQUIRED** |
| `FIRECRAWL_API_KEY` | Your key | ❌ **REQUIRED** |

---

## 📍 Deployment URLs

After deployment completes, your app will be available at:
- https://open-lovable-{hash}.vercel.app (preview)
- https://open-lovable-phi-henna.vercel.app (production)

---

## 🐛 Troubleshooting

### "Unauthorized" E2B Error
- **Status**: Should be fixed! E2B API key is configured.
- **Verify**: Check that `SANDBOX_PROVIDER=e2b` and `E2B_API_KEY` are set

### "Unauthorized" Firecrawl Error
- **Cause**: Missing `FIRECRAWL_API_KEY`
- **Fix**: Add the key using the command above

### AI Generation Not Working
- **Cause**: Missing `OPENAI_API_KEY`
- **Fix**: Add your OpenAI API key from https://platform.openai.com

### Check Environment Variables
```bash
npx vercel env ls
```

### View Deployment Logs
```bash
npx vercel logs https://open-lovable-phi-henna.vercel.app
```

---

## 🎯 Quick Start Checklist

1. [ ] Add `OPENAI_API_KEY` via Vercel CLI
2. [ ] Add `FIRECRAWL_API_KEY` via Vercel CLI
3. [ ] Run `npx vercel --prod`
4. [ ] Test the app at your production URL
5. [ ] Try cloning a website (tests Firecrawl)
6. [ ] Try building from scratch (tests OpenAI)

---

## 📚 API Key Sources

- **OpenAI**: https://platform.openai.com/api-keys
- **Firecrawl**: https://firecrawl.dev/dashboard
- **E2B**: Already configured ✅

---

## 🔐 Security Note

Your E2B API key has been added to the Vercel project environment variables. 
Make sure to also add your OpenAI and Firecrawl keys securely via the Vercel CLI.

Never commit API keys to git!

---

**Ready to deploy!** Just add your OpenAI and Firecrawl API keys, then run `npx vercel --prod`

