# 기본 내장 함수
# sum(), mean(), sqrt()

# 합: sum(벡터, 리스트,...)
numbers <- c(1:5)
total <- sum(numbers)
total

# 여러 개의 값이 들어가더라도,
# 리스트는 서로 다른 타입이 들어갈 수 있기 때문에
# 애초에 sum()함수를 사용할 수 없다.
# lists <- list(3, 7, "13", T, F)
# total <- sum(lists, na.rm = T)

# 벡터의 요소들의 총합을 구하는 함수 작성
add_nums <- function(vec) {
  result <- 0
  for(e in vec){
    result <- result + e
  }
  return(result)
}
print(add_nums(c(1, 3, 5, 7))) # 16
print(sum(c(1, 3, 5, 7)))

# 평균
# 총합 / 개수
# 개수 구하는 함수 -> length()
avg <- function(vec) {
  return(add_nums(vec) / length(vec))
}
vec <- c(5, 7, 7, 7, 7, 7, 7)
print(avg(vec))
print(mean(vec))

# rep(value, length) 함수 구현하기
# value의 값을 length만큼 반복하여 새로운 벡터를 반환
repeat_nums <- function(v, length) {
  result <- c()
  idx <- 1
  if(is.vector(v)){
    for(e in v){
      for(i in 1:length){
        result[idx] <- e
        idx <- idx +1
      }
    }
  } else {
    while(idx <= length){
      result[idx] <- v
      idx <- idx +1
    }
  }
  return(result)
}
print(repeat_nums(c(1, 2), length=10))
print(rep(c(1, 2), each=10))






