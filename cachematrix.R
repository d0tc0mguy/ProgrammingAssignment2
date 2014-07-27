makeCacheMatrix <- function(x = matrix()) {
## set/get the value of the matrix and compute inverse using solve
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}

get <- function() x

setinverse <- function(solve) inv <<- solve
getinverse <- function() inv

list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)

}
 
 

## Return a matrix that is the inverse of 'x' matrix
## get the inverse of the matrix if already cached or computes the inverse using solve
cacheSolve <- function(x, ...) {

inv <- x$getinverse()

if(!is.null(inv)) {
message("getting cached data")
return(inv)
}

data <- x$get()
inv <- solve(data, ...)

x$setinverse(inv)

inv
}
