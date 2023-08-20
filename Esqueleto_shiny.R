


#1 INSTALAÇÃO DE PACOTES                                                        ----
#install.packages(c("shiny","shinydashboard"))

#2 ATIVAÇÃO DE PACOTES                                                          ----
#1.1 Pacote p/ Leitura de Base de Dados                                         ----
library(readr)
library(readxl)
library(openxlsx)


#1.2 Pacotes p/ Manipulação de Dados                                            ----
#library(tidyverse)
#library(dplyr)
#library(magrittr)
#library(purrr)

#1.3 Pacotes p/ Fazer Gráficos                                                  ----
#library(ggplot2)
#library(ggthemes)
#library(gganimate)
#library(gplots)
#library(plotly)
#library(highcharter)
#library(ggcorrplot)
#library(geojsonsf)
#library(fmsb)
#library(ggiraph)
#library(ggiraphExtra)

#1.4 Pacotes p/ Fazer Tabelas Dinâmicas                                         ----
library(DT)
library(data.table)
#library(reactable)
#library(kableExtra)
#library(sparkline)
#library(gmodels)
#library(janitor)
#library(kableExtra)
#library(knitr)
library(DiagrammeR)

#1.5 Pacotes p/Fazer Mapas                                                      ----
#library(geobr)
#library(sf)
#library(raster)
#library(tmap)
#library(tmaptools)
#library(rgdal)
#library(leaflet)
#library(ggmap)
#library(maps)
#library(ggtext)
#library(BETS)
#library(RColorBrewer)
#library(ggspatial)
#library(curl)
#library(lwgeom)


#1.6 Pacotes p/ Fazer Dashboard                                                 ----
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyWidgets)
library(shinycssloaders)
#library(shinyauthr)
#library(shinyjs)
#library(sodium)
#library(htmltools)
#library(htmlwidgets)
#library(markdown)
#library(rmarkdown)



#2 Criação do Dasboard Interativo                                               ----
#2.1 Use Interface(Interface do Usuário)                                        ----
#2.1.1 Criação dos Menus Dashboard                                              ----

