library("devtools")
library("roxygen2")
library("testthat")
library("knitr")

# create .R scripts for our 2x functions - copy functions into R scripts and save
usethis::use_r("say")
usethis::use_r("phrases")

# load the functions into R using load_all()
usethis::use_pipe()
devtools::load_all()
say()

# check that our package is in full working order
devtools::check()
# Oh snap! we have 1 warning and 1 note

# lets take care of the warning first (choose a license) and the DESCRIPTION file
# edit DESCRIPTION file
usethis::use_mit_license("Sean Spence")

# check that our package is in full working order
devtools::check()
# the warning has gone, but we still have a note to address

# declare our intent to use the the pipe opporator
usethis::use_pipe()

# check that our package is in full working order
devtools::check()
# looks good!

# load the functions into R and test it!
devtools::load_all()
say()
# so cool!

# no help page for our function - lets fix that
devtools::document() # activate the conversion of the roxygen comment into a proper help
?say()

# check that our package is in full working order
devtools::check()
rm(list = c("say"))
# looks good!

# declare our intent to write unit tests and to use the testthat package
usethis::use_testthat()

# The helper use_test() opens and/or creates a test file
usethis::use_test("say")
# add tests to file

# While you can run these tests interactively, use test() instead
devtools::test()

# check that our package is in full working order
devtools::check()

# load the functions into R and test it!
devtools::load_all()
say()

devtools::document()
?say
??say
usethis::use_package("glue")

usethis::use_testthat()
usethis::use_test("say")

?say



