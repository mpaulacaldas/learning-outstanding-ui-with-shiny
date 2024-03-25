library(shiny)

chrome_browser <- function(url) {
  system(sprintf(
    # launching in incognito, to avoid errors from my extensions
    # https://superuser.com/a/1383357
    '/usr/bin/open -a "/Applications/Google Chrome.app" %s --args --incognito',
    url))
}

options(
  shiny.port = 1234,
  shiny.launch.browser = chrome_browser
)
