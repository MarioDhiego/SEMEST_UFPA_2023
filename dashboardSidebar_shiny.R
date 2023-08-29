#-------------------------------------------------------------------------------
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(
    menuItem("MICRODADOS",tabName="banco1",icon=icon("database"),
             menuSubItem("Base de Dados", tabName="base1", icon=icon("coins")),
             menuSubItem("Fonte de Dados",tabName="fonte1",icon=icon("network-wired"))
             ),
    menuItem("SOCIOECONÔMICO",tabName="socio1",icon=icon("male"),
             menuSubItem("Gênero",tabName="genero1",icon=icon("venus-mars")),
             menuSubItem("Idade",tabName="idade1",icon=icon("baby")),
             menuSubItem("Raça",tabName="raca1",icon=icon("male")),
             menuSubItem("Escolaridade",tabName="escola1",icon=icon("graduation-cap")),
             menuSubItem("Estado Civil", tabName = "civil1", icon = icon("ring"))
             )
  ),
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