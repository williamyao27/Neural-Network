# Loads the example of the given class with the given index onto the board. On use, the calling loader is removed.

$execute positioned 0 0 0 run function nn:test_dataset/$(class)/build_$(index)
kill @s