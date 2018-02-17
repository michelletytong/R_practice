library(ggplot2)
library(gapminder)
gapminder

## ggplot operates on layer system like photoshop - the first layer (global layer, applies to all the layers) says what data, and what the axis are, the second tells you what geom we want
ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) + geom_point() #Creates a gap that puts GDP/Capita on the x-axis and Life Exp on the y-axis

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp,by=country,color=continent)) + geom_point()

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,color=continent))

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country,color=continent)) + 
  geom_line() + geom_point()

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country)) + 
  geom_line(aes(color=continent)) + geom_point()

ggplot(data=gapminder,aes(x=year,y=lifeExp,by=country)) + 
  geom_line(aes(colour="red")) + geom_point()

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) + 
  geom_point(aes(colour=continent),alpha=.5)

ggplot(data=gapminder,aes(x=gdpPercap,y=lifeExp)) + 
  geom_point(aes(colour=continent),alpha=.5) + scale_x_log10() +
  geom_smooth(method="lm", size=0.5, level = 0.95)

starts.with <- substr(gapminder$country,start=1,stop=1)
starts.with


az.countries <- gapminder[starts.with %in% c("A","Z"),]
az.countries

ggplot(data=az.countries,aes(x=year,y=lifeExp,color=continent)) + 
  geom_line() + facet_wrap(~ continent) + 
  xlab("Year") + ylab("Life Expectancy (Yr)") +
  ggtitle("Figure 1") + scale_colour_discrete(name="Continent")
