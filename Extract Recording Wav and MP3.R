#FOAR705DigitalHumanities, Jack Mathieson, Student ID: 44686609, 10/Nov/2019
#Commands to extract a section of recording from a larger Wav. or MP3. file.

#set working directory to desired file

#setup packages
install.packages("audio")
install.packages("seewave")
install.packages("tidyverse")
install.packages("tuneR")
library(audio)
library(seewave)
library(tidyverse)
library(tuneR)

#extracting section from Wav. file
Rec.Extract1 <- readWave("filename.wave", from = 1, to = Inf, units = "seconds")
Rec.Extract1
export(Rec.Extract1)
savewav(Rec.Extract1)

#extracting from MP3. file
Rec.Extract2 <- readMP3("filename.mp3")
export(Rec.Extract2)
savewav(Rec.Extract2)
Rec.Extract2 <- readWave("Rec.Extract2.wav", from = 1, to = Inf, units = "seconds")
Rec.Extract2
export(Rec.Extract2)
savewav(Rec.Extract2)

#NOTES: 
#working directory must contain files to be extracted
#`units =` may be "seconds", "minutes" or "hours"
#the value given to `from =` must be < value given to `to =` 
#the value given to `to =` must be < full length of recording time
#`filename' file type must correspond to `read` type. E.g `readWav` corresponds to `filename.wav`, not `filename.mp3`
#`Rec.Extract1``Rec.Extract2` and `filename` are examples names. Insert desired names in place of.