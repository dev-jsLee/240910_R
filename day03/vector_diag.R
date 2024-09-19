# 대각 행렬
# 대각 행렬이란, 행 인덱스와 열 인덱스가 동일한 요소를
# 가리키는 행렬로, diag(값, 길이) 함수를 이용하여
# 대각 행렬을 만들 수 있다.
# 또한, 대각 행렬을 diag(대각행렬객체)와 같이
# 전달함으로써, 대각행렬을 추출할 수 있다.
diag_m <- diag(1, 5)
print(diag_m)

# 전달하는 값을 벡터로 설정할 수 있으며
# 그 벡터의 길이가 대각행렬의 길이보다 짧다면
# 벡터의 요소를 첫요소부터 다시 반복하여
# 그 길이가 될 만큼 채워넣는다.
diag_m2 <- diag(c(1, 3, 5), 15)
print(diag_m2)
print(diag(diag_m2))


# 행렬/벡터의 결합
# 열(column) 단위 결합
# cbind(벡터1, 벡터2)
# 결합을 통한 결과로 새로운 매트릭스가 생성된다.
math <- c(90, 80, 75)
kor <- c(80, 80, 90)
eng <- c(70, 80, 85)
scores <- cbind(math, kor, eng)
print(scores)

print(scores[,"math"])

# cbind를 통해 만들어지는 행렬은
# 전달된 벡터의 변수명을 헤더로 하여
# 행렬이 설정된다.

# 때문에, 변수 없이 직접 값을 넣으면
# 헤더는 설정되지 않는다.
scores_2 <- cbind(
  c(1, 2, 3), 
  c(4, 5, 6), 
  c(7, 8, 9)
  )
print(scores_2)


# 행(row) 단위 결합
# rbind()를 이용하여 여러 벡터를 각 행마다 배치할 수 있다.
hong <- c(80, 80, 85)
kim <- c(90, 95, 90)
lee <- c(70, 80, 65)

scores_by_name <- rbind(hong, kim, lee)
print(scores_by_name)





