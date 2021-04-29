require(knitr)

# muda defaults de kable
kable <- function(
  x,
  format = "latex",
  digits = 2,
  row.names = NA,
  col.names = NA,
  align = NULL,
  caption = NULL,
  label = NULL,
  format.args = list(
    # scientific=T,
    # nsmall = 2,
    decimal.mark = ",", 
    big.mark = "."
  ),
  escape = TRUE,
  booktabs = TRUE,
  ...
) {

  args <- list(
    x,
    {if(!interactive() & knitr::is_latex_output()) format = format},
    digits = digits,
    row.names = row.names,
    col.names = col.names,
    align = align,
    caption = caption,
    label = label,
    format.args = format.args,
    escape = escape,
    booktabs = TRUE,
    ...
  )
  
  args <- args[!duplicated(names(args))]
  
  kableExtra::kable_styling(do.call(knitr::kable, args), 
                            latex_options = "HOLD_position")
}