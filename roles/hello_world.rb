name "hello_world"
description "A hello world web page"

run_list "recipe[apt]", "recipe[hello_world]"
