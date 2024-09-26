# stringr 패키지 부착
library(stringr)

# 문자열 패턴 검색 함수
# 전달한 문자열과 확인하고자 하는 패턴을 전달하여
# 문자열 안에 해당되는 패턴이 존재하는지 여부를
# 논리값(logical)을 반환하는 함수다.
# 단순 문자열을 검색하는 건 대소문자를 구분한다.
text <- "Hello, world"
has <- str_detect(text, "a")
print(has)

# 문자열 대체
# 원본 문자열과 패턴, 그리고 패턴에 해당하는 문자열을
# 바꾸고자 하는 값 -> 세 개의 매개변수를 전달하면
# 원본 문자열에서 일치하는 패턴의 값을 바꾸고자하는 값으로
# 첫번째 매칭만 대체한다 -> str_replace()
# 매개변수의 구성은 같지만, str_replace_all()은
# 모든 패턴 매칭 대상에 대해서 대체를 수행한다.
text <- "Hello, world. follow me."
new_text <- str_replace(text,"llo", "110")
# 첫번째로 매칭되는 문자열에 대해서만 대체가 일어난다.
print(new_text) # "He110, world. follow me."

new_text_all <- str_replace_all(text,"llo", "110")
# 매칭되는 모든 패턴 대상에 대해서 대체가 일어난다.
print(new_text_all) # "He110, world. fo110w me."

# 문자열 추출/변경(인덱스)
# 문자열의 인덱스를 이용하여 부분 문자열을 추출하거나
# 해당 위치의 값을 변경하는 함수
# 끝값은 기본값으로 문자열의 마지막 인덱스다.
# str_sub(text, start, end)
text <- "데이터 분석 전문가"
sub <- str_sub(text, -3, -1)
print(sub)

# 특정 위치의 문자열을 변경하는 방법
# 원본 데이터 변수를 직접 수정한다.
str_sub(text, 1, 6) <- "방구석"
print(text)

# 문자열 분할
# str_split()
# 구분자를 기준으로 분할하는 함수
# 구분자는 하나의 패턴으로,
# 정규표현식으로도 표현이 가능하다.
split_v <- str_split("hello world! nice day!", " ")
# 반환되는 값의 타입은 리스트 타입으로 반환된다.
print(class(split_v))




