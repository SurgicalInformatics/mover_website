# Format in-text numbers with thousands separated by ,
library(knitr)
inline_hook = function(x) {
  if (is.numeric(x)) {
    format(x,big.mark = ",")
  } else x
}
knitr::knit_hooks$set(inline = inline_hook)

# DataTable function (HTML output only)
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