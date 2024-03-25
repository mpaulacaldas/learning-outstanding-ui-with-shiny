app_shiny_js_obj <- function() {
  ui <- fluidPage(
    tags$script(
      "$(function() {
      console.log(Shiny);
    });
    "
    )
  )
  server <- function(input, output, session) {}
  shinyApp(ui, server)
}
