NOR GATE
1 1 = 3
2 2 = 4
3 4 = 5
5 5 = 6

 · · · · · · · · · · SETUP · · · · · · · · · · 
 
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
+ ++[--<++]-- < -]>

Input Replacement (1 '1')
> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
> {POSITION}
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 3rd)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · SECOND ITERATION · · · · · · · · · ·
 
Input Replacement ('2' 2)
>> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>> {POSITION}
+ ++[--<++]-- < -]>

Input Replacement (2 '2')
>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>> {POSITION}
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 4th)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · THIRD ITERATION · · · · · · · · · ·
 
Input Replacement ('3' 2)
>>> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>> {POSITION}
+ ++[--<++]-- < -]>

Input Replacement (3 '4')
>>>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>>> {POSITION}
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 5th)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · FOURTH ITERATION · · · · · · · · · ·
 
Input Replacement ('5' 4)
>>>>> {POSITION}
[ +[-<+]- >+ ++[-->++]-- <+>
>>>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>>>> {POSITION}
+ ++[--<++]-- < -]>

Input Replacement (5 '5')
>>>>> {POSITION}
[ +[-<+]- >>+ ++[-->++]-- <+>
>>>>> {POSITION}
-] ++[--<++]-- <[ ++[-->++]--
>>>>> {POSITION}
+ ++[--<++]-- < -]>

NAND Operation & Storing Result (at 6th)
+[-<+]-> >>+<<[>[>->]] +[-<+]- >>>[ ++[-->++]--
>>>>>> {OUTPUT}
+ +[-<+]- >>>-] <[-]<[-] ++[-->++]--

 · · · · · · · · · · SHOW RESULTS · · · · · · · · · ·
 
>>>>>> {FINAL OUTPUT}
>++++++++[<++++++>-]<.
