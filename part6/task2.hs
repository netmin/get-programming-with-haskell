subseq start end myList = take difference (drop start myList)
        where difference = end - start
