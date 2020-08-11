from urllib.request import urlopen, Request
from bs4 import BeautifulSoup
from splinter import Browser

url = 'http://hdr.undp.org/en/countries'
executable_path = {'executable_path': '/usr/local/bin/chromedriver'}
browser = Browser('chrome', **executable_path, headless=False)
browser.visit(url)
html = browser.html
soup = BeautifulSoup(html, 'html.parser')
containers = soup.find_all("div", class_ = "countriesListItemName")

for country in containers:
    brand = country.find_all("a", href=True)
    print(brand)