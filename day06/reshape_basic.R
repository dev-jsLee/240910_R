# reshape 패키지 설치
install.packages("reshape")
# 패키지 부착
library(reshape)

# melt()
# 넓은 데이터 프레임을 길게(위아래로) 바꿔주는 함수
# melt(data,
#   id.vars=식별자,
#   variable.name=식별자제외한열이름,
#   value.name=해당하는 값을 부를 변수명)
df <- data.frame(
  ID = 1:3,
  name = c("홍길동", "김철수", "이영희"),
  age = c(23, 17, 21)
)

# melt 적용
# 식별자는 ID로 한다.
melted_df <- melt(df,
                  id.vars = "ID",
                  variable_name = "target",
                  value_name = "value"
                  )
print(melted_df)

# cast()
# 길게 변환된 데이터를 넓게 변환하는 함수다.
# cast(data, 변환공식, 집계함수(선택), value=값데이터 변수명)
# melt된 데이터를 cast
casted_df <- cast(melted_df, ID ~ variable, value="value")

print(casted_df)
