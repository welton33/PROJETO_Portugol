
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
 * 	Este exemplo ilustra o uso das fun��es da linguagem Portugol.
 * 	
 * 	Neste exemplo, foi criado um procedimento que formata uma mensagem qualquer e uma 
 * 	fun��o que realiza um c�lculo matem�tico entre dois n�meros informados.
 * 	
 * 	Para saber mais sobre o fatorial, acesse: http://www.infoescola.com/matematica/fatorial/
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
		mensagem("Bem Vindo")  // Chama o procedimento
		
	     escreva("O resultado do primeiro c�lculo �: ", calcula (3.0, 4.0))  		// Chama a fun��o no escreva		
	     escreva("\nO resultado do segundo c�lculo �: ", calcula (7.0, 2.0), "\n")  // Chama a fun��o no escreva		

	     mensagem("Tchau")  // Chama o procedimento
	}

	funcao mensagem (cadeia texto)
	{
		inteiro i
		
		// Insere uma linha antes do texto da mensagem		
		para(i = 0; i < 50; i++)
		{
		  escreva ("-")
		}
		
		escreva ("\n", texto, "\n") // escreve a mensagem
		
		// Insere uma linha ap�s do texto da mensagem
		para(i = 0; i < 50; i++)
		{
		  escreva ("-")
		}

		escreva("\n")
	}

	// Fun��o que realiza um c�lculo e retorna o resultado
	funcao real calcula (real a, real b)
	{
		real resultado
		
		resultado = a * a + b * b
		
		retorne resultado
	}
}

