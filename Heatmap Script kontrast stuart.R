#SET WORKING DIRECTORY (USE YOUR WORKING DIRECTORY)
setwd('C:\\Users\\David\\Downloads') #change this to your working directory
install.packages("pheatmap")

# Replace "classy gene2.csv" with the name of your data file but ensure your data file is in csv format
data <- read.csv("ECOLI FULL SUBSYTEM.csv", header = TRUE, row.names = 1)


library(pheatmap)


# Define the color palette
color_palette <- colorRampPalette(c("black", "green", "red"))(50) #you can change this colors by typing the name of the one you want
#but you can leave it at black green and red for better contrast.

png("ECOLI FULL SUBSYTEM.png", width = 11000, height = 7000, res = 500) # change amr.png to
# what you want to name your heatmap with.
#you can also modify the height and width of your plot by increasing or reducing the values
pheatmap(
  data,
  cluster_rows = FALSE,
  cluster_cols = FALSE,
  color = color_palette,
  fontsize_row = 8, #increase or decrease this value to change the size of row label
  fontsize_col = 6 #increase or decrease this value to change the size of column label
)
dev.off()









