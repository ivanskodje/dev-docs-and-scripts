## Getting Starter

### Initial Setup (Ubuntu example)

1. Install dependencies: `sudo apt install selenium python3 python3-pip -y`

2. Download WebDriver for Chrome matching your browser version: https://sites.google.com/chromium.org/driver/  
   Find your version at: [chrome://settings/help](chrome://settings/help)
3. Extract and add downloaded chromedriver file to `/usr/bin/` folder so that it is accessable via Env path

4. Increase default wordwrap limit with python (which is 79 by default when you use autopep8): F1 and open settings json, and add:

```
"editor.wordWrap": "wordWrapColumn",
"editor.wordWrapColumn": 120
```

### Chrome Extensions

#### XPath Helper

- [Download XPath Helper](https://chrome.google.com/webstore/detail/xpath-helper/hgimnogjllphhhkhlmebbmlgjoejdpjl?hl=en-US)

Helps us identify buttons for chrome. Check out the [XPath Syntax from w3schools](https://www.w3schools.com/xml/xpath_syntax.asp) to learn reading it.


----

## Code Examples

### Open browser from Selenium

```py3
from selenium import webdriver

driver = webdriver.Chrome()
driver.get("https://ivanskodje.com")

```

### Opens Chrome window using the path to the chromedriver

```py3
from selenium import webdriver
import os

driver = webdriver.Chrome(os.getcwd() + "/chromedriver")
```

### Adding Options (Set screen size to 1920x1080)

```py3
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

options = Options()
options.add_argument("--window-size=1920,1080")

driver = webdriver.Chrome(options=options)
driver.get("https://www.youtube.com")
```

### Clicking on a textbox

Click the claims box

```py3
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

options = Options()
options.add_argument("--window-size=1920,1080")

driver = webdriver.Chrome(options=options)
driver.get("http://localhost:3000")

folder = driver.find_element('xpath', '//div[@name="header-link"]')
folder.click()

```

### Example of double clicking

Double click the claims box

```py3
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.action_chains import ActionChains

options = Options()
options.add_argument("--window-size=1920,1080")

driver = webdriver.Chrome(options=options)
driver.get("http://localhost:3000")

folder = driver.find_element('xpath', '//div[@name="header-link"]')

actionchains = ActionChains(driver)
actionchains.double_click(folder).perform()
```

### Example of Waiting to click link

Sometimes a page take longer to load, and we have to wait for it before attempting to click a button.

```py3
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver .support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as ExpectedConditions
from selenium.webdriver.common.by import By


options = Options()
options.add_argument("--window-size=1920,1080")

driver = webdriver.Chrome(options=options)
driver.get("https://localhost:3000")

folder = WebDriverWait(driver, 20).until(
    ExpectedConditions.element_to_be_clickable((By.XPATH, '//a[@href="https://nextjs.org"]')))

folder.click()

```
