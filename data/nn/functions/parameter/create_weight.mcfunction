# Initializes the weight from the neuron with the given index in the given layer to the neuron with the given index in the preceding layer.

$execute store result score .$(layer)_$(to)_$(from) weight run random value -$(initialization_range)..$(initialization_range)