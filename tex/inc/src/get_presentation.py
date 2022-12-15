#!/bin/env python3
import requests
import shutil


url = "https://example.com/img/{}.svg"
i = 1


while True:
    resp = requests.get(url.format(i), stream=True)
    if resp.status_code == 200:
        with open(f"{i}.svg", "wb") as f:
            resp.raw.decode_content = True
            shutil.copyfileobj(resp.raw, f)
        i += 1
    else:
        break
