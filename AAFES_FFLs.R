#Setup
rm(list=ls())

setwd("/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/")
#Dataset source: ATF FFL Complete List (last updated January 2024)
#https://www.atf.gov/firearms/listing-federal-firearms-licensees/complete 
data_24 <- read.csv("/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/0124-ffl-list-complete.csv")
data_21 <- read.csv("/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/0121-ffl-list.csv")
data_18 <- read.csv("/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/0118-ffl-list.csv")
#Load packages
library(dplyr)
library(stringr)
library(openxlsx)

## Filter data for FFLs w/ LICENSE_NAME that are related to exchange services
df_24 <- data_24 %>% 
  filter(str_detect(LICENSE_NAME, "ARMY & AIR FORCE EXCHANGE SERVICE"))
aafes <- data_24 %>% 
  filter(str_detect(LICENSE_NAME, "AAFES"))
mcx <- data_24 %>% 
  filter(str_detect(LICENSE_NAME, "MARINE CORPS"))
af <- data_24 %>% 
  filter(str_detect(LICENSE_NAME, "AIR FORCE"))
cgx <- data_24 %>% 
  filter(str_detect(LICENSE_NAME, "COAST GUARD"))

#Concatenate  filtered dfs
df_24 <- rbind(df_24, aafes, mcx, af, cgx)
#Remove duplicates
df_24 <- unique(df_24)

##Writing df --> .xlsl
write.xlsx(df_24, "/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/military_exchange_ffls_0124.xlsx")

## Replicate for df_21
df_21 <- data_21 %>% 
  filter(str_detect(APP_LICENSE_NAME, "ARMY & AIR FORCE EXCHANGE SERVICE"))
aafes <- data_21 %>% 
  filter(str_detect(APP_LICENSE_NAME, "AAFES"))
mcx <- data_21 %>% 
  filter(str_detect(APP_LICENSE_NAME, "MARINE CORPS"))
af <- data_21 %>% 
  filter(str_detect(APP_LICENSE_NAME, "AIR FORCE"))
cgx <- data_21 %>% 
  filter(str_detect(APP_LICENSE_NAME, "COAST GUARD"))

#Concatenate  filtered dfs
df_21 <- rbind(df_21, aafes, mcx, af, cgx)
#Remove duplicates
df_21 <- unique(df_21)
##Writing df --> .xlsx
write.xlsx(df_21, "/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/military_exchange_ffls_0121.xlsx")

## Replicate for df_18
df_18 <- data_18 %>% 
  filter(str_detect(License.Name, "ARMY & AIR FORCE EXCHANGE SERVICE"))
aafes <- data_18 %>% 
  filter(str_detect(License.Name, "AAFES"))
mcx <- data_18 %>% 
  filter(str_detect(License.Name, "MARINE CORPS"))
af <- data_18 %>% 
  filter(str_detect(License.Name, "AIR FORCE"))
cgx <- data_18 %>% 
  filter(str_detect(License.Name, "COAST GUARD"))

#Concatenate  filtered dfs
df_18 <- rbind(df_18, aafes, mcx, af, cgx)
#Remove duplicates
df_18 <- unique(df_18)
##Writing df --> .xlsx
write.xlsx(df_18, "/Users/jasirrahman/Desktop/Career/Brady Documents/Military Exchanges/military_exchange_ffls_0118.xlsx")

