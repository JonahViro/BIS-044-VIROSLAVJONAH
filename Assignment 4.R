decode <- city.of.st.louis.decode
survey <- city.of.st.louis.survey

survey2A <- survey[startsWith(survey$V36, 'A'),]

str(city.of.st.louis.survey)
attach(city.of.st.louis.survey)
class(survey)
class(decode)
survey <- select(survey,Owner,Land,Area)
survey$First <- substr(survey$V36,1,1)
survey$First
survey2A <- survey[which(survey$First=="A"),]
YT_Sample_validated <- merge(out2,YT_Sample_validated, by.x="id" ,by.y="id")
