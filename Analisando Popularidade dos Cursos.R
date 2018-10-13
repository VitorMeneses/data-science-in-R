duracao <- rename(duracao, replace = c("user_id" = "aluno", "course_id" = "curso", "timeToFinish" = "dias"))

#criando grafico simples
plot(duracao$dias)

#Criação de histograma em jpg
jpeg("Conclusao_Cursos.jpg")

hist(duracao$dias, breaks = 20, main = "Tempo de Conclusão dos Cursos", 
ylab = "Quantidade", xlab = "Dias", ylim = c(0,2000), xlim = c(0,600), col = "green")

dev.off()

#Calculando media e media do banco duração por dias
mean(duracao$dias, na.rm = TRUE)

median(duracao$dias, na.rm = TRUE)

#Obtendo a informações de minimo, maximo, 1 quartil e 3 quartil, media e mediana e N/A's
summary(duracao$dias)

dim(duracao)[1]

3828/6366

#Manipulando os dados das tabelas

length(unique(duracao$curso))

length(unique(duracao$aluno)) 

#Criando novo BD contendo curso e dias de frequencia
 
sumario_estatistico <- aggregate(duracao$dias, list(duracao$curso), mean, na.rm = TRUE)
 
View(sumario_estatistico)

#renomeando os dados para merge de informações

sumario_estatistico <- rename(sumario_estatistico, replace = c("Group.1" = "curso"))
 
popularidade <- rename(popularidade, c("course_id"="curso", "freq"="popularidade"))
 
#merge dos bancos a partir da informação do curso

popularidade_e_duracao <- merge(sumario_estatistico, popularidade, by = 'curso')

#Grafico Simples com Modelo Linear

plot(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade)

modelo.linear <- lm(popularidade_e_duracao$popularidade~popularidade_e_duracao$dias)

#Inserindo reta ajustada para previsão de frequencia no grafico linear
abline(lm(popularidade_e_duracao$popularidade~popularidade_e_duracao$dias))


#Criando modelo não linear para analise da popularidade dos cursos
scatter.smooth(popularidade_e_duracao$dias, popularidade_e_duracao$popularidade, pch=21,
               col="blue")

#Instalando o criador de graficos profissionais
install.packages('ggplot2')

#usando a biblioteca
library(ggplot2)

#Criando o espaço do grafico com ggplot2
grafico <- ggplot(popularidade_e_duracao, aes(dias, popularidade)) 

#executando o espaço do grafico
grafico

#Inserindo as informações no grafico
grafico <- grafico + geom_point()

#Verificando a criação do grafico
grafico 

#Adicionar curva suave no grafico (geometria suave)
grafico <- grafico +geom_smooth()

#verificando a inclusão no grafico
grafico


