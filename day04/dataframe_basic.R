# 데이터프레임(data frame)
# 서로 다른 타입의 값들이 들어갈 수 있는
# 2차원의 테이블(시트)로, 각 열은 하나의 벡터로 이루어져 있다.
# 이러한 각 열은 모두 길이가 같아야 한다.
# -> 추가되는 행은 모든 열에 대한 값(빈값이라도)을 가지고 있어야 한다.
names <- c("kim", "lee", "park")
gender <- c("m", "f", "f")
ages <- c(20, 35, 56)

# df <- data.frame(name=names,gender=gender,age=ages)
df <- data.frame(names,gender,ages)
print(df)
summary(df)



