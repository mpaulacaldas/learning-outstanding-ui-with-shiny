# learning-outstanding-ui-with-shiny

Personal notes for the JavaScript chapter in 
[Outstanding User Interfaces with Shiny](https://unleash-shiny.rinterface.com)

## JavaScript for Shiny

- For installing Node in mac, it's easy to follow the 
  [recommended link](https://unleash-shiny.rinterface.com/survival-kit-javascript#a-real-repl). In Windows, I had better luck with scoop.
- We can open Chrome DevTools in any Shiny app, go to the Console tab, 
  type and debug JavaScript code.
- `console.log(this);` all the things, easiest way to debug.
- jQuery is a JS flavour with easier syntax.
- It's really important to use this syntax to avoid calling DOM elements that 
  are not ready:
  ```
  $(document).ready(function(){
    // your code
  });
  
  // or a shortcut
  
  $(function() {
    // your code
  });
  ```
  
TODO:
- [jQuery exercise 3 and 4](https://unleash-shiny.rinterface.com/survival-kit-javascript#exercise-3-jquery)

## Communicate between R and JS

- Websockets are insane, need to read again when not half asleep.
- [See this demo](https://unleash-shiny.rinterface.com/shiny-intro#test-it). 
  Really interesting to see how R, RStudio and Chrome can communicate. May come 
  in handy later for understanding why my RStudio at work suffers so much.
- Note to self: read the suggestions given in the Developer Tools pane to 
  actually record and see stuff.
- _This highlights one fundamental limitation in Shiny: as R is single-threaded, 
  clients have to queue to get an answer from the server._

```r
# to test
app <- OSUICode::httpuv_app()
# to stop
app$stop()
```

- `ShinySession` = R6 class. `session` = instance of the class.
- The session is unique to a given user. Two different clients cannot share 
  the same session.
  
Stopped here: https://unleash-shiny.rinterface.com/shiny-intro#shiny-session
