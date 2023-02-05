#load the ggplo2 package
library(ggplot2)

# reading the data
gg <- read.table(file = "/Users/vaidehipc/Desktop/Data visualization- ggplot2/sle_b_cell 3.txt",header = T, row.names = 1)

#dimenstion of the data
dim(gg)

#Plot the second SLE patient sample versus the first normal control samples in an xy scatterplot
ggplot(gg,aes(x=sle.2, y=control.1)) + xlab("SLE") +ylab("Normal") +geom_point() + ggtitle("SLE sample vs normal control sample")

#Plot only first 20 probeset
ggplot(gg[1:20,],aes(x=sle.2,y=control.1)) + xlab("SLE") +
  ylab("Normal")+ geom_point(color = " blue",shape = 15) +theme(panel.grid =element_line(linetype = "solid")) +ggtitle("SLE sample vs control sample - 20 probeset")

#plot the following gene in a gene profile plot, IGLJ3 (immunoglobulin lambda joing with probeset of 211881_x_at

IGLG3<-as.numeric(gg["211881_x_at",]) # subset the gene 
plot(x = range(1:26), y = range(IGLG3),type = "n",xlab = "Samples",ylab = "211881_x_at Intensity",main = "Gene profile plot of IGJL3 gene with probeset 211881_x_at values across all samples") + lines(x = IGLG3, lwd = 2) + points(x = IGLG3,pch = 16,col = c(rep(" red", 17), rep(" blue", 9))
) + points(x = IGLG3,pch = 12,col = c(rep(" red", 17), rep(" blue", 9)))


