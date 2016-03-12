## x is an invertible matrix 
## returns a list which can be used as input for cacheSolve. List:
## 1: set the matrix
## 2: get the matrix
## 3: set the inverse 
## 4: get the inverse

makeCacheMatrix <- function(x = matrix()) {
      invrs <- NULL
      set <- function(y){
        x <<- y
        invrs <<- NULL
      }
        get <- function() x
   setinvrs <- function(solve) invrs <<- solve
   getinvrs <- funciton() invrs
   list(set=set, get=get, setinvrs = setinvrs, getinvrs=getinvrs)
}


## This function returns the inverse of the special matrix given by the above function and
## checks if the inverse has already been returned by the above function then it returns the inverse from above
## else it calculates the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invrs <- x$getinvrs
        if(!is.null(invrs)){
          message("getting cached data")
          return(invrs)
        }else{
          dat <- x$get
          invrs <- solve(dat,...)
          x$setinvrs(invrs)
          invrs
        }
  }
