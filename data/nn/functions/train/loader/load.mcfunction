# Loads the example of the given class with the given index onto the board.
# Then removes the calling loader.

$execute positioned 0 0 0 run function nn:dataset/$(class)/build_$(index)
kill @s