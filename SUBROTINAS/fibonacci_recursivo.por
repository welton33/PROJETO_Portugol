
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
 * 	Este exemplo pede ao usuario que informe um n�mero inteiro. Logo ap�s, calcula e
 * 	exibe todos os n�meros da sequ�ncia de Fibonacci at� a posi��o informada pelo usu�rio.
 * 	
 * 	Neste exemplo, os n�meros da sequ�ncia de Fibonacci s�o calculados chamando recursivamente
 * 	a fun��o "fibonacci" definida no programa.
 * 	
 * 	A sequ�ncia de Fibonacci � uma sequ�ncia num�rica especial, na qual cada elemento da sequ�ncia 
 * 	� calculado somando os dois elementos anteriores.
 * 	
 * 	Para saber mais sobre a sequ�ncia de Fibonacci, acesse: 
 * 	http://www.infoescola.com/matematica/sequencia-de-fibonacci/
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
		 
		escreva("Quantos elementos da sequ�ncia de Fibonacci deseja calcular? ")
		leia(numero)

		// O la�o de repeti��o percorre todos os valores de 1 at� a posi��o informada,
		// calculando o elemento correspondente na sequ�ncia
		
		para (inteiro i = 1; i <= numero ; i++)
		{
			escreva(fibonacci(i), " ")  // Calcula e exibe o n�mero da sequ�ncia na posi��o atual
		}

		escreva("\n")
	}

	// Fun��o recursiva que calcula o en�simo valor da sequ�ncia de Fibonnaci.
	// Exemplo: caso seja passado 3 por parametro a fun��o ir� retornar 2, ou seja, o terceiro valor da sequencia de Fibonacci
	
	funcao inteiro fibonacci(inteiro posicao)
	{		
		se (posicao == 1)
		{
			retorne 0
		}
		senao se (posicao == 2)
		{
			retorne 1
		}

		retorne fibonacci(posicao - 1) + fibonacci(posicao - 2)		
	}
}

