## Caching the inverse of a matrix

## The following two functions can be used to cache the inverse of a matrix

## This function creates a special matric which we can then cache

makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    inv <<- NULL
            }
            get <- function() x
            setinverse <- function(inverse) inv <<- inverse
            getinverse <- function() inv
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)
    }
}


## Write a short comment describing this function

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

