# Quantum Random Number Generator

This project demonstrates the implementation of a quantum random number generator using Q# (Q-sharp). It includes two main operations: a simple random qubit generator and a scalable random number generator that can produce numbers within a specified range.

## Project Structure

- `RandomQubit.qs`: Implements a basic quantum random bit generator
- `BigRandom.qs`: Implements a quantum random number generator for arbitrary ranges

## How It Works

### Random Qubit Generation

The basic quantum random bit generator (`RandomQubit.qs`) works by:

1. Creating a quantum bit (qubit)
2. Applying a Hadamard gate (H) to put it in superposition
3. Measuring the qubit, which collapses to either 0 or 1 with equal probability
4. Resetting the qubit to its initial state
5. Returning the measurement result

### Random Number Generation

The scalable random number generator (`BigRandom.qs`) extends this concept to generate numbers in any range by:

1. Calculating the number of bits needed to represent the maximum value
2. Generating that many random bits using the quantum process
3. Converting the bits to an integer
4. If the number is within the desired range, returning it; otherwise, trying again

# usage

```qsharp
let randomBit = RandomQubit.Main();
```

To generate a random number in a range (e.g., 0 to 100):

```qsharp
let randomNumber = BigRandom.Main();
```

## Requirements

- Q# Development Kit
- .NET Core 3.1 or later

## Features

- True quantum randomness using quantum superposition
- Configurable range for random number generation
- Efficient bit-wise generation process
- Automatic range validation and regeneration

## Technical Details

The project uses fundamental quantum computing concepts:

- Quantum superposition through Hadamard gates
- Quantum measurement
- Qubit management (allocation, reset)
- Classical-quantum hybrid processing
