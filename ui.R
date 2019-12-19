library(shiny)
library(caret)
library(shinyBS) 
library(shinythemes)


shinyUI(
    
    navbarPage(
        
        "DS Specialisation | Capstone Project | Next Word Prediction",
        
        theme = shinytheme("flatly"),
        
        tabPanel(
            
            "Prediction",
            
            
            pageWithSidebar(
                
                headerPanel("Next Word Text Prediction"),
                
                sidebarPanel(
                 
                     h3("This is the way!"), 
                    
                    h6(em("Simply start typing on the text field and up to 4 possible next words will automatically display below the field. Each predicted word is clickable and clicking on the desired word will add it to your phrase and predict the next word. ")),
                    
                    h6(em("Powered by:")),
                    tags$img(src='Rstudio.png', height =20, width=20),
                    
                    
                    
                ),
                mainPanel(
                    h3("I have spoken!"),
                    tags$img(src='Kuiil.png', height =150, width=100),
                    textInput("inputTxt", "Help Kuiil, the most famous Ugnaught, to complete his sentence:", width = "90%"),
                    uiOutput("words")
                    
                ))
        ),
        
        
        tabPanel(
            
            "About",
            
            p("This application predicts the next possible word in a phrase or sentence. To use it, simply type word(s) on the text field on the screen
          and up to 4 possible next words will display in buttons below the field. Click on your intended match to add it to the field."),
            p("This application was created as an project for the Capstone Course of the Coursera Data Science Specialization. We used NLP models, namely, n-grams, Markov model, and Katz's back-off model to produce the predictions.")
            
        )
    )
)
