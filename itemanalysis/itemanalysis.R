# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Classicial Test Theory Item Analysis for Multiple Choice Test Items Use Package itemanalysis With (In) R Software
install.packages("stringi")
install.packages("SparseM")
install.packages("munsell")
install.packages("ggplot2")
install.packages("itemanalysis")
library("stringi")
library("SparseM")
library("munsell")
library("ggplot2")
library("itemanalysis")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
itemanalysis = read.csv("https://github.com/timbulwidodostp/itemanalysis/raw/main/itemanalysis/itemanalysis.csv",sep = ";")
# Estimate Classicial Test Theory Item Analysis for Multiple Choice Test Items Use Package itemanalysis With (In) R Software
# Key response vector
key <- c("A","D","C","B","C","B","C","D","A","D","C","A","D","C","A",
"B","D","B","A","C","A","A","C","B","C","B","D","A","A","A",
"C","B","B","A","B","D","D","A","D","C","D","A","B","B","C",
"D","B","C","C","B","D","A","C","B","A","D")
# Use itemanalysis1 function to run the item analysis
# In order to reduce running time for the example below,
# I specify "data=itemanalysis[,1:10]", so it only analyze the
# first 10 items.
# You should specify "data=itemanalysis" to analyze based on 56 items.
item.analysis <- itemanalysis1(data=itemanalysis[,1:10],
key=key,
options=c("A","B","C","D"),
ngroup=10,
correction=FALSE)
item.analysis$item.stat
item.analysis$dist.sel
item.analysis$dist.disc
# Classicial Test Theory Item Analysis for Multiple Choice Test Items Use Package itemanalysis With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
