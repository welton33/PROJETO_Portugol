
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
 * 	Este exemplo ilustra a passagem de par�metros para uma fun��o. O exemplo
 * 	demonstra tanto a passagem de par�metro por valor, quanto a passagem de 
 * 	par�metro por refer�ncia.
 * 	
 * 	Quando um par�metro � passado por valor, o seu valor � copiado para dentro  
 * 	da fun��o. Desta forma, se a fun��o altera o valor do par�metro, o valor s�
 * 	� alterado dentro da fun��o, mas � mantido o valor original fora dela.
 * 	
 * 	Por outro lado, quando um par�metro � passado por refer�ncia, qualquer altera��o  
 * 	dentro da fun��o � imediatamente refletida na vari�vel fora da fun��o. Isto porque,
 * 	na verdade, o que a fun��o recebe n�o � uma c�pia do valor contido na vari�vel, mas 
 * 	sim, uma refer�ncia (um atalho) para a vari�vel original. No Portugol, a passagem de
 * 	par�metro por refer�ncia � representada pelo operador '&'.
 * 	
 * 	Caso n�o compreenda estes conceitos, experimente depurar o programa e visualizar
 * 	como o valor das vari�veis s�o alterados na �rvore estrutural � esquerda. Se ainda
 * 	assim tiver dificuldades, pe�a a ajuda de um professor ou algu�m experiente em 
 * 	programa��o.
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
	inclua biblioteca Util --> util
	
	funcao inicio()
	{
		inteiro vet = 0 // Declara uma vari�vel
		
		preenche (vet)
		
		escreva("Variavel antes:\n")
		exibe (vet)

		escreva("\n\nVariavel ap�s:\n")		
		exibe (vet)

		escreva("\n")
	}

	// Preenche a variavel com um n�mero aleat�rio. Neste caso, a varivavel �
	// passada por refer�ncia
	funcao preenche (inteiro &v) 
	{
		v = util.sorteia (1, 100)
	}

	// Exibe o valor contido na variavel. Neste caso, a variavel � 
	// passada por valor
	funcao exibe (inteiro v) 
	{
			escreva (v, " ")

			// O valor � alterado dentro da fun��o, mas fora da fun��o
			// o valor permanece o mesmo, pois a variavel foi passada por valor
			v = 5
	}
}

