import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;
import Microsoft.Quantum.Convert.*;
import Microsoft.Quantum.Arrays.*;

operation Main() : Int {
    use qubits = Qubit[3];
    ApplyToEach(H, qubits);
    Message("The qubit register in a uniform superposition: ");
    DumpMachine();
    mutable result = [];
    for q in qubits {
        Message(" ");
        set result += [M(q)];
        DumpMachine();
    }
    Message(" ");
    Message("Your random number is:");
    ResetAll(qubits);
    return BoolArrayAsInt(ResultArrayAsBoolArray(result));
}