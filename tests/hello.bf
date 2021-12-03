++++++++	Set Cell #0 to 8
[
	>++++	Add 4 to cell #1; this will always set cell #1 to 4
	[	as the cell will be cleared by the loop
		>++	Add 2 to Cell #2
		>+++	Add 3 to Cell #3
		>+++	Add 3 to Cell #4
		>+	Add 3 to Cell $5
		<<<<-	Decrement the loop counter in Cell #1
	]		Lopp until cell #1 is zero; number of iterations is 4
	>+		Add 1 to Cell #2
	>+		ADD 1 TO cELL #3
	>-		Subtract 1 from Cell #4
	>>+		Add 1 to Cell #6
	[<]		Move back to the first zero cel you find; this will
			be Cell #1 which was cleared by the previous loop

	<-		Decrement the loop Counter in Cell #0
]			Loop until Cell #0 is zero; number of iterations is 8

The result of this is:
Cell no:  0 1  2  3  4  5  6 
contents: 0 0 72 104 88 32 8
pointer:  ^

>>.			Cell #2 has value 72 which is 'H'
>---.			Subtract 3 from cell #3 to get 101 which is 'e'
+++++++..+++.		Likewise for 'llo' from Cell #3
>>.			Cell #5 is 32 for the space
<-.			Subtract 1 from Cell #4 for 87 to give 'W'
<.			Cell #3 was set to 'o' from the end of 'Hello'
+++.------.--------.	cell #3 for 'rl' and 'd'
>>+.			Add 1 to Cell #5 gives us an exclmation point
>++.			And finally a newline from cell #6