ui <- dashboardPage(
  title = "SEMEST 2023",
  skin = "blue",
  options = list(sidebarExpandOnHover = TRUE),
  scrollToTop = TRUE,
  footer = dashboardFooter(left = "COPYRIGHT © DETRAN-PA - TODOS OS DIREITOS RESERVADOS",
                           right = "BELÉM,2023"),
  dashboardHeader(
    title = "Anuário Estatístico de Acidentes de Trânsito - 2023",
    titleWidth = 600,
    disable = FALSE,
    fixed = FALSE,
    tags$li(
      class = "dropdown",
      tags$style(".main-header {max-height:50px}"),
      tags$style(".main-header.logo {height:50px}")
    ),
    tags$li(
      div(img(src = 'ufpa.jpg', height = "30px"),
          style = "padding-top:12px; padding-right:350px;"),
      class = "dropdown"
    ),
    tags$li(
      class = "dropdown",
      tags$a(href = "https://www.detran.pa.gov.br",
             icon("road"), "DETRAN-PA", target =
               "_blank")
    ),
    tags$li(
      class = "dropdown",
      tags$a(
        href = "https://twitter.com/DETRAN_PA",
        icon("twitter"),
        "twitter",
        target = "_blank"
      )
    ),
    tags$li(
      class = "dropdown",
      tags$a(
        href = "https://www.facebook.com/detranPARA",
        icon("facebook"),
        "facebook",
        target = "_blank"
      )
    ),
    tags$li(
      class = "dropdown",
      tags$a(href = "https://github.com/MarioDhiego",
             icon("github"), "AUTOR", target = "_blank")
    )
  ),
  #2.2 Criação da Barra Lateral Dashboard                                         ----
  dashboardSidebar(
    minified = TRUE,
    collapsed = FALSE,
    width = 240,
    tags$style(".left-side, .main-sidebar {padding-center: 150px}"),
    menuItem(
      "ANUÁRIO",
      tabName = "about1",
      icon = icon("address-card"),
      menuSubItem("Sobre Anuário", tabName = "sobre1", icon = icon("book")),
      menuSubItem("Vídeo", tabName = "video1", icon = icon("video"))
    ),
    menuItem(
      "MICRODADOS",
      tabName = "banco1",
      icon = icon("database"),
      menuSubItem("Base de Dados", tabName = "base1", icon = icon("coins")),
      menuSubItem(
        "Fonte de Dados",
        tabName = "fonte1",
        icon = icon("network-wired")
      )
    ),
    menuItem(
      "SOCIOECONÔMICO",
      tabName = "socio1",
      icon = icon("male"),
      menuSubItem("Gênero", tabName = "genero1", icon = icon("venus-mars")),
      menuSubItem("Idade", tabName = "idade1", icon = icon("baby")),
      menuSubItem("Raça", tabName = "raca1", icon = icon("male")),
      menuSubItem(
        "Escolaridade",
        tabName = "escola1",
        icon = icon("graduation-cap")
      ),
      menuSubItem("Estado Civil", tabName = "civil1", icon = icon("ring"))
    ),
    menuItem(
      "CONDIÇÃO DA VÍTIMA",
      tabName = "condicao1",
      icon = icon("wheelchair"),
      menuSubItem("Estado da Vítima", tabName = "condi1"),
      menuSubItem("Tipos de Acidente", tabName = "acid1"),
      menuSubItem("Tipos de Veículos", tabName = "veiculo1"),
      menuSubItem(
        "Efeito de Drogas",
        tabName = "droga1",
        icon = icon("capsules")
      ),
      menuSubItem(
        "Efeito de Alcool",
        tabName = "alcool1",
        icon = icon("beer")
      )
    ),
    menuItem(
      "OCORRÊNCIAS",
      tabName = "calendario1",
      icon = icon("calendar"),
      menuSubItem("Dias Semana", tabName = "dia1"),
      menuSubItem("Meses", tabName = "mes1"),
      menuSubItem("Ano", tabName = "ano1"),
      menuSubItem("Turno", tabName = "turno1")
    ),
    menuItem(
      "MAPAS",
      tabName = "mapa1",
      icon = icon("earth"),
      menuSubItem("Belém", tabName = "belem1", icon = icon("city")),
      menuSubItem("RMB", tabName = "metrop1", icon = icon("globe")),
      menuSubItem(
        "Região de Integração",
        tabName = "metrop1",
        icon = icon("globe")
      ),
      menuSubItem("Pará", tabName = "metrop1", icon = icon("globe")),
      menuSubItem("Brasil", tabName = "metrop1", icon = icon("globe"))
      
    )
  ),
  #2.3 Criação da Pagina Inicial Dashboard                                        ----
  dashboardBody(tabItems(
    tabItem(tabName = "pareamento1"),
    tabItem(tabName = "sobre1",
            tabBox(
              id = "t1",
              width = 12,
              tabPanel(
                "Anuário Web",
                icon = icon("address-card"),
                fluidRow(
                  column(
                    width = 8,
                    position = "left",
                    tags$img(
                      src = "detran_stm.jpeg",
                      width = 720,
                      height = 450
                    ),
                    tags$br(),
                    tags$a("Photo by Asdecom"),
                    align = "left"
                  ),
                  column(
                    width = 4,
                    tags$br(),
                    tags$p(
                      style = "text-align:justify;font-si20pt",
                      strong(
                        "ANUÁRIO ESTATÍSTICO DE ÓBITO POR ACIDENTE DE TRÂNSITO DO DETRAN-PA, É UM CATÁLOGO QUE ENGLOBA DADOS SOBRE AS CARACTERÍSTICAS DAS VÍTIMAS FATAIS, CUJO RESULTADO É UM PROCESSO DE GESTÃO E INTEGRAÇÃO DE MÚLTIPLAS BASES DE DADOS, UTILIZANDO O MÉTODO PRABABILÍSTICO DE RELACIONAMENTO DE REGISTROS DESENVOLVIDO POR FELLEGI E SUNTER(1969)."
                      )
                    ),
                    tags$p(
                      style = "text-align: justify;font-si20pt",
                      strong(
                        "PARA CRIAÇÃO DO ANUÁRIO EM FORMATO WEB, FOI DESENVOLVIDO UM SCRIPT EM LINGUAGEM DE PROGRAMAÇÃO R-PROJECT VERSÃO 4.2.2 E UM AMBIENTE DE DESENVOLVIMENTO INTEGRADO(IDE) CHAMADO Rstudio VERSÃO 1.4.1.7 COM USO DE VÁRIOS PACOTES, PARA O AMBIENTE WINDOWS."
                      )
                    ),
                    tags$p(
                      style = "text-align: justify;font-si20pt",
                      strong(
                        "O ANUÁRIO FOI CONSTRUÍDO EM ALINHAMENTO AO MANUAL DE GESTÃO DO RENAEST (RESOLUÇÃO DO CONTRAN Nº808/2020), UTILIZANDO METODOLOGIA FACTÍVEIS COM ESTATÍSTICAS DE TRÂNSITO PADRONIZADA PARA TODO O TERRITÓRIO NACIONAL, E AOS OBJETIVO DE DESENVOLVIMENTOS SUSTENTÁVEIS (RESOLUÇÃO DA ONU Nº70/2015)."
                      )
                    )
                  )
                )
              )
            )),
    tabItem(tabName = "video1",
            tabBox(
              id = "t2",
              width = 12,
              tabPanel(
                "Video Institucional",
                icon = icon("video"),
                fluidRow(
                  column(
                    width = 8,
                    position = "left",
                    #tags$br("Projeto Strengthening Road Traffic Enforcement in Brazil"),
                    tags$video(
                      id = "videoID",
                      type = "video/mp4",
                      src = "video_detran.mp4",
                      width = 650,
                      height = 450,
                      controls = "controls"
                    ),
                    tags$br(),
                    tags$a("Video: by Asdecom"),
                    align = "left"
                  ),
                  column(
                    width = 4,
                    tags$br(),
                    tags$p(
                      style = "text-align:justify;font-si20pt",
                      strong(
                        "O Departamento de Trânsito do Estado do Pará obteve o Projeto “Strengthening Road Traffic Enforcement
in Brazil” aprovado e financiado pela (United Road Safety Fund), com duração de 12 meses, se constituindo
o único selecionado do Brasil, que somado as propostas de alguns outros países, formam o conjunto de projetos
nacionais administrados pelo Fundo, coordenado e supervisionados por diversas Agências e Comissões
Regionais das Nações Unidas."
                      )
                    ),
                    tags$br(),
                    tags$p(
                      style = "text-align: justify;font-si20pt",
                      strong(
                        "Concomitantemente, o Projeto Brasileiro é supervisionado pela Comissão Econômica das Nações
Unidas para América Latina e Caribe (CEPAL), coordenado e implementado pelo DETRAN-PA
em parceria com Conselho Estadual de Trânsito do Estado do Pará (CETRAN-PA), e tem como objetivo
contribuir para a redução de mortes e lesões no Trânsito através das atividades de Educação, Engenharia e
Fiscalização em nível Estadual."
                      )
                    )
                  )
                )
              )
            )),
#2.4 Criação do Body do Dashboard                                               ----
    tabItem(tabName = "base1",
            fluidRow(
              box(
                width = 12,
                title = "Data Set",
                status = "primary",
                solideHeder = TRUE,
                collapsible = TRUE,
                height = 35,
                dataTableOutput("tabela1")
              )
            )),
    tabItem(tabName = "fonte1",
            fluidRow(
              box(
                width = 12,
                title = "Fontes de Dados",
                status = "primary",
                solideHeder = TRUE,
                collapsible = TRUE,
                height = ,
                DiagrammeROutput("fonte1")
              )
            ))
  ))
)


