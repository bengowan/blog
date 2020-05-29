---
title: 2 repos and git2r funs
author: ~
date: '2020-05-27'
slug: 2-repos-and-git2r-funs
categories: []
tags: []
---



Trying out these simple helper wraper funs for the 2 repo blogdown approach. 

```
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
  
  add(repo, "-A")
  
  commit(repo, message = m)
  
  push(repo)
  
  
}

```