programa
{
	
	funcao inicio()
	{
		inteiro contador = 1, menu
		cadeia extrato = ""
		real saldo = 0.0, saque, deposito
		cadeia senha = "1234", senhaUsuario 
		cadeia sair
		
		faca{
			escreva("Digite sua senha: ")
			leia(senhaUsuario)

			se (senhaUsuario == senha){
				escreva("|---------------------- MENU ----------------------|\n")
				escreva(" Saldo ----- R$",saldo)
				escreva(" \n Digite: \n [1] para SACAR \n [2] para DEPOSITAR \n [3] para EXTRATO \n [0] para SAIR \n >>>>> ")
				leia(menu)
				escreva("|--------------------------------------------------|\n")
	
				escolha(menu){
					caso 0:
						escreva("Obrigada por usar o programa :)")
						contador = 0
					pare
							
					caso 1:
						escreva("Digite sua senha: ")
						leia(senhaUsuario)
	
						se (senhaUsuario == senha){
							escreva("Qual valor deseja sacar? ")
							leia(saque)
		
							enquanto(saque <= 0 ){
								escreva("É impossível realizar esse saque! \n")
								escreva("Qual valor deseja sacar? ")
								leia(saque)
							}

							se (saque > saldo){
								escreva("Não Autorizado!\n")
								limparTela()
							}
							
							senao{
							saldo = saldo - saque
							extrato = extrato + " Saldo >>>>> R$" + saldo + "\n"
							limparTela()}
							}
	
						senao{
							escreva("Senha INCORRETA!\n")
							limparTela()
						}
					pare
	
					caso 2:
						escreva("Digite sua senha: ")
						leia(senhaUsuario)
						
						se (senhaUsuario == senha){
							escreva("Qual valor deseja DEPOSITAR? ")
							leia(deposito)
		
							enquanto(deposito <= 0){
								escreva("É impossível realizar esse deposito! \n")
								escreva("Qual valor deseja DEPOSITAR? ")
								leia(deposito)
							}
							saldo = saldo + deposito
							extrato = extrato + " Deposito >>>>> R$" + deposito + "\n"
		
							limparTela()}
	
						senao{
							escreva("Senha INCORRETA!\n")
							limparTela()
						}
					pare
	
					caso 3:
						escreva("Digite sua senha: ")
						leia(senhaUsuario)
						
						se (senhaUsuario == senha){
							escreva(extrato)
	
							limparTela()}
						
						senao{
							escreva("Senha INCORRETA!\n")
							limparTela()
							}				
					pare
					
				}
			}

			senao{
				escreva("Senha Incorreta! \n")
				escreva("Deseja Sair (sim/ não)? ")
				leia(sair)

				se (sair == "sim" ou sair == "Sim" ou sair == "S" ou sair == "s"){
					contador = 0
				}
				limparTela()}
				
			}enquanto(contador != 0)
			
	}
	funcao limparTela(){
		cadeia tecla
		
		escreva("Aperte ENTER para continuar: ")
		leia(tecla)
		limpa()}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1118; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */