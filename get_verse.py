import requests

APP_KEY = "t9mrOfjgi1Wx5czFFfGYKacEa5HzM76eMVcOLBxPAO89IHBZ"

headers = {
    "X-YVP-App-Key": APP_KEY
}

url = "https://api.youversion.com/v1/bibles/3034/passages/JHN.3.16"

try:
    response = requests.get(url, headers=headers, timeout=10)

    if response.status_code == 200:
        data = response.json()
        verse = data["reference"] + "\n" + data["content"]
        print(verse)
    else:
        print("Could not load Bible verse.")

except requests.exceptions.RequestException:
    print("Unable to connect to YouVersion.\nPlease check your internet connection.")