import os

from dotenv import load_dotenv()

API_ID = int(os.getenv("API_ID"))
API_HASH = os.getenv("API_HASH")
BOT_TOKEN = os.getenv("BOT_TOKEN")
SHARELOCK = os.getenv("SHARELOCK", "nandev.db")
SESSION = os.getenv("SESSION", "")
OPENAI_KEY = os.getenv("OPENAI_KEY", "")
RMBG_API = os.getenv("RMBG_API", "")
