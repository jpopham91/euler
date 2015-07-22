f <- function(x){
    as.numeric(x%%3==0 || x%%5==0)
}

print(sum(Filter(f, 1:999)))
