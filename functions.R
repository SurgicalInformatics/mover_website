mydt =   function(df, pagelength = 20){
  DT::datatable(df,
                rownames = FALSE,
                extensions = c('Buttons'),
                filter = "top",
                options = list(
                  pageLength = pagelength,
                  autoWidth = TRUE,
                  scrollX = TRUE,
                  searchHighlight = TRUE))
}