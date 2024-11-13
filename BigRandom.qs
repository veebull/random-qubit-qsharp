import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;


operation Main() : Int {
    let max = 100;
    Message($"Sampling a random number between 0 and {max}: ");
    // Generate a random number in the 0..max range.
    return GenerateRandomNumberInRange(max);
}

operation GenerateRandomBit(): Result {
    // Allocate 1 qubit 
    use q = Qubit();

    // Set the qubit into superposition of 0 and 1 using the Hadamard gate
    H(q);

    // Measure the qubit and store the result in a classical variable
    let result = M(q);

    // Reset the qubit to the |0> state
    Reset(q);

    // Return the result of the measurement
    return result;
}

/// Generates a random number between 0 and `max`
operation GenerateRandomNumberInRange(max: Int): Int {
    // Determint the number of bits needed to represent `max` and store it
    // in the `nBits` variable. Then generate `nBits` random bits which will
    // represent the generated random number.
    mutable bits = [];
    let nBits = BitSizeI(max);
    for idxBit in 1..nBits {
        set bits += [GenerateRandomBit()];
    }
    let sample = ResultArrayAsInt(bits);

    // Return random number if it is within the requested range.
    // Generate it again if it is outside the range.
    return sample > max ? GenerateRandomNumberInRange(max) | sample;

}
