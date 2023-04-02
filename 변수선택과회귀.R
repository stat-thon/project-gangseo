setwd('C:/T/08 repository/project-gangseo/data')

data = read.csv('3차완료.csv')
head(data)

df = subset(data, select = -target)
df = subset(df, select = -crosswalk_id)
colnames(df)

fit = lm(accident ~ ., data = df)
summary(fit)

step(fit, direction = 'both')

fit1 = lm(accident ~ intersection + trafficlight + school +
            illegal_parking + cctv + traffic_sign +
            subway_pop + bus_pop + cafe_100, data = df)
summary(fit1)
