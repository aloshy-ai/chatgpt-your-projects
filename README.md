# ChatGPT Your Projects

## Development

- This project uses `nix` for development. To get started, run `nix develop` to enter a development shell with all dependencies available.
- Make sure Docker Daemon is running in the background.
- After starting Supabase local (`supabase start`), set `OPENAI_API_KEY` in it's secrets (`supabase secrets set OPENAI_API_KEY=<your-openapi-key>).