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

## 2. Get values for x
        get <- function() return(x)
## 3. Set the value of the inverse matrix    
        setinv <- function(inv) invmtx <<- inv
## 4. Get the value of the inverse
        getinv <- function() return(invmtx)
     
return(list(      set = set, 
                  get = get,
                  setinv  = setinv,
                  getinv  = getinv)        
}  ## End first function

## **************** Start 2nd Function ****************************
## This function coputes the inverse of the matrix produced by
## makeCacheMatrix (function 1)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invmtx <- x$getinv()
        
        ## If inverse matrix "invmtx" contains data, return it...
         if(!is.null(invmtx)) { 
                               message("Returning cached matrix data, invmtx")
                               return(invmtx)
                               }
        ##  Get original matrix 
            origmtx <- x$get()
        ## Invert it
            invmtx <- solve(origmtx, ...)
        ## Set inverse matrix
            x$setinv(invmtx)
           
return(invmtx)           
            
        
}
