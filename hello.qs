import Microsoft.Quantum.*;
// @EntryPoint()
// operation MeaureOneQubit(): Result {

// }

// The Q# compiler will automatically call the Main operation when the program is run.
// operation Main(): Uint {
//     //...
// } 

// imports all funcions and operations from the Microsoft.Quantum.Intrisnic
Message("Hello quantum world!");

// imports just the Message function from the Microsoft.Quantum.Intrinsic
import Microsoft.Quantum.Intrinsic.Message:
Message("Hello quantum world!");

// imports all functions and operations from Microsoft.Quantum.Intrinsic == Std.Intrinsic
import Std.Intrinsic.*;
Message("Hello quantum world!");

use q1 = Qubit(); // Allocate 1 qubit
use q5 = Qubit(5); // Allocate 5 qubits
 
// Release qubits
Reset(q1);
Reset(q5);

