# 벡터를 생성하는 여러 함수들

# 같은 값 반복(repeat)
# rep(반복할 값, 반복 횟수)
repeat_vec1 <- rep(1, 10) # [1] 1 1 1...
print(repeat_vec1)

# 벡터를 반복
# each는 각 요소가 반복할 횟수
# 각 요소를 반복 후 모두 연결하는 방식
vec1 <- c(1, 2, 3)
repeat_vec2 <- rep(vec1, each=3) # 1 1 1 2 2 2 3 3 3
print(repeat_vec2)

# 등차 수열 생성(sequence)
# seq(start, end, step)
# start부터 end까지(포함) step만큼 증가하는
# 등차수열 벡터 생성
seq_vec1 <- seq(1, 9, by = 2) # by 등차
print(seq_vec1)

# 길이를 정해서 만드는 벡터
# 자료형을 정해야 함.
# numeric(), double(), integer(), character()
vec_int <- integer(10)
print(vec_int)

vec_dob <- double(10)
print(vec_dob)

vec_num <- numeric(20)
print(vec_num)

vec_char <- character(10)
print(vec_char)
# 길이로 만들어지는 벡터는
# 자료형에 따라 기본값이 정해지며
# 숫자형은 모두 0,
# 문자형은 빈문자열("")로 세팅된다.

# 벡터의 요소에 이름을 정하여 만들 수도 있다.
# c(요소이름=값,...)
named_vec1 <- c(math=90, kor=80, eng=70)
print(named_vec1)
print(named_vec1[1])
print(named_vec1["math"]) 

# 여러 값을 들고 올 때는, c()를 이용하여
# 원하는 값만 들고 올 수 있다.
print(named_vec1[c("math", "kor")])
print(named_vec1[c(1,3)]) # 각 요소를 들고 오는 방식
print(named_vec1[1:3]) # 인덱스 범위로 들고 오는 방식



