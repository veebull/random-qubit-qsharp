import Microsoft.Quantum.Diagnostics.*;
import Microsoft.Quantum.Math.*;

operation Main() : Result {
    use q = Qubit();
    let P = 0.333333; // P is 1/3
    Ry(2.0 * ArcCos(Sqrt(P)), q);
    Message("The qubit is in the desired state");
    Message("");
    DumpMachine(); //  dump the state of  the qubit
    Message("");
    Message("Your skewed random bit is: ");
    let skewedRandomBit = M(q);
    Reset(q);
    return skewedRandomBit;

}