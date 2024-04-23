# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Classicial Test Theory Item Analysis for Multiple Choice Test Items Use Package itemanalysis With (In) R Software
install.packages("readxl")
install.packages("httr")
install.packages("itemanalysis")
library("httr")
library("readxl")
library("itemanalysis")
# Import Data Excel Into R From Github Olah Data Semarang (timbulwidodostp)
github_link <- "https://github.com/timbulwidodostp/itemanalysis/raw/main/itemanalysis/itemanalysis.xlsx"
temp_file <- tempfile(fileext = ".xlsx")
req <- GET(github_link, 
# authenticate using GITHUB_PAT
authenticate(Sys.getenv("GITHUB_PAT"), ""),
# write result to disk
write_disk(path = temp_file))
itemanalysis <- readxl::read_excel(temp_file)
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