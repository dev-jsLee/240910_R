# 막대 그래프
# 주로 범주형 데이터(수치화된 데이터)의 양이 많고 적음을
# 나타낼 때 주로 쓰이는 그래프로,
# 각 항목의 양을 빠르게 파악할 수 있다.
# freq()
# 빈도(frequency: 등장 횟수) 분석을 위한 함수

# 패키지 설치
install.packages("descr")

# 패키지 부착
library(descr)

# 예제 자동차 데이터셋 로드
data("mtcars")

# 데이터 확인
head(mtcars)

class(mtcars) # data.frame

freq(mtcars$gear, plot = F) # 데이터 프레임의 한 개의 기준열을 전달

freq(mtcars$gear, plot = T, "gear 변수의 빈도 분석")





