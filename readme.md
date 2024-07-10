# Minecraft Neural Network

<b>by William Yao</b>

A datapack for training and testing a neural network (MLP) entirely within Minecraft. See my [video](https://youtu.be/W2UPaf_vxqQ) on it!

This readme is a very brief overview of how to use the datapack. The pack is designed for Minecraft 1.20.6 and may not work for preceding versions.

## Initialize

To initialize a network for the first time or reset the current network, use `function nn:init`.

## Forward pass

To run a forward pass, use `function nn:model/forward_pass/run`. This will perform a forward pass and output a prediction with respect to whatever blocks are currently on the board.

The board can either be built by hand, drawn using a brush acquired with `loot give @s loot nn:brush`, or loaded using any of the dataset functions in `functions/train_dataset` or `functions/test_dataset`.

## Backward pass

To run a backward pass, use `function nn:model/backward_pass/run`. This procedure will first run a forward pass with respect to whatever is currently on the board, then compute the gradients, and update the model's parameters.

If the `batch_size` hyperparameter for the model is greater than 1, then running the backward pass typically will not update the model's parameters immediately. Instead, it will store the gradients computed for this example, and keep track of how many examples have been observed for the current batch. Once a full batch is completed according to `batch_size`, only then will the model's parameters be updated according to all of the accumulated gradients.

## Hyperparameters

All of the model's hyperparameters are stored in `function nn:scoreboard/set_hyperparameters`. If you wish to change any of these, apply the changes in this file and then run `function nn:init`.

## Training loop

To train the model for a single epoch, use `function nn:train/start_epoch`. This function essentially calls the backward pass function over the entire training dataset. It is not possible to train on only a subset of the training dataset (i.e. a fraction of an epoch), but it is perfectly fine to train for multiple epochs.

The training loop attempts to train on an example every tick, so the tick speed you observe by pressing `F3` is precisely the time spent on each example. In my experience on my hardware, this was 3-4 seconds.

## Testing loop

To test the model over the entire test set, use `function nn:test/start`. This function essentially calls the forward pass function over the entire testing dataset and keeps track of the accuracy. It is not possible to test on only a subset of the testing dataset.

As in the training loop, the testing loop performs a forward pass every tick. In my experience on my hardware, every prediction took 1.5-2 seconds.

## Modifying the dataset

The training dataset is contained in `functions/train_dataset` and the testing dataset is contained in `functions/test_dataset`. The parameters that specify the structure of these datasets (such as the number of classes, examples per class, and so on) are stored in `function nn:scoreboard/set_dataset_parameters`. If you wish to change any of these, apply the changes in this file and then run `function nn:init`.

## Other problem domains

Several functions in this datapack are somewhat hard-coded to the MNIST classification problem. For instance, the input layer is arranged in a square grid and checks for black or white concrete blocks.

However, if you were to change how the model receives input data (as well as swap out the dataset for whatever your new problem domain requires), the concepts underlying this datapack can theoretically train the model for any arbitrary regression or classification problem due to the flexibility of the implementation. It's designed to be as scalable as possible, and you'll most likely only be limited by the default set of activation functions.

That being said, I have not attempted to adapt the project to any other problem domain, and I can't guarantee it'll be as effective.

## Bugs

This was only an exploratory project, so there are probably a few bugs in the code that I have not been able to identify or squash.

## Closing remarks

Although this project was individual, I would like to thank my close friends for providing me with continuous support -- especially for the video component linked above. I would also like to thank the instruction team for CSC311 and CSC413 at the University of Toronto for providing me with the foundational knowledge necessary to implement this datapack.

## Changelog

### v1.0.0 (2024-07-10)

- First complete implementation.
