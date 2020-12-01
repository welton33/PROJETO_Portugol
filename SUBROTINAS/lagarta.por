
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
 * 	Este exemplo ilustra o uso das fun��es da linguagem Portugol para criar uma anima��o
 * 	no console.
 * 	
 * Autores:
 * 
 * 	Luiz Fernando Noschang
 * 	
 * Data: 05/06/2014
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro coluna_inicial = 0
		inteiro passos = 10
		
		animar(coluna_inicial, passos)
	}

	funcao animar(inteiro coluna_inicial, inteiro passos)
	{
		inteiro coluna_final = coluna_inicial + passos
		
		para (inteiro coluna = coluna_inicial; coluna < coluna_final; coluna++)
		{
			para (inteiro andando = 0; andando <= 1; andando++)
			{
				limpa()
				desenhar_lagarta(coluna, andando)
				u.aguarde(500)
			}
		}

		limpa()
		desenhar_lagarta(coluna_final, 0)
	}

	funcao desenhar_lagarta(inteiro coluna, inteiro andando)
	{
		se (andando == 0)
		{
			branco((coluna * 3) + 14)
			escreva("\\ /\n")
			branco((coluna * 3))
			escreva("( )( )( )( )( 0.0 )")
		}
		senao
		{
			branco((coluna * 3) + 7)
			escreva("( )")
			branco(4)
			escreva("\\ /\n")
			branco((coluna * 3) + 2)
			escreva("( )( ) ( )( 0.0 )")
		}

		escreva("\n")
	}

	funcao branco(inteiro quantidade)
	{
		inteiro brancos = 1
		
		enquanto (brancos <= quantidade)
		{
			escreva (" ")
			brancos++
		}
	}
}

