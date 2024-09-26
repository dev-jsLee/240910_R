# 패키지 부착
library(reshape)

df <- data.frame(
  Student = c("Alice", "Bob", "Charlie"),
  Math = c(90, 80, 85),
  Science = c(95, 85, 80),
  English = c(85, 90, 88)
)

# melt
# id.vars : "Student",
# variable_name : "Subject"
# value_name : "Score"
# melted <- 데이터를 멜트해보자.
melted <- melt(df, id.vars = "Student",
               variable_name = "Subject"
               ) %>%
  mutate("Score" = value) %>%
  select(Student, Subject, Score)
print(melted)

# ==============reshape2=============
install.packages("reshape2")
library(reshape2)

melted <- melt(df, id.vars = "Student",
               variable.name = "Subject",
               value.name = "Score"
)
print(melted)

# cast() -> dcast(), acast()
# - 성능이 개선
# dcast()
# 데이터 프레임을 반환하는 cast함수이다.
# 데이터 분석 및 보기용으로 주로 사용된다.

# acst()
# 벡터, 행렬(matrix), 배열 등을 반환하는 cast함수이다.
# 수학적/프로그래밍 작업에 적합하다.