#3.0 INTERFACE DO SERVIDOR                                                      ----
server <- function(input, output, session) {
  #3.1.1 Diagrama p/ Fontes                                                     ----
  output$fonte1 <- renderDiagrammeR({
    mermaid(
      "
graph TB
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
K-->L(ANUÁRIO WEB)
",
      width = 700
    )
  })
  
  
  #3.1 Base de Dados                                                              ----
  output$tabela1 <- renderDataTable({
    setwd("C:/Users/detra/Documents/SEMEST_UFPA_2023/SEMEST_UFPA_2023")
    Pareamento_Limpo <- read_excel("Pareamento_Limpo.xls")
    datatable(
      Pareamento_Limpo,
      plugins = 'natural',
      extensions = 'Buttons',
      options = list(
        dom = 'Blfrtip',
        buttons = c('copy', 'csv', 'excel', 'pdf', 'print'),
        engthMenu = list(c(5, 50, 100, 250, -1)),
        c(5, 50, 100, 250, "All"),
        pageLength = 5,
        autoWidth = TRUE,
        scrollX = TRUE
      ),
      rownames = FALSE,
      class = 'cell-border compact stripe hover row-border order-column dt-body-right',
      style = 'bootstrap',
      editable = 'cell',
      colnames = c(
        'Ano',
        'Gênero',
        'Idade',
        'Faixa-Etária',
        'Raça',
        'Estado Civil',
        'Escolaridade',
        'Local Obito',
        'Drogas',
        'Alcool',
        'Condição',
        'Veiculo',
        'Tipo',
        'Turno',
        'Dia',
        'Meses',
        'Rua',
        'Bairro',
        'Municipios',
        'Fatal'
      ),
      caption = 'Base de Dados sobre Vitimas Fatais por Acidentes de Trânsito-2020.'
    )
  })
  
  
  
  
  
  
  
  
  
  
}

shinyApp(ui, server)
