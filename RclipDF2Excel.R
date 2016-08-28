clipDF2Excel <- function(x, sep = '\t', row.names = FALSE, na = '', ...) {
  
  # Check if x is a data.frame object. Coerce if not (add specific coercion methods here)
  x <- sapply(if(!any(class(x) == 'data.frame')) {x} else {as.data.frame(x)}, as.character) 
  
  # Calculate object size for printing
  x_size <- ceiling(as.numeric(object.size(x))) + 32
  cat(paste0('allocating ', x_size, ' bytes \n'))
  
  # Try to write to the clipboard. Print an error message if fails
  tryCatch(
    write.table(
      x = x,
      file = paste0('clipboard-', x_size),
      sep = sep,
      row.names = row.names
    ),
    error = function(x) {
      stop(paste0('ERROR: Clipboard allocation of ', x_size, ' bytes has failed. Try reducing number of rows/columns?'))
    }
  )
  
}
