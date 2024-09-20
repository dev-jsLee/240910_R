# 여러 개의 점수를 담은 벡터의 점수에 따라
# A부터 F까지 학점을 도출하여 새로운 벡터로 만들어라.
scores <- c(72, 85, 91, 55, 67)
scores_alpha <- c()
idx <- 1

for(score in scores) {
  scores_alpha[idx] <- if(score>=90)
    "A" else if(score>=80) "B" else if(score>=70) "C" else "F"
  idx <- idx + 1
}
print(scores_alpha)

# ==============for 실습=================
# 이중for문
# 구구단
# 2단부터 9단까지 각각 1~9의 곱을 하는
# 구구단을 출력하는 프로그램을 작성해보자.

# 출력문의 다른 형태
cat("A", "is A")

# 2 X 1 = 2
# 2 X 2 = 4
# 줄바꿈 문자 => "\n"
# 탭 문자 => "\t"
# 옵션 sep => 각 값 사이에 들어갈 구분자
# 2단만 출력해보기
dan <- 2
for(i in 1:9){
  cat(dan, "x", i, "=", dan*i, "\n")
}

# 구구단 출력
# 2단부터 9단까지 각각 1~9 곱셈
for(i in 2:9){
  cat("===",i,"단===\n", sep="")
  for(j in 1:9){
    cat(i, "x", j, "=", i*j, "\n")
  }
}














