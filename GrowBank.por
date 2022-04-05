programa
{	
//Aluno Carlos Fernandes
	
	real saldo = 0.0, deposito, saque, taxa_saque = 2.5, transferencia, taxa_transferencia = 4.5, growcash = 500.0
	real saldo_total = saldo + growcash, diferenca_saque, diferenca_deposito, diferenca_transf
	inteiro opcao_menu
	cadeia voltar, nome_transf
		
	funcao inicio(){
	     faca{
	     	escreva("\n--------------------------------")
			escreva("\n-Seja Bem-Vindo(a) ao GrowBank -")
			escreva("\n--------------------------------")
			escreva("\n- 1 - Visualizar saldo         -")
			escreva("\n- 2 - Depósito                 -")
			escreva("\n- 3 - Saque                    -") 
			escreva("\n- 4 - Transferência            -")
			escreva("\n- 5 - Sair                     -")
			escreva("\n--------------------------------")
			escreva("\nDigite a Opção: ")
			leia(opcao_menu)
			limpa()
		
			escolha(opcao_menu){
				caso 1: verificar_saldo()
				pare
				caso 2: fazer_deposito()
				pare
				caso 3: fazer_saque()
				pare
				caso 4: fazer_transferencia()
				pare
				caso 5: escreva("GrowBank agradece a preferência!")
				pare
				caso contrario: 
				escreva("Opção inválida! Tente novamente.\n")
				inicio()
				}
			}enquanto(opcao_menu != 5)
	}

	funcao verificar_saldo(){			
		faca{
			escreva("\nAgencia 0001-1 C/C 123456-7") 
			escreva("\nSaldo:             R$" + saldo)
			escreva("\nLimite Growcash:   R$" + growcash)
			escreva("\n---------------------------")
			escreva("\nTotal:             R$" + saldo_total)
			escreva("\nVoltar ao Menu [S|N] ")
			leia(voltar)
			limpa()
			}enquanto(voltar == "N")
		inicio()
		}

	funcao fazer_deposito(){
		faca{
			escreva("Qual o valor do depósito? ")
			leia(deposito)
			limpa()
			diferenca_deposito = 0.0
			se(deposito < 0){
				escreva("\nErro: 001> Favor conferir o valor do deposito.")
				pare
			}
			se(growcash < 500){
				growcash = growcash + deposito
				se(growcash >= 500){
					diferenca_deposito = growcash - 500
					growcash = 500.0
					saldo = saldo + diferenca_deposito
				}
			}
			senao{
				saldo = saldo + deposito
			}
			saldo_total = saldo + growcash
			escreva("Depósito efetuado!")
			escreva("\n---------------------------")
			escreva("\nSaldo:             R$" + saldo)
			escreva("\nGrowcash:          R$" + growcash)
			escreva("\nTotal:             R$" + saldo_total)
			escreva("\n---------------------------")
			escreva("\nDeseja realizar outro depósito? [S|N] ")
			leia(voltar)
			limpa()		
		}enquanto (voltar == "S")
		inicio()
	}

	funcao fazer_saque(){
		faca{
			escreva("Qual o valor do saque? ")
			leia(saque)
			limpa()
			diferenca_saque = 0.0
			diferenca_saque = saldo_total - saque - taxa_saque
			se(diferenca_saque < 0){
				escreva("\nSaldo Indisponível. Tente novamente.\n")
				inicio()
				pare
			}
			saldo = saldo - saque - taxa_saque
			se(saldo < 0){
				growcash = growcash + saldo
				saldo = 0.0
			}
			saldo_total = saldo + growcash
			escreva("Saque efetuado!")
			escreva("\n---------------------------")
			escreva("\nSaldo:             R$" + saldo)
			escreva("\nGrowcash:          R$" + growcash)
			escreva("\nTotal:             R$" + saldo_total)
			escreva("\n---------------------------")
			escreva("\nDeseja realizar outro saque? [S|N] ")
			leia(voltar)
			limpa()		
		}enquanto (voltar == "S")
		inicio()
	}

	funcao fazer_transferencia(){
		faca{
			escreva("Qual o valor da transferência? ")
			leia(transferencia)
			limpa()
			escreva("Qual o número da conta para transferência? ")
			leia(nome_transf)
			limpa()
			diferenca_transf = 0.0
			diferenca_transf = saldo - transferencia - taxa_transferencia
			se(diferenca_transf < 0){
				escreva("\nSaldo Indisponível. Tente novamente.\n")
				inicio()
				pare
			}
			saldo = saldo - transferencia - taxa_transferencia
			saldo_total = saldo + growcash
			escreva("Transferência efetuada para conta número " + nome_transf + "!")
			escreva("\n---------------------------")
			escreva("\nSaldo:             R$" + saldo)
			escreva("\nGrowcash:          R$" + growcash)
			escreva("\nTotal:             R$" + saldo_total)
			escreva("\n---------------------------")
			escreva("\nDeseja realizar outra transferência? [S|N] ")
			leia(voltar)
			limpa()		
		}enquanto (voltar == "S")
		inicio()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 36; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */