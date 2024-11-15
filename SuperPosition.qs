import Microsoft.Quantum.Diagnostics.*;

operation Main() : Result {
    use q = Qubit();
    Message("Initialized Qubit");
    DumpMachine(); // first dump
    Message(" ");
    H(q);
    Message("Qubit after applying H:");
    DumpMachine(); // second dump
    Message(" ");
    let randomBit = M(q);
    Message("Qubit atter the measurement:");
    DumpMachine(); // third dump
    Message(" ");
    Reset(q);
    Message("Qubit after reseting:");
    DumpMachine(); // fourth dump
    Message(" ");
    return randomBit;
}
