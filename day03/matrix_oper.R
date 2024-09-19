c1 <- c(1, 2)
mat1 <- matrix(c(1:4), ncol=2)
print(mat1)
result1 <- mat1 + c1
print(result1)

result2 <- mat1 + 3
print(result2)

print(mat1 + mat1)

# 행렬곱(matrix product)
# 두 행렬 중 앞의 것은 행의 요소를 들고 오고
# 뒤의 것은 열의 요소를 들고 와서
# 각 요소의 곱을 합한 결과를 해당 좌표(행,열)에
# 넣어 새로운 행렬로 만든다.
m1 <- matrix(1:4, nrow=2)
result <- m1 %*% m1
print(result)

diag1 <- diag(1:4, 4)
print(diag1 * diag1)

print(diag1)






