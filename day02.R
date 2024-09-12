# 비교 연산자
# 값과 값을 비교하여 그 결과가 논리값이 나오는 연산자
# ==
# 두 값이 같니?
num1 <- 3
num2 <- 5
print(num1 == num2) # num1의 값과 num2의 값이 같니?

# !=
print(num1 != num2) # num1의 값과 num2의 값이 다르니?

# <, >
# 두 값의 크기를 비교하는 연산자(포함x)
print(num1 > num2) # num1의 값이 num2의 값보다 크니?

# <=, >=
# 두 값의 크기를 비교하는 연산자(포함o)
print(5 >= 5)

# 논리 연산자
bool1 <- TRUE
bool2 <- FALSE

# &
# 비교하는 두 값이 모두 참(TRUE)이면 전체 결과가 참
# 하나라도 거짓(FALSE)이면 전체 결과가 거짓
print(bool1 & bool2)
print(TRUE & TRUE & FALSE) # FALSE

# | -> shift + \ (엔터 위에 있습니다.)
# 비교하는 두 값 중 하나라도 참이면 전체 결과가 참
# 모두 거짓이어야 전체 결과가 거짓
print(TRUE | FALSE) # TRUE

# ! not
# 논리값의 반전
print(!TRUE) # FALSE
print(!FALSE) # TRUE

# 연산자의 우선순위
# 수 vs 수 -> 수
# 수 vs 수 -> 논
# 논 vs 논 -> 논
print((3 > 5) | (3+5) > 5)

# print("a" + "b")
# 문자열은 산술연산 불가

# 형변환
# 한 자료형에서 다른 자료형으로 바뀌는 것
# 논리형인 TRUE와 FALSE는 숫자형으로 표현될 때
# 각각 TRUE는 1, FALSE는 0으로 표현된다.

# 논리형과 숫자형이 연산되면 논리형이 숫자형으로 바뀐다.
print(FALSE + TRUE) # 1
print(TRUE + 0) # 1
print(FALSE + 0) # 0
print(TRUE * 5) # 5
