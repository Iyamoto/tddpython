# Testing
from selenium import webdriver

djangoip = '10.100.100.110'
djangourl = 'http://{}:8000'.format(djangoip)

# browser = webdriver.Firefox()
browser = webdriver.Chrome()
browser.get(djangourl)

try:
    assert 'Django' in browser.title
except:
    browser.quit()
    raise