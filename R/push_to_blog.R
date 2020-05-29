library(blogdown)
library(git2r)


copy_to_blog <- function(){
  
  
  file.copy(
    from = file.path("public", list.files("public")),
    to = "bengowan.github.io",
    overwrite = TRUE, 
    recursive = TRUE,
  )
  
}


push_to_blog <- function(m){
  
  repo <- repository("bengowan.github.io")
  
  config(repo, 
         user.name="bengowan", 
         user.email="benjamin.gowan@gmail.com")
  
  add(repo, "*")
  
  status(repo)
  
  commit(repo, message = m)
  
  push(repo)
  
  
}




