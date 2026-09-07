programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T

	cadeia global_gen
	cadeia nome
	inteiro r
	inteiro escolha1, escolha2, escolha3

	cadeia raca[9] = {"Anao", "Elfo", "Orc", "Draconato", "Reptiliano", "Fada", "Lobisomem", "Nefilin", "Harpia"}

	funcao escLen(cadeia texto)
	{
		inteiro numCarac = T.numero_caracteres(texto)
		caracter letra

		para(inteiro i = 0; i < numCarac; i++)
		{
			letra = T.obter_caracter(texto, i)

			escreva(letra)

			U.aguarde(1)
		}
	}
	
	funcao defineGene()
	{
		escLen("Olá, jogador!\n")
		escLen("Informe seu genero, por favor (ele/dele, ela/dela, elx/delx): ")
		leia(global_gen)

		limpa()
	}

	// SORTEIO DA RAÇA

	funcao inteiro rac()
	{
		escLen("Para o seu grandissimo azar, voce nao pode escolher a sua raça! Ela sera sorteada.\n")

		r = sorteia(0, 8)

		escLen("E a sua raça e...\n")

		escreva(raca[r], "!")

		escLen("\nParabens!\n")

		limpa()

		retorne r
	}

	// ESCOLHA DO NOME

	funcao cadeia nom()
	{
		escLen("Entao, pequeno gafanhoto, como deveria chama-lo?\n")
		leia(nome)

		escreva("Entendi, ", nome, "\n")

		limpa()

		retorne nome
	}

	// INÍCIO DO JOGO

	funcao inicio()
	{
		// Criação do personagem
		defineGene()
		nom()
		rac()

		// INTRODUÇÃO

		escLen("Som de televisão antiga")
		limpa()

		escLen("Apresentadora:")
		escLen("\n— Boa noite, cidadãos gloriosos de Tártaro!")
		limpa()

		escLen("O som de aplausos toma conta da transmissão.")
		limpa()

		escLen("Apresentadora:")
		escLen("\n— Hoje é um dia especial!")
		escLen("\n— Pois hoje começa mais uma edição da nossa querida Limpeza Trienal!")
		limpa()

		escLen("Fogos de artifício podem ser ouvidos ao fundo.")
		limpa()

		escLen("Apresentadora:")
		escLen("\n— Sete dias de coragem!")
		escLen("\n— Sete dias de emoção!")
		escLen("\n— Sete dias para descobrirmos quem será o último sobrevivente!")
		limpa()

		escLen(".......")
		limpa()

		escLen("Apresentadora:")
		escLen("\n— Para vocês não humanos, temos que agradecer.")
		escLen("\n— Amamos o seu espetáculo.")
		escLen("\n— Adoramos os seus gritos, o seu sofrimento.")
		escLen("\n— Amamos ver suas vidas sendo tiradas.")
		escLen("\n— Amamos ver suas vidas sendo tiradas pouco a pouco enquanto pensam no pedaço de merda que são.")
		limpa()

		escLen("Volta ao normal")
		limpa()

		escLen("Apresentadora:")
		escLen("\n— E agora junto com esse clima de festa, vamos falar do tempo, senhoras e senhores.")
		limpa()

		escLen(".......")
		limpa()

		// CELA

		escLen("Você acorda no chão frio de uma cela.")
		escLen("\nSua cabeça dói.")
		escLen("\nSeu corpo dói.")
		escLen("\nVocê não sabe quanto tempo ficou inconsciente.")
		escLen("\nDo outro lado da cela, separados por uma parede de tijolos está Onix.")
		limpa()

		escLen(".......")
		limpa()

		escLen("ONIX:")
		escLen("\n— Finalmente.")
		limpa()

		escLen("Você tenta se levantar.")
		limpa()

		// Nome do personagem
		escreva(nome, ":")
		escLen("\n— Quanto tempo?")
		limpa()

		escLen("ONIX:")
		escLen("\n— Não sei, mas você tá desmaiando desde a surra de manhã.")
		escLen("\n— Mas ouvi os guardas....")
		escLen("\n— É hoje.")
		limpa()

		escLen("Você não teve nem tempo para pensar, antes de escutar um som.")
		limpa()

		escLen("Clack")
		limpa()

		escLen("As portas começam a destravar.")
		escLen("Uma voz surge pelos alto-falantes.")
		limpa()

		escLen("Apresentadora:")
		escLen("\n— Participantes, preparem-se para contagem regressiva.")
		limpa()

		escLen("ONIX:")
		escLen("\n— Quando abrirem a porta, não pense.")
		limpa()

		escLen("Apresentadora:")
		escLen("\n3")
		limpa()

		escLen("ONIX:")
		escLen("\n— Não lute.")
		limpa()

		escLen("Apresentadora:")
		escLen("\n2")
		limpa()

		escLen("ONIX:")
		escLen("\n— Só corre.")
		limpa()

		escLen("Apresentadora:")
		escLen("\n1")
		limpa()

		escolhas()

		escLen("\nVocê e Onix correm durante um tempo.")
		escLen("\nCada vez mais para dentro da floresta.")
		limpa()
		
		escLen("\nAs árvores parecem altas demais.")
		escLen("\nO ar é pesado.")
		escLen("\nVocê olha para trás.")
		escLen("\nNenhum caçador.")
		escLen("\nAinda.")
		limpa()
		
		escLen("\nEm um determinado ponto voces encontram duas trilhas.")
		escLen("\nUma segue por uma região aberta.")
		escLen("\nA outra desaparece entre uma área extremamente fechada da mata.")
		limpa()

		escLen("ONIX:")
		escLen("\n— Precisamos escolher.")
		limpa()

		escolhas2()
		escLen("A cada passo, a floresta parece se fechar um pouco mais ao redor de vocês.")
		escLen("\nOs galhos baixos arranham seus braços enquanto vocês passam,")
		escLen("\nenquanto as folhas secas estalam sob seus pés, denunciando cada movimento.")
		limpa()
		
		escLen("Então, Onix para.")
		escLen("\n ONIX:")
		escLen("\n— Mais devagar.")
		limpa()

		escLen(nom, " :")
		escLen("\n— O quê?")
		limpa()
		
		escLen("A garota não responde imediatamente.")
		escLen("\nPermanece imóvel, olhando para a mata ao redor.")
		escLen("\nVocê acompanha seu olhar.")
		limpa()

		escLen("Você não percebe nada.")
		escLen("\nNão há nada.")
		limpa()
		
		escLen("Não há pássaros cantando entre as árvores.")
		escLen("\nNenhum inseto.")
		escLen("\nNenhum som de folhas sendo movimentadas pelo vento.")
		escLen("\nA floresta, que antes parecia viva, agora parece estar prendendo a respiração.")
		limpa()

		escLen("ONIX:")
		escLen("\n— Você ouviu?")
		limpa()

		escLen("Você franze a testa.")
		escLen("\nDo que ele estava falando? Você não ouviu nada")
		escLen(nom, " :")
		escLen("\n— Ouvi o quê? Não ouvi nada.")
		limpa()

		escLen("ONIX:")
		escLen("\n— Exatamente. Está quieto demais.?")
		escLen("\n— E isso não é bom...")
		limpa()

		escLen("O silêncio se estende por mais alguns segundos,")
		escLen("\nNenhum inseto.")
		escLen("\ne então a terra começa a tremer aos poucos.")
		limpa()
		
		escLen("É quase imperceptível no começo,")
		escLen("\nmas logo você percebe que não é um tremor comum,")
		escLen("\nsão passos de algo maior, talvez até...")
		escLen("\nAncião.")
		limpa()
		

		
	}

	funcao escolhas(){
		
		// Escolha 1
		escLen("ESCOLHAS")
	escLen("\n")
	escLen("A) Correr imediatamente. Digite 1")
	escLen("\n")
	escLen("B) Esperar e observar os arredores. Digite 2")
	escLen("\n\n")
	escLen("Escolha: ")
	leia(escolha1)

	limpa()

	se(escolha1 == 1)
	{
	
	// RESPOSTA A — CORRETA

	escLen("No momento em que as portas se abrem, o caos se instaura.")
	limpa()

	escLen("Você corre junto de Onix.")
	escLen("\nCentenas de não humanos tentam escapar ao mesmo tempo, empurrando, tropeçando e derrubando uns aos outros em uma tentativa desesperada de sobreviver.")
	limpa()

	escLen("Por enquanto, ninguém está atrás de vocês.")
	escLen("\nVocês atravessam o portão e correm o mais rápido que conseguem.")
	limpa()

	escLen("Os gritos ficam para trás.")
	escLen("\nA floresta surge à frente.")
	limpa()

	escLen("Você e Onix entram entre as árvores antes que os primeiros caçadores consigam alcançar vocês.")
	limpa()

	}
		senao se(escolha1 == 2)
	{

	// RESPOSTA B — ERRADA

	escLen("Quando a porta se abre, você hesita.")
	escLen("\nPor alguns segundos, simplesmente observa.")
	limpa()

	escLen("A visão diante de você é horrível.")
	limpa()

	escLen("Não humanos correm desesperados enquanto são perseguidos pelos caçadores.")
	escLen("\nAlguns são derrubados.")
	escLen("\nOutros tentam lutar.")
	limpa()

	escLen("E, atrás deles, os ricos assistem àquilo como se fosse apenas mais uma forma de entretenimento.")
	limpa()

	escLen("Você finalmente tenta reagir.")
	escLen("\nTarde demais.")
	limpa()

	escLen("Uma flecha atravessa seu peito.")
	limpa()

	escLen("Seu corpo cai para trás.")
	escLen("\nA visão escurece.")
	limpa()

	escLen("FIM DE JOGO.")
	limpa()

	escLen("NARRADOR:")
	escLen("\n— Na Caçada, hesitar também é uma escolha.")
	}
	senao
	{
	escLen("Escolha inválida.")
	escLen("\nVocê precisa escolher A ou B. \n")
	escolhas()
	}
		
	}

	funcao escolhas2(){

		// Escolha 2
		escLen("ESCOLHAS")
	escLen("\n")
	escLen("A) Seguir pela área aberta. Digite 1")
	escLen("\n")
	escLen("B) Entrar na mata fechada. Digite 2")
	escLen("\n\n")
	escLen("Escolha: ")
	leia(escolha2)
	limpa()

	se(escolha2 == 1)
	{
	
	// RESPOSTA A — ERRADA

	escLen("Você segue pela área aberta.")
	limpa()

	escLen("Por alguns minutos, nada acontece.")
	escLen("\nEntão você percebe.")
	limpa()

	escLen("Aquela área não parece natural.")
	escLen("\nO terreno foi preparado..")
	limpa()

	escLen("Vocês entraram em uma zona de observação.")
	escLen("\nUma pequena câmera se movimenta entre as árvores.")
	limpa()

	escLen("Vocês foram detectados.")
	escLen("Tigres foram soltos.")
	escLen("Nao ah como fugir...")
	limpa()
	}

	senao se(escolha2 == 2)
	{

	// RESPOSTA B — CERTA

	escLen("Você e Onix entram na mata fechada.")
	limpa()
	
	escLen("As árvores se tornam cada vez mais próximas.")
	escLen("\nAs árvores se tornam cada vez mais próximas.")
	escLen("\nGalhos e folhas dificultam a passagem.")
	escLen("\nMas também dificultam a visão.")
	limpa()
	
	escLen("\nPor enquanto, vocês estão fora do alcance dos caçadores.")
	limpa()
	}
	
	senao
	{
	escLen("Escolha inválida.")
	escLen("\nVocê precisa escolher A ou B. \n")
	escolhas2()
	}
		}


}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1114; 
 * @DOBRAMENTO-CODIGO = [275, 359];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */