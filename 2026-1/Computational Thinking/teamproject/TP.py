import pandas as pd
import json

# 1. JSON 파일 불러오기
with open("rotten_tomatoes.json", "r", encoding="utf-8") as f:
    data = json.load(f)

# 2. 표 형태로 변환
df = pd.DataFrame(data)

# 3. 전체 데이터 개수 확인
print("Total rows:", len(df))

# 4. 평론가/대중 평점 결측치 확인
print("\nMissing values in scores:")
print(df[["critics_score", "audience_score"]].isnull().sum())

# 5. 평론가 평점과 대중 평점이 둘 다 있는 데이터만 남기기
df_clean = df.dropna(subset=["critics_score", "audience_score"])

print("\nRows after removing missing score values:")
print(len(df_clean))

# 6. 필요한 컬럼만 남기기
df_clean = df_clean[["title", "year", "genres", "critics_score", "audience_score"]]

# 7. CSV 파일로 저장
df_clean.to_csv("movie_ratings_cleaned.csv", index=False, encoding="utf-8-sig")

print("\nSaved: movie_ratings_cleaned.csv")