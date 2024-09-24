# 패키지
# 내장패키지 vs 외장 패키지(설치필요)
# dplyr 설치
install.packages("dplyr")
library(dplyr)

# 예제 설치
# 뉴욕의 2013년 비행기 데이터
install.packages("nycflights13", repos="http://cran.nexr.com/")
install.packages("sqldf", repos = "http://cran.nexr.com/")

library(nycflights13)


df <- data.frame(
  Name = c("hong", "kim", "lee", "lee"),
  Age = c(20, 25, 32, 45),
  Job = c("developer", "DBA", "teacher", "doctor")
)
print(df)
# select(df, 열 이름,...)
# 데이터프레임 객체와 열 이름을 변수 이름처럼 전달하면
# (여러 개 전달 가능) -> ,를 이용하여 열 이름을 구분한다.
# 해당 열의 데이터를 선택하여 가져온다.
selected <- select(df, Job, Name)
print(selected)

# filter(df, 열 이름이 포함된 조건식)
# 전달된 데이터프레임에서, 특정 열의 값을 활용하여
# 조건식을 만족하는 행을 골라서 새로운 데이터프레임 객체를
# 만드는 함수
filtered <- filter(df, Age %% 2 == 0)
filtered <- filter(df, Name == "lee")
print(filtered)

# mutate(df, 새로운열이름 = 넣을 값)
# 새로운 열을 추가하거나 기존 열의 값을 변형할 때
# 사용하는 함수
mutated <- mutate(df, Score = c(80, 70, 67, 98))
print(mutated)


# dim(데이터객체)
# 행의 개수와 열의 개수 출력
dim(flights)

# head()
# 데이터의 상단 일부 데이터 출력
head(flights)


# summarize(통계를 위한 새로운 열이름)
# 특정 열의 값을 활용한 평균값, 합계 등을 
# 새로운 열에 표현할 때 사용하는 집계함수
# group_by(열이름)
# 특정 열을 기준으로 통계값을 표현할 때 사용하는 함수

# grouped <- df %>%
#   group_by(Name) %>%
#   summarise(Mean_Score = mean(Score))
# print(grouped)

grouped <- flights %>%
  group_by(day) %>%
  summarise(delay=mean(dep_delay, na.rm = T))

print(grouped)






