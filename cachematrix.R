## A pair of functions that cache the inverse of a matrix.

## First function create a list of function that can cache
## the inverse of its input matrix

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y){
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get, 
             setinverse = setinverse, 
             getinverse = getinverse)
}


## The second function calculates the inverse of 
## the special "matrix" created with the first function. 
## However, it first checks to see if the inverse has 
## already been calculated. If so, it `get`s the inverse 
## from the cache and skips the computation. Otherwise, 
## it calculates the inverse of the data and sets the 
## value of the inverse in the cache via the `setinverse`
## function.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        ## Return a matrix that is the inverse of 'x'
        i
}
