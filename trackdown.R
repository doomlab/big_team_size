library(trackdown)

# upload file
trackdown::upload_file(file = "03_manuscript/manuscript.Rmd", hide_code = TRUE)

# download file
trackdown::download_file(file = "03_manuscript/manuscript.Rmd")

# update file 
trackdown::update_file(file = "03_manuscript/manuscript.Rmd", hide_code = TRUE)

# render file
trackdown::render_file(file = "03_manuscript/manuscript.Rmd")