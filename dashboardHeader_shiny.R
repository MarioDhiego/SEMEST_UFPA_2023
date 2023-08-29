#-------------------------------------------------------------------------------
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
ui <- dashboardPage(
  dashboardHeader(
    title="Anuário Estatístico de Acidentes de Trânsito - 2023",
    titleWidth=600,
    disable=FALSE,
    fixed=FALSE,
    tags$li(class="dropdown",
            tags$style(".main-header {max-height:50px}"),
            tags$style(".main-header.logo {height:50px}")
            ),
    tags$li(div(img(src='ufpa.jpg',height="30px"),
                style="padding-top:12px; padding-right:350px;"),
            class="dropdown"
            ),
    tags$li(class="dropdown",
            tags$a(href="https://www.detran.pa.gov.br",
                   icon("road"),"DETRAN-PA",target="_blank")
            ),
    tags$li(class="dropdown",
            tags$a(href="https://twitter.com/DETRAN_PA",
                   icon("twitter"),"twitter",target="_blank")
            ),
    tags$li(class="dropdown",
      tags$a(href = "https://www.facebook.com/detranPARA",
             icon("facebook"),"facebook",target = "_blank")
      ),
    tags$li(
      class="dropdown",
      tags$a(href="https://github.com/MarioDhiego",
             icon("github"), "AUTOR", target = "_blank")
      )
    ),
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

