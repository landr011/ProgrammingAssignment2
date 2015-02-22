## Below are two functions to cache and compute the inverse matrix
## Functionality is explained below:

## Start Funciton 1 to generate a special matrix which
## can cache its own inverse

## 1. Set values
makeCacheMatrix <- function(x = matrix()) {
                        set <- function (y) {
                                x <<- y
                                invmtx <<- NULL
                                            }

## 2. Get values
        get <- function() return(x)

## 2. Set the value of the inverse     
        setinv <- function(inv) invmtx <<- inv

## 3. Get the value of the inverse
        getinv <- function() return(invmtx)
        
return(list(      set = set, 
                  get = get,
                  setinv  = setinv,
                  getinv  = getinv)        

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
