Blogs <- function(x) {
        require(tm)
        #load in sample dataset
        blo_sa <- read.csv(file = "blogs_samp.csv",stringsAsFactors = FALSE)
        default <- blo_sa[blo_sa$length == 1,8]
        
        #"clean" incoming string
        low <- tolower(x)
        punct <- gsub("[[:punct:]]", "", low)
        http <- gsub("+\\d+", "", punct)
        spec <- gsub("^ *|(?<= ) | *$", "", http, perl=T)
        cblogs <- spec
        
        #split x into n1, n2, n3, and n4 length strings
        splitt <- strsplit(cblogs," ")
        len <- length(splitt[[1]])
        if(len < 3) { maxcount <- len} else { maxcount <- 3}
        
        for(i in 1:maxcount) {
                nam <- paste("n",i,"_search",sep = "")
                assign(nam,splitt[[1]][len+1-i])
        }
        
        #3gram
        if(maxcount > 2) {
                n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
                
                n3_samp <- blo_sa[blo_sa$less1gram == n3_search,]
                if(nrow(n3_samp)<1) {n3_next <- c(0,default)} else {n3_next <- n3_samp[1,7:8]}
                
        } else { n3_next <- c(0,default)}
        
        #2gram
        if(maxcount > 1) {
                n2_search <- paste(n2_search,n1_search,sep =" ")
                
                n2_samp <- blo_sa[blo_sa$less1gram == n2_search,]
                if(nrow(n2_samp)<1) {n2_next <- c(0,default)} else {n2_next <- n2_samp[1,7:8]}
                
        } else { n2_next <- c(0,default)}
        
        #OneGram
        n1_samp <- blo_sa[blo_sa$less1gram == n1_search,]
        if(nrow(n1_samp)<1) {n1_next <- c(0,default)} else {n1_next <- n1_samp[1,7:8]}
        
        if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
        if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
        
        output
}

Twitter <- function(x) {
        require(tm)
        #load in sample dataset
        twi_sa <- read.csv(file = "twitter_samp.csv",stringsAsFactors = FALSE)
        default <- twi_sa[twi_sa$length == 1,8]
        
        #"clean" incoming string
        low <- tolower(x)
        punct <- gsub("[[:punct:]]", "", low)
        http <- gsub("+\\d+", "", punct)
        spec <- gsub("^ *|(?<= ) | *$", "", http, perl=T)
        ctwit <- spec
        
        #split x into n1, n2, n3, and n4 length strings
        splitt <- strsplit(ctwit," ")
        len <- length(splitt[[1]])
        if(len < 3) { maxcount <- len} else { maxcount <- 3}
        
        for(i in 1:maxcount) {
                nam <- paste("n",i,"_search",sep = "")
                assign(nam,splitt[[1]][len+1-i])
        }
        
        #3gram
        if(maxcount > 2) {
                n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
                
                n3_samp <- twi_sa[twi_sa$less1gram == n3_search,]
                if(nrow(n3_samp)<1) {n3_next <- c(0,default)} else {n3_next <- n3_samp[1,7:8]}
                
        } else { n3_next <- c(0,default)}
        
        #2gram
        if(maxcount > 1) {
                n2_search <- paste(n2_search,n1_search,sep =" ")
                
                n2_samp <- twi_sa[twi_sa$less1gram == n2_search,]
                if(nrow(n2_samp)<1) {n2_next <- c(0,default)} else {n2_next <- n2_samp[1,7:8]}
                
        } else { n2_next <- c(0,default)}
        
        #OneGram
        n1_samp <- twi_sa[twi_sa$less1gram == n1_search,]
        if(nrow(n1_samp)<1) {n1_next <- c(0,default)} else {n1_next <- n1_samp[1,7:8]}
        
        if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
        if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
        
        output
}

News <- function(x) {
        require(tm)
        #load in sample dataset
        new_sa <- read.csv(file = "news_samp.csv",stringsAsFactors = FALSE)
        default <- new_sa[new_sa$length == 1,8]
        
        #"clean" incoming string
        low <- tolower(x)
        punct <- gsub("[[:punct:]]", "", low)
        http <- gsub("+\\d+", "", punct)
        spec <- gsub("^ *|(?<= ) | *$", "", http, perl=T)
        cnews <- spec
        
        #split x into n1, n2, n3, and n4 length strings
        splitt <- strsplit(cnews," ")
        len <- length(splitt[[1]])
        if(len < 3) { maxcount <- len} else { maxcount <- 3}
        
        for(i in 1:maxcount) {
                nam <- paste("n",i,"_search",sep = "")
                assign(nam,splitt[[1]][len+1-i])
        }
        
        #3gram
        if(maxcount > 2) {
                n3_search <- paste(n3_search,n2_search,n1_search,sep =" ")
                
                n3_samp <- new_sa[new_sa$less1gram == n3_search,]
                if(nrow(n3_samp)<1) {n3_next <- c(0,default)} else {n3_next <- n3_samp[1,7:8]}
                
        } else { n3_next <- c(0,default)}
        
        #2gram
        if(maxcount > 1) {
                n2_search <- paste(n2_search,n1_search,sep =" ")
                
                n2_samp <- new_sa[new_sa$less1gram == n2_search,]
                if(nrow(n2_samp)<1) {n2_next <- c(0,default)} else {n2_next <- n2_samp[1,7:8]}
                
        } else { n2_next <- c(0,default)}
        
        #OneGram
        n1_samp <- new_sa[new_sa$less1gram == n1_search,]
        if(nrow(n1_samp)<1) {n1_next <- c(0,default)} else {n1_next <- n1_samp[1,7:8]}
        
        if(n2_next[1] > n3_next[1]) { showdown <- n2_next} else { showdown <- n3_next }
        if(n1_next[1] > showdown[1]) { output <- n1_next} else {output <- showdown}
        
        output
}
