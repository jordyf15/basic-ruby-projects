# Basic-ruby-projects
A series of mini project for The Odin Project's Full Stack Ruby on Rails path Ruby Programming section where we have to build 4 small program to solve the given problems.

## Installation and usage
Below are instruction to install and use the 4 small programs. The ones marked with # are comments so don't put them to the terminal.
```
    git clone https://github.com/jordyf15/basic-ruby-projects.git
    # go to the directory
    cd basic-ruby-projects

    # to run the caesar_cipher
    ruby caesar_cipher.rb

    # to run the substrings
    ruby substrings.rb

    # to run the stock picker
    ruby stock_picker.rb
    
    # to run the bubble sort
    ruby bubble_sort.rb
```

## Given Problems
Below are the 4 given problems that need to be solved:
### Caesar Cipher
For this problem we have to implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.
```
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```

### Substrings
For this problem we have to implement a method #substrings that takes a word as the first argument and then an array of valid substrings (the dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
```
  > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  > substrings("below", dictionary)
  => { "below" => 1, "low" => 1 }
```
The method must also be able to handle multiple words
```
> substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
```

### Stock Picker
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
```
  > stock_picker([17,3,6,9,15,8,6,1,10])
  => [1,4]  # for a profit of $15 - $3 == $12
```

### Bubble Sort
Build a method #bubble_sort that takes an array and returns a sorted array. It must use the bubble sort methodology
```
> bubble_sort([4,3,78,2,0,2])
=> [0,2,2,3,4,78]
```