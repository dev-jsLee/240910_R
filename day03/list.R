# 리스트(list) 자료구조
# 벡터와 다르게, 여러 타입의 데이터를 담을 수 있는
# 유연한 데이터 구조다.
# list()
hong <- list(
  name = "hong",
  age = 30,
  scores = c(80, 75, 90)
)

print(hong)
print(hong$name) # "hong"
print(hong$scores) # 80 75 90
print(hong$scores[1]) # 80
print(hong$name<-"kim")
hong$city <- "서울"
print(hong)

