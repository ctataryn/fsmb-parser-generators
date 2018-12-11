// Define a grammar called FSMB
grammar FSMB;
s  : NP VP ;  // for "reasons" at least one rule must be lower case, otherwise an error
NP : DET (ADJ)* N ;
VP : (V NP) | V PP ;
PP : P NP ;
DET : ('the' | 'a' | 'an') WHITESPACE*;
N  : ('dog' | 'fox') WHITESPACE*;
ADJ : ('quick' | 'brown' | 'lazy') WHITESPACE*;
V  : ('jumped' | 'runs') WHITESPACE*;
P  : ('over' | 'onto' | 'in' | 'under') WHITESPACE*;
WHITESPACE : (' ' | '\n')+ -> channel(HIDDEN);