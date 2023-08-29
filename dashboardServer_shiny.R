#-------------------------------------------------------------------------------
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
ui <- dashboardPage(
  dashboardHeader(),
  dashboardSidebar(),
  dashboardBody()
)
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
server <- function(input, output, session) {
# Local onde inserir Tabelas, Graficos, Mapas, Modelos

output$fonte1 <- renderDiagrammeR({
    mermaid("graph TB
A[PAREAMENTO]-->B{FONTES}
B-->C[Policia Civil]
B-->D[PRE]
B-->E[PRF]
B-->F[IML]
B-->G[Bombeiro]
B-->H[SAMU]
B-->I[SESMA]
B-->J[SESPA]
B-->K[HMUE]
C-->L[ANUÁRIO WEB]
D-->L[ANUÁRIO WEB]
E-->L[ANUÁRIO WEB]
F-->L[ANUÁRIO WEB]
G-->L[ANUÁRIO WEB]
H-->L[ANUÁRIO WEB]
I-->L[ANUÁRIO WEB]
J-->L{ANUÁRIO WEB}
K-->L(ANUÁRIO WEB)",
            width=700
    )
  })
  
  
}
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
shinyApp(ui, server)
#-------------------------------------------------------------------------------