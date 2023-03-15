INFORMATION
[
L/R+SG (Left/Right Single Guillemet): these symbols < and >. They're the most important commands in order to edit the gate connections.

SVR (Stored Values Row): the second row of the memory in a display of 12 cells per row. This is where the first two inputs and the results of each operation will be saved.

::::: indicates where the user can edit the code depending of the operation they want to do.

The NAND part consists of the 2nd, 3rd and 4th cell, which I call A, B and C. The inputs go to A and B, the output is saved at C after the operation.

Flag: special cell used for pointer control that makes things easier, specially when combined with the following concept.

+[-<+]- and ++[-->++]-- (or ++[--<++]--) are "gliders", a simple yet incredible idea I saw in mitxela's "AI in Brainfuck" video (https://www.youtube.com/watch?v=qK0vmuQib8Y).
The first one moves the pointer to the first cell (a -1), while the second moves it just before the SVR (a -2).


EDITING INSTRUCTIONS
POS: this means that you have to write as many '>' as the position of the number in the SVR you need.
INPUT RSG|LSG: this means that you have to write ONE '>'|'<' if you're going to the FIRST input (A) or TWO'>'|'<' if you're going to the SECOND input (B).
OUTPUT: this means that you have to write as many '>' as the position of the cell where you will be storing the result of an operation.


CODE STRUCTURE
Input Replacement: starts and ends at Flag2 (-2, just before the SVR).
NAND operation & Storing Result: can start anywhere (it actually at Flag2) and ends at Flag2.


EXAMPLES
The first code shown here makes a NOR gate, following the steps below
0 0       Initial values at input cells
1 0       Intermediate step (replace one of the two values)
1 1 : 3   Last replacement and FIRST operation
2 1       Intermediate step
2 2 : 4   Last replacement and SECOND operation
3 2       Intermediate step
3 4 : 5   Last replacement and THIRD operation
5 4       Intermediate step
5 5 : 6   Last replacement and FOURTH operation

The second code shown here makes a XOR gate, following the steps below
0 0       Initial values at input cells
1 0       Intermediate step (replace one of the two values)
1 2 : 3   Last replacement and FIRST operation
1 2       Intermediate step
1 3 : 4   Last replacement and SECOND operation
2 3       Intermediate step
2 3 : 5   Last replacement and THIRD operation
4 3       Intermediate step
4 5 : 6   Last replacement and FOURTH operation

IMPORTANT: If you want to run one of the examples, you'll need to delete the other. Or you can execute both of them if you know how (it's really simple).

Note: not all logic gates need intermediate steps always, because sometimes only one replacement is required between operations.
HOWEVER, right now I haven't managed to avoid them, so you may need to replace a number by itself (like in teh XOR example). Working on this.
]

NOR GATE
->>>>>>>>>>>-->,>,<<
 · · · · · · · · · · FIRST · · · · · · · · · · 
Input Replacement ('1' 0)
> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (1 '1')
> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 3rd)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · SECOND · · · · · · · · · ·
Input Replacement ('2' 2)
>> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (2 '2')
>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 4th)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · THIRD · · · · · · · · · ·
Input Replacement ('3' 2)
>>> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (3 '4')
>>>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 5th)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · FOURTH · · · · · · · · · ·
Input Replacement ('5' 4)
>>>>> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
>>>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>>>> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (5 '5')
>>>>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>>>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>>>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 6th)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>>>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · SHOW RESULTS · · · · · · · · · ·
>>>>>> Position of final output :::::
>++++++++[<++++++>-]<.



· · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · 


XOR GATE
->>>>>>>>>>>-->,>,<<
 · · · · · · · · · · FIRST · · · · · · · · · · 
Input Replacement ('1' 0)
> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (1 '2')
>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 3rd)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · SECOND · · · · · · · · · ·
Input Replacement ('1' 2)
> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (1 '3')
>>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 4th)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · THIRD · · · · · · · · · ·
Input Replacement ('2' 3)
>> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (2 '3')
>>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 5th)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · FOURTH · · · · · · · · · ·
Input Replacement ('4' 5)
>>>> POS :::::
[+[-<+]-
> INPUT RSG ::::: 
+ ++[-->++]-- <+>
>>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>>> POS :::::
+ ++[--<++]-- < -]>

Input Replacement (4 '5')
>>>>> POS :::::
[+[-<+]-
>> INPUT RSG :::::
+ ++[-->++]-- <+>
>>>>> POS :::::
-] ++[--<++]-- <[ ++[-->++]--
>>>>> POS :::::
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 6th)
+[-<+]-> >>+<<[>[>->]] +[-<+]->>>
[++[-->++]--
>>>>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--
 · · · · · · · · · · SHOW RESULTS · · · · · · · · · ·
>>>>>> Position of final output :::::
>++++++++[<++++++>-]<.
