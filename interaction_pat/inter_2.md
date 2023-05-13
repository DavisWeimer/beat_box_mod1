Additional Methods - insert and prepend

> require "./lib/linked_list"
> require "./lib/node"

> list = LinkedList.new
> list.append("plop")
=> "plop"
> list.to_string
=> "plop"
> list.append("suu")
=> "suu"
> list.prepend("dop")
=> "dop"
> list.to_string
=> "dop plop suu"
> list.count
=> 3
> list.insert(1, "woo")
=> "woo"
list.to_string
=> "dop woo plop suu"


Additional Methods - find, pop, includes?

....
> list.to_string
=> "deep woo shi shu blop"
> list.find(2, 1)
=> "shi"
> list.find(1, 3)
=> "woo shi shu"
> list.includes?("deep")
=> true
> list.includes?("dep")
=> false
> list.pop
=> "blop"
> list.pop
=> "shu"
> list.to_string
=> "deep woo shi"