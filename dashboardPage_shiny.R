
#-------------------------------------------------------------------------------
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
ui <- dashboardPage(title="SEMEST 2023",
                    skin="red",
                    options=list(sidebarExpandOnHover = TRUE),
                    scrollToTop=TRUE,
                    footer=dashboardFooter(
                      left="COPYRIGHT © DETRAN-PA-TODOS OS DIREITOS RESERVADOS",
                      right="BELÉM - 2023"),
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
server <- function(input, output, session) {

  
}
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
shinyApp(ui, server)
#-------------------------------------------------------------------------------


