# Function to read files based on extension
read_file <- function(filename) {
  switch(filename,
    "J_WEx6.11.RData" = read_jw_6_11(),
    "J_WEx5.9.Rdata" = read_jw_5_9(),
    .read_file_ext(filename)
  )
}

.read_file_ext <- function(filename) {
  file_extension <- tools::file_ext(filename) |> tolower()

  if (file_extension == "csv") {
    return(as_tibble(read_csv(file.path("_data_raw", filename))))
  } else if (file_extension == "txt" || file_extension == "dat") {
    return(as_tibble(read_delim(file.path("_data_raw", filename), delim = "\t")))
  } else if (file_extension == "RData") {
    load(file.path("_data_raw", filename))
    return(get(ls()[1]))
  }
}


read_jw_6_11 <- function() {
  path_to_file <- projr::projr_path_get("data-raw", "J_WEx6.11.RData")
  env_tmp <- new.env()
  load(path_to_file, envir = env_tmp)
  tbl_init <- lapply(
    ls(envir = env_tmp), function(x) get(x, envir = env_tmp)
  ) |>
    dplyr::bind_cols() |>
    tibble::as_tibble()
  colnames(tbl_init) <- paste0("V", seq_len(ncol(tbl_init)))
  tbl_init
}

read_jw_5_9 <- function() {
  path_to_file <- projr::projr_path_get("data-raw", "J_WEx5.9.Rdata")
  env_tmp <- new.env()
  load(path_to_file, envir = env_tmp)
  tbl_init <- lapply(
    ls(envir = env_tmp), function(x) get(x, envir = env_tmp)
  ) |>
    dplyr::bind_cols() |>
    tibble::as_tibble()
  colnames(tbl_init) <- paste0("V", seq_len(ncol(tbl_init)))
  tbl_init
}
