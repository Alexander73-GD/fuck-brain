XOR GATE
1 2 = 3
1 3 = 4
2 3 = 5
4 5 = 6



->>>>>>>>>>>-->
,
>
,
<<

 · · · · · · · · · · FIRST ITERATION · · · · · · · · · · 
 
Input Replacement ('1' 0)
> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
> {POSITION}
+ ++[ --<++]-- <-]>

Input Replacement (1 '2')
>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>> {POSITION}
+ ++[--<++]-- <-]>

NAND Operation & Storing Result (at 3rd)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>> OUTPUT :::::
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · SECOND ITERATION · · · · · · · · · ·
 
Input Replacement ('1' 2)
> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
> {POSITION}
+ ++[--<++]-- <-]>

Input Replacement (1 '3')
>>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>> {POSITION}
+ ++[--<++]-- <-]>

NAND Operation & Storing Result (at 4th)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · THIRD ITERATION · · · · · · · · · ·
 
Input Replacement ('2' 3)
>> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>> {POSITION}
+ ++[--<++]-- <-]>

Input Replacement (2 '3')
>>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>> {POSITION}
+ ++[--<++]-- <-]>

NAND Operation & Storing Result (at 5th)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · FOURTH ITERATION · · · · · · · · · ·
 
Input Replacement ('4' 5)
>>>> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
>>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>>> {POSITION}
+ ++[--<++]-- <-]>

Input Replacement (4 '5')
>>>>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>>>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>>>> {POSITION}
+ ++[--<++]-- <-]>

NAND Operation & Storing Result (at 6th)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>>>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · SHOW RESULTS · · · · · · · · · ·
 
>>>>>> {FINAL OUTPUT}
>++++++++[<++++++>-]<.
