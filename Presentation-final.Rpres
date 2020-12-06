The Milestone Report and Data Explartory Analysis for Text Prediction.
========================================================
author: Student
date: 12/04/2020
autosize: true

Data Cleaning and Basic summary
========================================================

For further analysis three large data set is downloaded from the following location <https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip>.  The data are:

- en_US.blogs.txt
- en_US.news.txt
- en_US.twitter.txt

The large dataset will be reduce to 10k each and becomes a corpus for the development of the algorithms after removing the following clearning processess.
- Convert uppercase letters to lowercase.
- Remove unwanted words, punctuations, numbers, whitespaces etc.

Finally, N-grams were extracted from the corpus (uni, bi, tri) and then charted.

Algorthim and Model Building
========================================================
* N-gram model with back-off strategy was used for the Natural Language Process.  

* These data were then tokenized 3 times using 1-gram to 3-gram calculations using RWeka.

* Based on the assignment instruction, the algorithm predicts the next word based on the last 3 text inputs the user entered then starts to search using the 3-gram.  If the next word isn't predicted, it selects the 2-gram, then 1-gram.  If nothing is found it falls back to a "default" of the word most often seen.

Slide With Plot
========================================================
A Shiny App with the "next word prediction model" is built with "darkly" and presented as follows.

https://abultosa.shinyapps.io/GFinale/


-After multiple tests it was determined the most efficient method to keep up with performance expectations was to create small samples of each data set and keep them separated. Allowing for the opportunity for 3 choices

-Detects words typed and predicts the most likey word from each of the three types of files within seconds.

-The methods and the 3n-grams will be adjusted once the app is fully developed.

Apps and Resources and References.
========================================================
- The total time to run the app is maximum 5 minutes.

- The total memory usage is 

- The app is running at the following link https://abultosa.shinyapps.io/GFinale/

- The resource and reference for the codes is found at the following link; https://github.com/mlouricas/DataScienceCapstone_NLP.  This github helped me greatly to grasp what the project required and I am grateful for the inspiration and guidance.  Every effort is made to adjust and fit according the student's understanding at this level of learning.

The complete data and reference is found at the following link.https://github.com/abultosa/Capstone-Project

- Code and app will be updated with any new features/improvements.

