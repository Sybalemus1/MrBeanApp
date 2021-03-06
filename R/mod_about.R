#' about UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_about_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      column(width = 3,
             cardProfile(
               src = "www/johan.jpg",
               title = HTML(paste(bs4Badge("Johan Aparicio", rounded = T,position = "right",  status = "success"))), 
               subtitle = HTML(paste(bs4Badge("Statistician", rounded = T,
                                              position = "right", 
                                              status = "success"),rep_br(1),
                                     "<a href='https://www.linkedin.com/in/johan-steven-aparicio-arce-b68976193/'>
                                  <img src='https://image.flaticon.com/icons/svg/174/174857.svg' alt='img' style='width:20px;height:20px;border:0;'>
                                      </a>"))
             )),
      column(width = 3,
             cardProfile(
               src = "www/salvador.png",
               title = HTML(paste(bs4Badge("Salvador Gezan", rounded = T,position = "right",  status = "success"))), 
               subtitle = HTML(paste(bs4Badge("Statistics-Genetics", rounded = T,
                                              position = "right", 
                                              status = "success"),rep_br(1),
                                     "<a href='https://www.linkedin.com/in/salvador-gezan-54768a1a/'>
                                  <img src='https://image.flaticon.com/icons/svg/174/174857.svg' alt='img' style='width:20px;height:20px;border:0;'>
                                      </a>"))
             )),
      column(width = 3,
             cardProfile(
               src = "www/Daniel.jpg",
               title = HTML(paste(bs4Badge("Daniel Ariza", rounded = T,position = "right",  status = "success"))),
               subtitle = HTML(paste(bs4Badge("Agronomist", rounded = T,
                                              position = "right", 
                                              status = "success"),rep_br(1),
                                     "<a href='https://www.linkedin.com/in/daniel-ariza-suarez/'>
                                  <img src='https://image.flaticon.com/icons/svg/174/174857.svg' alt='img' style='width:20px;height:20px;border:0;'>
                                      </a>"))
             )),
      column(width = 3,
             cardProfile(
               src = "www/Bodo2.jpg",
               title = HTML(paste(bs4Badge("Bodo Raatz", rounded = T,position = "right",  status = "success"))),
               subtitle = HTML( paste(bs4Badge( "Geneticist", rounded = T,
                                                  position = "right", 
                                                  status = "success" ),rep_br(1),
                                      "<a href='https://www.linkedin.com/in/bodo-raatz-76786584/'>
                                  <img src='https://image.flaticon.com/icons/svg/174/174857.svg' alt='img' style='width:20px;height:20px;border:0;'>
                                      </a>"))
             ))
    ),
    bs4Card(title = div(icon("jsfiddle"),"Rsession"),width = 12,
            verbatimTextOutput(ns("Rsession")) ,
            br()
    )
  )
}
    
#' about Server Function
#'
#' @noRd 
mod_about_server <- function(input, output, session){
  ns <- session$ns
  output$Rsession <-  renderPrint(
    print(sessionInfo())
  )
}
    
## To be copied in the UI
# mod_about_ui("about_ui_1")
    
## To be copied in the server
# callModule(mod_about_server, "about_ui_1")
 
