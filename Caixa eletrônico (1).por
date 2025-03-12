programa {
  funcao inicio() {

    real saldo = 150.00
    inteiro senha = 3589
    cadeia nome

    funcao entrar(){
    escreva("Inforne a senha: ")
    leia(senha)
    se(senha !=3589){
    escreva("Senha incorreta.")
    entrar()
    }
    }

  funcao inicio(){

		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Olá ", nome," é um prazer ter você por aqui!")
    comeco()
  }
	funcao comeco() {

		inteiro opcao 
		
		escreva("\nEscolha uma opção:\n")
		escreva("1. Ver saldo\n")
		escreva("2. Ver extrato\n")
		escreva("3. Fazer saque\n")
		escreva("4. Fazer depósito\n")
    escreva("5. Fazer transferência\n")
    escreva("6. Sair\n")
		leia(opcao)

		escreva("A opção selecionada foi: " +opcao + "\n")

    escolha(opcao){

      caso 1:
      verSaldo()
      pare
      caso 2:
      verextrato()
      pare
      caso 3:
      fazerSaque()
      pare
      caso 4:
      fazerDeposito()
      pare
      caso 5:
      fazertransferencia()
      pare
      caso 6:
      sair()
      pare
      caso contrario:
      escreva("Opção inválida") 
      comeco()
    }

	}
  funcao fazertransferencia(){
    entrar()

    real transferencia, numero_conta

    escreva("Escreva número da conta: ")
    leia(numero_conta)
    escreva("Qual o valor da transferência? ")
    leia(transferencia)

    se(transferencia <= 0){
    escreva("Operação não autorizada")
    fazertransferencia()
    }senao se (transferencia > saldo){
    escreva("Operação não autorizada")
    fazertransferencia()
    }senao{
      saldo = saldo - transferencia
      verSaldo()
    }

  }

   funcao verextrato(){
    entrar()
    escreva("Compra fone de ouvido = 80,00\n")
    escreva("Compra shopee quadro decorativo = 19,90\n")
    escreva("Deposito = 10,00\n")
    comeco()
   }


	funcao verSaldo(){
      entrar()
	    escreva("Seu saldo atual é: ", saldo, "\n")
	    comeco()
	}
	
	funcao fazerDeposito() {
    entrar()

		real deposito
		
		escreva("Qual o valor para depósito? ")
		leia(deposito)
		
		se (deposito <= 0){
			escreva("Operação não autorizada.\n")
			fazerDeposito()
    } senao {
			saldo = saldo + deposito
			verSaldo()
		}
	}
	
	funcao fazerSaque(){
    entrar()
	
		real saque
	
		escreva("Qual o valor para saque? ")
		leia(saque)
	
		se (saque <= 0){
	    escreva("Operação não autorizada.\n")
	    fazerSaque()
		}senao se(saque > saldo){
      escreva("Operação não autorizada\n")
      fazerSaque()
    } senao {
			saldo = saldo - saque
			verSaldo()
		}
	}

	funcao erro() {
		escreva("Opção Inválida, Informe um número de 1 a 6")
		comeco()
	}

	funcao sair(){
		escreva(nome, " foi um prazer ter você por aqui!")
	}
}
    
  }
}
