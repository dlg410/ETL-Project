from urllib.request import urlopen as uReq
from bs4 import BeautifulSoup as soup 

my_url = "http://hdr.undp.org/en/countries"

#opening up connection, grabbing the page
uClient = uReq(my_url)
page_html = uClient.read()
uClient.close()

# html parsin
page_soup = soup(page_html, "html.parser")

