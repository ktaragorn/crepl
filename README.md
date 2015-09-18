## Simple Crystal REPL (crepl)

Forked version of "Simple Ruby repl" to make an even simpler crystal repl :D

> Read the associated blog post for more information:
> http://jpsilvashy.com/posts/build-a-simple-ruby-repl.html  

## Installation
Install it as:
    $ gem install crystal-repl

## Usage
The whole gem is essentially a single binary, `crepl`
Thus use it as `crepl`.
The limitation of this repl is that every line you type is independant from the others. Thus if you want to run multiple lines, you should concatenate them with `;`

WRONG   
	puts 1
	puts 2

RIGHT   
	puts 1; puts 2

## Contributing
1. Fork it ( https://github.com/ktaragorn/crystal-repl/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request