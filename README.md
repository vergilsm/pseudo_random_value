# PseudoRandomValue

Development for Ruby

# Description

PseudoRandomValue is a gem for creating token with a given length.
The length of the output token is determined by the number of arrays in the multidimensional array.

Incoming array example `arr_symbols = [['a', 1, 'C', 0 ],['H', 2, 's', 'D'],['V', 3, 4, 'p']]`

When using in a real app make sure to prepare "seed arrays" by running something like this:

`arr_symbols = []`

`7.times { arr_symbols << ((0..9).to_a | ('a'..'z').to_a | ('A'..'Z').to_a).shuffle }`

### Install

```
gem install pseudo_random_value
```
or add `pseud_random_value` to your apps `Gemfile`

```
gem 'pseudo_random_value'
```

And then execute:

```
bundle install
```

## Example

Open your favorite Terminal and run these commands.

`require 'pseudo_random_value'`

`prv = PseudoRandomValue.new(arr_symbols)`

`prv.new_value(token_counter)` replace `token_counter` with `1`

when you do, you will get something like this `aH3`

License
----
MIT
