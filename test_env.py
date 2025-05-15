from dotenv import load_dotenv
import os

# Load .env file
load_dotenv()

# Prove by printing a variable (replace 'MY_VAR' with your actual variable name)
print(os.getenv('REDIS_URL'))