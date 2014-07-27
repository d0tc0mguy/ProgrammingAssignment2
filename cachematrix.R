## compute inverse using solve and cache it!!
makeCacheMatrix <- function(x = matrix()) {
     orig <<- x;
     inv <<-solve(orig);
     inv;
}
## Return a matrix that is the inverse of 'x' matrix
## get the inverse of the matrix if already cached or computes the inverse using solve
cacheSolve <- function(x, ...) {
     if ((is.matrix(x) & (!is.null(x)))){
          if(identical(x,orig)){
               message("Inverse Matrix:");
               return(inv);
               }
          else
           message("different from the orig!");
           new <- solve(x);
           new;
          }
     else
     message("NULL or not a matrix");
}

