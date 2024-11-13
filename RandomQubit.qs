
operation Main(): Result {
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