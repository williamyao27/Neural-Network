# Creates a loader marker that, when triggered, will load the example of the given class with the given index.

$summon marker ~ ~ ~ {Tags:["train_loader"],data:{class:$(class),index:$(index)}}