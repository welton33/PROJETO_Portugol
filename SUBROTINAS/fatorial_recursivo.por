
/* CLIQUE NO SINAL DE "+", � ESQUERDA, PARA EXIBIR A DESCRI��O DO EXEMPLO
 *  
 * Copyright (C) 2014 - UNIVALI - Universidade do Vale do Itaja�
 * 
 * Este arquivo de c�digo fonte � livre para utiliza��o, c�pia e/ou modifica��o
 * desde que este cabe�alho, contendo os direitos autorais e a descri��o do programa, 
 * seja mantido.
 * 
 * Se tiver dificuldade em compreender este exemplo, acesse as v�deoaulas do Portugol 
 * Studio para auxili�-lo:
 * 
 * https://www.youtube.com/watch?v=K02TnB3IGnQ&list=PLb9yvNDCid3jQAEbNoPHtPR0SWwmRSM-t
 * 
 * Descri��o:
 * 
 * 	Este exemplo pede ao usuario que informe um n�mero inteiro. Logo ap�s, calcula 
 * 	e exibe o fatorial do n�mero informado. 
 *
 *	Neste exemplo, o fatorial � calculado chamando recursivamente a fun��o "fatorial" definida 
 * 	no programa.
 * 	
 * 	O fatorial de um n�mero � calculado multiplicando todos os valores inteiros entre 1 e 
 * 	o pr�prio n�mero. Exemplos:
 * 	
 * 	Fatorial de 3 = 1 * 2 * 3 = 6
 * 	Fatorial de 4 = 1 * 2 * 3 * 4 = 24
 * 	Fatorial de 5 = 1 * 2 * 3 * 4 * 5 = 120
 * 	
 * 	Na matem�tica, o fatorial � representado pelo s�mbolo '!'.
 * 	Exemplo: 5!
 * 	
 * 	Para saber mais sobre o fatorial, acesse:
 * 	http://www.infoescola.com/matematica/fatorial/
 * 	
 * Autores:
 * 
 * 	Giordana Maria da Costa Valle
 * 	Carlos Alexandre Krueger
 * 	
 * Data: 01/06/2013
 */

programa
{
	funcao inicio()
	{
		inteiro numero
				
		escreva("Digite um n�mero: ")
		leia(numero)

		limpa()
		escreva("O fatorial de ", numero, " �: ", fatorial(numero), "\n") 
	}

	// Fun��o recursiva que calcula o fatorial do n�mero passado
		
	funcao inteiro fatorial(inteiro numero)
	{
		se (numero == 1 ou numero == 0)
		{
			retorne 1
		}
		
		retorne numero * fatorial(numero - 1)
	}
}

