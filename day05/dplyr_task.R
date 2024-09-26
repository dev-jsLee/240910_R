# dplyr 패키지 부착
library(dplyr)

df <- data.frame(
  Name = c("Kim", "Lee", "Hong", "Lee", "Kim"),
  Age = c(25, 23, 39, 44, 34),
  Gender = c(1, 2, 1, 2, 2) # 1은 남자, 2는 여자
)

df_tf <- df %>%
  filter(Name!="Kim") %>%
  mutate(added_age = Age+10) %>%
  select(Name, added_age)
print(df_tf)


# 실습1
# 나이가 30보다 크고 남자인 데이터를 필터링해보자.
# hint: filter()
gt_filter <- df %>%
  filter(Age > 30) %>%
  filter(Gender==1)
  
print(gt_filter)
  
# 실습2
# 남자이면서 나이가 30 이하인 데이터에 대해서
# 이름, 나이 열만 선택
# filter()
# select()
selected <- df %>%
  filter(Age <= 30 & Gender == 1) %>%
  select(Name, Age)
  
print(selected)

# 실습3
# 새로운 열의 이름을 Score로 만들고
# 그 값으로  70, 80, 77, 85, 92를 넣어
# 새로운 데이터프레임을 만들고
Score <- c(70, 80, 77, 85, 92)
added_df <- mutate(df, Score)
print(added_df)

# 이름을 기준으로 그룹을 묶어
# Score의 합을 새로운 열 total에 추가한
# 새로운 데이터프레임 출력

grouped_added_df <- added_df %>%
  group_by(Name) %>%
  summarise(total=mean(Score))
print(grouped_added_df)


# Age 값을 활용하여 나이대 열을 추가하고
# 나이대별로 그룹화 하여 나이대 그룹별 평균점수를 집계
grouped_age_df <- added_df %>%
  mutate(age_group=Age %/% 10 * 10) %>% # 나이대 열 추가
  group_by(age_group) %>% # 나이대 그룹으로 묶어서
  summarise(mean_score_by_age=mean(Score)) # 나이대별 평균점수 집계
print(grouped_age_df)




