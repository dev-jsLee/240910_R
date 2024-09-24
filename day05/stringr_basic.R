# stringr 패키지 설치
install.packages("stringr")

# stringr 패키지 임포트
library(stringr)

vec1 <- c("데이터", "분석", "수업")

# string_c(문자열들|벡터, sep=구분자, collapse=벡터구분자)
# 문자열들을 하나의 문자열로 만드는 함수다
# sep : 하나의 문자열로 만들 때,
# 각 값 사이의 구분자로 넣을 문자열 값을 넣는 매개변수이다.
# collapse : sep와 같지만, 벡터를 대상으로 할 때
# 사용하는 구분자 매개변수이다.
text <- stringr::str_c("데이터", "분석", "수업")
text <- str_c("데이터", "분석", "수업", sep=" ")
text <- str_c(vec1, c("a", "b", "c"), collapse=" ")
print(text)

# paste()
text2 <- paste("데이터", "분석", "수업", sep="")
text2 <- paste(c("데이터", "분석", "수업"),
               c("a", "b", "c")
               , collapse = " ")
print(text2)

# 차이점 정리
# str_c는 sep 기본값이 빈문자열("")이고
# paste는 sep 기본값이 공백문자(" ")이다

# str_c는 벡터를 여러 개 전달했을 때,
# 두 벡터의 요소가 번갈아가며 그 값이 연결되는 건
# paste와 같지만, 각 요소 사이의 구분자(coll-)는 적용되지 않는다.

# 반대로 paste는 각 벡터의 요소 사이에도 구분자가 적용된다.

# ==========================
# str_length(string)
# 문자열의 글자 개수를 세는 함수
# 벡터를 전달하면 각 요소의 글자수를 세서
# 벡터 형태로 반환한다.
str_len <- str_length("문자열의 길이")
class(str_len)
print(str_len)

print(str_length(vec1))

# =====================
# dplyr과 연계
df_people <- data.frame(
  Name = c("KimJeongEun", "HongGilDong", "KimCheolSu"),
  Age = c(42, 30, 24)
)

selected_name_length <- df_people %>%
  mutate(name_length <- str_length(Name)) %>%
  select(Name, name_length)
print(selected_name_length)

