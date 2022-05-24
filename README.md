# The Odin Project
## Caesar Cipher

This repo contains my implementation of the Caesar Cipher as described in The Odin Project.

The documentation says to: 

  ```Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string```
  
and gives this example:
```ruby
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```

So it seems I need to take a string and shift each character over by the shift factor.

## caesar.rb

I decided to split the functionality into two methods, the first caesar_cipher to handle splitting the string into characters and converting to byte
then each byte is passed to a shift_char method that returns the same char if the value is not a-z or A-Z, If a character is between a-z or A-Z it will remove the minimum byte (65 or 97) then add the shift and mod 26 it to calculate if it loops around the alphabet and finally add the initial removed mimimum byte (65 or 97) and convert back character e.g. ```'a' '5' => 'a' => 65 - 65 = 0 + 5 = 5 % 26 = 5 + 65 = 70 => 'f'```

[source](https://www.theodinproject.com/lessons/ruby-caesar-cipher)
