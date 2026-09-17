programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T

	cadeia global_gen
	const inteiro velo = 90

	inteiro tem_comida = 0
	inteiro t
	inteiro v
	inteiro r
	cadeia nome

	inteiro escolha1, escolha2, escolha3, escolha4, escolha5, escolha6, escolha7, escolha8

	cadeia raca[9] = {
		"Anao",
		"Elfo",
		"Orc",
		"Draconato",
		"Reptiliano",
		"Fada",
		"Lobisomem",
		"Nefilin",
		"Harpia"
	}


	// Texto lento

	funcao escLen(cadeia texto)
	{
		inteiro numCarac = T.numero_caracteres(texto)
		caracter letra

		para(inteiro i = 0; i < numCarac; i++)
		{
			letra = T.obter_caracter(texto, i)

			escreva(letra)

			U.aguarde(velo)
		}
	}


	//Personagem

	funcao defineGene()
	{
		escLen("Olá, jogador!\n")
		escLen("Informe seu gênero, por favor (ele/dele, ela/dela, elx/delx): ")
		leia(global_gen)

		limpa()
	}


	funcao cadeia nom()
	{
		escLen("Então, pequeno gafanhoto, como deveria chamá-lo?\n")
		leia(nome)

		escreva("Entendi, ", nome, "\n")

		limpa()

		retorne nome
	}

	// Raça
	
	funcao inteiro rac()
	{
		escLen("Para o seu grandíssimo azar, você não pode escolher a sua raça! Ela será sorteada.\n")

		r = sorteia(0, 8)

		escLen("E a sua raça é...\n")

		escreva(raca[r], "!")

		U.aguarde(1000)

		escLen("\nParabéns!\n")

		limpa()

		retorne r
	}


	//comida
	
	funcao inteiro d3()
	{
		retorne sorteia(1, 3)
	}


	funcao comida()
	{
		escLen("\nVocê pega a caixa na mão e abre, e ela contém...\n")

		v = d3()

		se(v == 1)
		{
			escLen("\nONIX:")
			escLen("\n— Carne de porco? Sério?")

			escreva("\n", nome, ": ")
			escLen("\nBom, é melhor do que nada.")

			limpa()
		}

		senao se(v == 2)
		{
			escLen("\nONIX:")
			escLen("\n— Frango? Ok, eu acho.")

			escreva("\n", nome, ": ")
			escLen("\nAcho que essas coxas de frango vão sustentar a gente por um tempo.")

			limpa()
		}

		senao
		{
			escLen("\nONIX:")
			escLen("\n— Sardinhas! Eu gosto de peixe.")

			escreva("\n", nome, ": ")
			escLen("\nÉ, é uma lata bem grande de sardinhas.")

			limpa()
		}

		escolhas6()
	}


	//início

	funcao inicio()
	{
		// Criação do personagem
		defineGene()
		nom()
		rac()


		// INTRODUÇÃO

		escLen("Som de televisão antiga\n")

		escreva("\n ___________ \n")
		escreva("|  .----.  o| \n")
		escreva("| |      | o| \n")
		escreva("| |      | o| \n")
		escreva("|__`----`___| \n")
		escreva(" ´         ` \n")

		U.aguarde(1000)
		limpa()


		escLen("Apresentadora:")
		escLen("\n— Boa noite, cidadãos gloriosos de Tártaro!")

		limpa()

		escLen("O som de aplausos toma conta da transmissão.\n")

		escreva(" \n         _.-/`) \n")
		escreva("        // / / ) \n")
		escreva("     .=// / / / ) \n")
		escreva("    //`/ / / / / \n")
		escreva("   // /     ` / \n")
		escreva("  ||         / \n")
		escreva("   \\\\       / \n")
		escreva("    ))    .' \n")
		escreva("    //    / \n")
		escreva("         / \n")

		U.aguarde(1000)
		limpa()


		escLen("Apresentadora:")
		escLen("\n— Hoje é um dia especial!")
		escLen("\n— Pois hoje começa mais uma edição da nossa querida Limpeza Trienal!")

		limpa()

		escLen("Fogos de artifício podem ser ouvidos ao fundo.\n")

		escreva("\n                                   .''.\n")
		escreva("       .''.      .        *''*    :_\\/_:     .  \n")
		escreva("      :_\\/_:   _\\(/_  .:.*_\\/_*   : /\\ :  .'.:.'. \n")
		escreva("  .''.: /\\ :   ./)\\   ':'* /\\ * :  '..'.  -=:o:=- \n")
		escreva(" :_\\/_:'.:::.    ' *''*    * '.\\'/.' _\\(/_'.':'.' \n")
		escreva(" : /\\ : :::::     *_\\/_*     -= o =-  /)\\    '  * \n")
		escreva("  '..'  ':::'     * /\\ *     .'/.\\'.   ' \n")
		escreva("      *            *..*         : \n")
		escreva("       * \n")
		escreva("        * \n")

		U.aguarde(1000)
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
		escLen("\n— E agora, junto com esse clima de festa, vamos falar do tempo, senhoras e senhores.")

		escreva("\n      ;   :   ; \n")
		escreva("   .   \\_,!,_/   , \n")
		escreva("    `.,´     `.,' \n")
		escreva("     /         \\ \n")
		escreva("~ -- :         : -- ~ \n")
		escreva("     \\         / \n")
		escreva("    ,'´._   _.'`. \n")
		escreva("   ´   / `¡´ \\   ` \n")
		escreva("      ;   :   ;   \n")

		U.aguarde(1000)
		limpa()


		escLen(".......")
		limpa()

		// CELA

		escLen("Você acorda no chão frio de uma cela.")
		escLen("\nSua cabeça dói.")
		escLen("\nSeu corpo dói.")
		escLen("\nVocê não sabe quanto tempo ficou inconsciente.")
		escLen("\nDo outro lado da cela, separados por uma parede de tijolos, está Onix.")

		limpa()

		escLen(".......")
		limpa()

		escLen("ONIX:")
		escLen("\n— Finalmente.")

		limpa()

		escLen("Você tenta se levantar.")
		limpa()

		escreva(nome, ":")
		escLen("\n— Quanto tempo?")

		limpa()

		escLen("ONIX:")
		escLen("\n— Não sei, mas você tá desmaiando desde a surra de manhã.")
		escLen("\n— Mas ouvi os guardas...")
		escLen("\n— É hoje.")

		limpa()

		escLen("Você não teve nem tempo para pensar, antes de escutar um som.")

		limpa()

		escLen("Clack")

		escreva("\n  ooo,    .---. \n")
		escreva(" o`  o   /    |\\________________ \n")
		escreva("o`   'oooo()  | ________   _   _) \n")
		escreva("`oo   o` \\    |/        | | | | \n")
		escreva("  `ooo'   `---'         \"-\" |_| \n")

		U.aguarde(1000)
		limpa()


		escLen("As portas começam a destravar.")
		escLen("\nUma voz surge pelos alto-falantes.")

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

		escreva("\n	     * * \n")
		escreva("           *    *  * \n")
		escreva("      *  *    *     *  * \n")
		escreva("     *     *    *  *    * \n")
		escreva(" * *   *    *    *    *   * \n")
		escreva(" *     *  *    * * .#  *   * \n")
		escreva(" *   *     * #.  .# *   * \n")
		escreva("  *     \"#.  #: #\" * *    * \n")
		escreva(" *   * * \"#. ##\"       * \n")
		escreva("   *       \"### \n")
		escreva("             \"## \n")
		escreva("              ##. \n")
		escreva("              .##: \n")
		escreva("              :### \n")
		escreva("              ;### \n")
		escreva("            ,####. \n")
		escreva("/\\/\\/\\/\\/\\/.######.\\/\\/\\/\\/\\ \n")

		U.aguarde(1000)


		escLen("\nAs árvores parecem altas demais.")
		escLen("\nO ar é pesado.")
		escLen("\nVocê olha para trás.")
		escLen("\nNenhum caçador.")
		escLen("\nAinda.")

		limpa()

		escLen("\nEm um determinado ponto vocês encontram duas trilhas.")
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
		escLen("\nONIX:")
		escLen("\n— Mais devagar.")

		limpa()

		escreva(nome, ":")
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

		escreva(nome, ":")
		escLen("\n— Ouvi o quê? Não ouvi nada.")

		limpa()

		escLen("ONIX:")
		escLen("\n— Exatamente. Está quieto demais.")
		escLen("\n— E isso não é bom...")

		limpa()

		escLen("O silêncio se estende por mais alguns segundos.")
		escLen("\nNenhum inseto.")
		escLen("\nE então a terra começa a tremer aos poucos.")

		limpa()

		escLen("É quase imperceptível no começo,")
		escLen("\nmas logo você percebe que não é um tremor comum.")
		escLen("\nSão passos de algo maior, talvez até...")
		escLen("\nAncião.")

		limpa()

		escolhas3()


		escLen("\nDepois de adotarem Bolota, você e Onix continuam andando pela floresta que se estende à frente de vocês, com Onix uma vez ou outra arrancando um galho de alguma árvore e jogando para Bolota ir buscar.")
		escLen("\nTudo está pacífico... até demais. Porém, os pássaros estão cantando, e as flores ainda estão desabrochando.")
		escLen("\nEntão, talvez esteja tudo bem.")
		escLen("\nTalvez.")

		limpa()

		escLen("\nONIX:")
		escLen("\n— Ok, pelo menos está um silêncio agradável.")
		escLen("\n— Espero que nada aconte-")

		escLen("\nEla nem termina sua frase quando Bolota começa a latir.")

		escLen("\nÀ frente do animal, há uma faixa de terra suspeitosamente elevada.")

		escreva("\n", nome, ":")
		escLen("\n— Espero que não seja um corpo ou algo assim.")

		escLen("\nONIX:")
		escLen("\n— Quer descobrir cavando ou jogando pedra?")

		escLen("\nEla disse, já pegando uma pedra de tamanho médio.")

		limpa()

		escolhas5()


		escLen("\nVocês andam pela floresta, completamente em paz.")
		escLen("\nBolota caminha animadamente na frente de você e Onix, às vezes perseguindo um inseto no chão.")

		escLen("\nONIX:")
		escLen("\n— Nossa, que paz. Parece até milagre.")

		escLen("\nMal ela terminou de pronunciar essa frase, vocês ouvem passos. Pesados. Fortes.")

		escLen("\nAntes que qualquer ação possa ser realizada, a fonte desses sons aparece.")

		escLen("\nUm grifo aparece, com passos pesados e cansados.")
		escLen("\nUma grifa, especificamente. Sua barriga está inchada.")

		escLen("\nONIX:")
		escLen("\n— Ah... ela tá grávida.")

		escLen("\nO que vocês farão?")

		limpa()

		escolhas7()

    escLen("\nA PRESENÇA")

    escLen("\nA floresta permanece quieta.")
    escLen("\nNão completamente.")

    escLen("\nHá o som das folhas se movendo, o vento passando entre os galhos e a respiração cansada de vocês.")

    escLen("\nMas existe algo diferente.")

    escLen("\nBolota percebe primeiro.")

    escLen("\nO cachorro para de andar.")
    escLen("\nSeu corpo fica rígido.")

    escLen("\nONIX:")
    escLen("\n— Bolota?")

    escLen("\nEle não responde.")
    escLen("\nApenas olha para a mata.")

    escLen("\nVocê acompanha seu olhar.")

    escLen("\nEntre as árvores, não há nada.")
    escLen("\nApenas troncos escuros e uma névoa fina que se arrasta próxima ao chão.")

    escLen("\nEntão, um galho se quebra.")

    escLen("\nCRAC.")

    escLen("\nOnix segura seu braço.")

    escLen("\nONIX:")
    escLen("\n— Tem alguém aí.")

    escLen("\nVocê não responde.")

    escLen("\nO som vem novamente.")
    escLen("\nDessa vez, mais próximo.")

    escLen("\nCRAC.")

    escLen("\nBolota começa a rosnar.")

    escreva("\n", nome, ": ")
    escLen("\n— Quieto.")

    escLen("\nO cachorro permanece ao seu lado.")

    escLen("\nVocê sente a mão de Onix apertar seu braço.")
    escLen("\nEla está assustada.")
    escLen("\nNão é difícil perceber.")
    escLen("\nMas tenta esconder.")

    escLen("\nEntão uma voz surge entre as árvores.")

    escLen("\n??? :")
    escLen("\n— Olha só o que temos aqui, dois monstros... ou melhor, dois pedaços de merda.")

    escLen("\nOnix se vira imediatamente.")
    escLen("\nVocê também.")

    escLen("\nUm garoto aparece entre os troncos.")

    escLen("\nEle parece ter aproximadamente a sua idade.")
    escLen("\nTalvez um pouco mais velho.")

    escLen("\nUsa roupas escuras, botas de caça e uma capa que parece ter sido feita para se misturar à floresta.")

    escLen("\nEm uma das mãos, segura um arco.")
    escLen("\nNa outra, uma flecha.")

    escLen("\nO cabelo está levemente bagunçado, provavelmente por causa da caminhada.")

    escLen("\nSeu rosto parece tranquilo.")
    escLen("\nQuase cansado.")

    escLen("\nEle olha para vocês.")
    escLen("\nDepois para Bolota.")

    escLen("\n??? :")
    escLen("\n— Ah.")

    escLen("\nUm sorriso pequeno surge em seu rosto.")

    escLen("\n??? :")
    escLen("\n— Vocês pegaram um cachorro.")

    escLen("\nOnix dá um passo para frente.")

    escLen("\nONIX:")
    escLen("\n— Quem é você?")

    escLen("\nO garoto olha para ela.")

    escLen("\n??? :")
    escLen("\n— Richard.")

    escLen("\nEle espera.")
    escLen("\nComo se fosse óbvio que vocês deveriam saber mais alguma coisa.")

    escLen("\nRICHARD:")
    escLen("\n— Richard Miller.")

    escLen("\nVocê não responde.")

    escLen("\nSeu olhar permanece no arco.")
    escLen("\nNa flecha.")
    escLen("\nNas mãos dele.")

    escLen("\nRichard percebe.")

    escLen("\nRICHARD:")
    escLen("\n— Relaxa. Se eu quisesse atirar, já teria feito.")

    escLen("\nOnix olha para você.")
    escLen("\nDepois volta a encarar Richard.")

    escLen("\nONIX:")
    escLen("\n— Isso era pra me tranquilizar?")

    escLen("\nRichard dá de ombros.")

    escLen("\nRICHARD:")
    escLen("\n— Não sei. Funcionou?")

    escLen("\nVocê permanece em silêncio.")

    escLen("\nEle observa seu rosto por alguns segundos.")

    escLen("\nRICHARD:")
    escLen("\n— Você é o mais quieto dos dois?")

    escreva("\n", nome, ": ")
    escLen("\n— Depende.")

    escLen("\nRICHARD:")
    escLen("\n— De quê?")

    escreva("\n", nome, ": ")
    escLen("\n— Da pessoa.")

    escLen("\nRichard sorri.")
    escLen("\nDessa vez, um pouco mais.")

    escLen("\nRICHARD:")
    escLen("\n— Entendi.")

    escLen("\nEle olha novamente para Onix.")

    escLen("\nRICHARD:")
    escLen("\n— E você é a que fala mais.")

    escLen("\nONIX:")
    escLen("\n— E você é o mais irritante.")

    escLen("\nRichard inclina levemente a cabeça.")

    escLen("\nPor um instante, o sorriso desaparece.")
    escLen("\nMas retorna logo depois.")

    escLen("\nRICHARD:")
    escLen("\n— É um hábito.")

    escLen("\nEle dá mais um passo.")

    escLen("\nOnix imediatamente recua.")

    escLen("\nRichard percebe.")

    escLen("\nSeu olhar desce para o movimento dos pés dela.")
    escLen("\nDepois sobe novamente.")

    escLen("\nRICHARD:")
    escLen("\n— Vocês estão fugindo há quanto tempo?")

    escLen("\nNinguém responde.")

    escLen("\nRICHARD:")
    escLen("\n— Desde a abertura?")

    escLen("\nOnix continua olhando para ele.")

    escLen("\nONIX:")
    escLen("\n— Você também está participando?")

    escLen("\nRichard olha para o próprio braço.")

    escLen("\nA marca dos participantes está visível.")

    escLen("\nRICHARD:")
    escLen("\n— Parece que sim.")

    escLen("\nONIX:")
    escLen("\n— Então por que você não está correndo?")

    escLen("\nRichard olha ao redor.")

    escLen("\nA floresta.")
    escLen("\nAs árvores.")
    escLen("\nA trilha.")

    escLen("\nDepois volta a olhar para vocês.")

    escLen("\nRICHARD:")
    escLen("\n— Porque eu não preciso.")

    escLen("\nO silêncio que vem depois parece mais pesado.")

    escLen("\nVocê olha para a mata atrás dele.")

    escLen("\nNenhum movimento.")
    escLen("\nNenhuma outra pessoa.")

    escLen("\nApenas Richard.")
    escLen("\nE o arco.")

    escLen("\nEle percebe que você está procurando uma rota.")

    escLen("\nRICHARD:")
    escLen("\n— Não adianta.")

    escreva("\n", nome, ": ")
    escLen("\n— O quê?")

    escLen("\nRICHARD:")
    escLen("\n— Procurar por onde sair.")

    escLen("\nEle aponta com a cabeça para a trilha.")

    escLen("\nRICHARD:")
    escLen("\n— Essa região é cercada por câmeras e armadilhas.")

    escLen("\nRICHARD:")
    escLen("\n— Se vocês continuarem seguindo por ali, vão acabar voltando para uma área aberta.")

    escLen("\nOnix estreita os olhos.")

    escLen("\nONIX:")
    escLen("\n— E você sabe disso como?")

    escLen("\nRichard sorri.")

    escLen("\nRICHARD:")
    escLen("\n— Porque conheço o jogo.")

    escLen("\nEle parece satisfeito com a resposta.")

    escLen("\nMas não é exatamente orgulho.")
    escLen("\nÉ algo mais próximo de diversão.")

    escLen("\nComo se gostasse de ver vocês tentando descobrir o que ele já sabe.")

    escLen("\nRICHARD:")
    escLen("\n— Vocês tiveram sorte de chegar até aqui.")

    escLen("\nONIX:")
    escLen("\n— E você veio dar parabéns?")

    escLen("\nRICHARD:")
    escLen("\n— Não.")

    escLen("\nEle olha para Bolota.")

    escLen("\nRICHARD:")
    escLen("\n— Só achei curioso.")

    escLen("\nO cachorro permanece rosnando baixo.")

    escLen("\nRichard se agacha um pouco, tentando ficar na altura dele.")

    escLen("\nRICHARD:")
    escLen("\n— Ele não gosta de mim.")

    escLen("\nONIX:")
    escLen("\n— Ele tem bom senso.")

    escLen("\nRichard solta uma risada curta.")

    escLen("\nDessa vez, parece verdadeira.")

    escLen("\nRICHARD:")
    escLen("\n— Você sempre responde assim?")

    escLen("\nONIX:")
    escLen("\n— Só quando a pessoa merece.")

    escLen("\nO sorriso dele diminui.")

    escLen("\nNão desaparece completamente.")
    escLen("\nMas fica preso no canto da boca.")

    escLen("\nRichard se levanta.")

    escLen("\nRICHARD:")
    escLen("\n— Vocês sabem o que acontece quando a noite chega?")

    escLen("\nOnix permanece imóvel.")

    escLen("\nONIX:")
    escLen("\n— Não.")

    escLen("\nRICHARD:")
    escLen("\n— A maioria dos caçadores volta para as áreas de descanso.")

    escLen("\nEle olha para a mata.")

    escLen("\nRICHARD:")
    escLen("\n— Mas alguns ficam.")

    escreva("\n", nome, ": ")
    escLen("\n— Você é um deles?")

    escLen("\nRichard olha para você.")

    escLen("\nRICHARD:")
    escLen("\n— Sou.")

    escLen("\nONIX:")
    escLen("\n— Então por que está conversando?")

    escLen("\nRichard dá de ombros.")

    escLen("\nRICHARD:")
    escLen("\n— Porque posso.")

    escLen("\nONIX:")
    escLen("\n— Isso não responde.")

    escLen("\nRICHARD:")
    escLen("\n— Responde o suficiente.")

    escLen("\nEle olha para você.")

    escLen("\nPor alguns segundos, nenhum dos dois fala.")

    escLen("\nO vento passa entre as árvores.")
    escLen("\nA capa de Richard se move levemente.")

    escLen("\nRICHARD:")
    escLen("\n— Eu poderia matar vocês agora.")

    escLen("\nOnix olha para o arco.")

    escLen("\nONIX:")
    escLen("\n— Mas não matou.")

    escLen("\nRICHARD:")
    escLen("\n— Ainda.")

    escLen("\nA palavra permanece entre vocês.")

    escLen("\nBolota rosna mais alto.")

    escLen("\nRichard olha para o cachorro.")

    escLen("\nRICHARD:")
    escLen("\n— Ele vai continuar fazendo isso?")

    escLen("\nONIX:")
    escLen("\n— Provavelmente.")

    escLen("\nRICHARD:")
    escLen("\n— Irritante.")

    escLen("\nONIX:")
    escLen("\n— Ele aprendeu com você.")

    escLen("\nRichard aperta os lábios.")

    escLen("\nO sorriso desaparece por completo.")

    escLen("\nA mão que segura a flecha se fecha.")

    escLen("\nPor um momento, parece que ele vai levantar o arco.")

    escLen("\nMas Richard respira fundo.")

    escLen("\nE volta a sorrir.")

    escLen("\nEle aponta para a mata atrás de vocês.")

    escLen("\nRICHARD:")
    escLen("\n— Mais à frente tem uma área alagada.")

    escLen("\nRICHARD:")
    escLen("\n— O chão parece firme, mas não é.")

    escLen("\nRICHARD:")
    escLen("\n— Se entrarem sem prestar atenção, podem afundar.")

    escLen("\nOnix não desvia o olhar dele.")

    escLen("\nONIX:")
    escLen("\n— E por que está nos avisando?")

    escLen("\nRichard inclina a cabeça.")

    escLen("\nRICHARD:")
    escLen("\n— Porque seria chato se vocês morressem tão cedo.")

    escLen("\nONIX:")
    escLen("\n— Que preocupação.")

    escLen("\nRICHARD:")
    escLen("\n— Não confunda interesse com preocupação.")

    escLen("\nO vento sopra novamente.")

    escLen("\nDessa vez, traz um cheiro metálico.")

    escLen("\nSangue.")

    escLen("\nVocê não sabe de onde vem.")

    escLen("\nRichard percebe que você sentiu.")

    escLen("\nRICHARD:")
    escLen("\n— Tem outros caçadores por perto.")

    escLen("\nVocê ergue a arma.")

    escLen("\nRichard para.")

    escLen("\nSeu olhar desce até a lâmina.")
    escLen("\nDepois volta para seu rosto.")

    escLen("\nRICHARD:")
    escLen("\n— Você realmente acha que consegue me enfrentar?")

    escreva("\n", nome, ": ")
    escLen("\n— Não sei.")

    escLen("\nVocê aperta o cabo da arma.")

    escreva("\n", nome, ": ")
    escLen("\n— Mas posso tentar.")

    escLen("\nRichard observa você em silêncio.")

    escLen("\nO rosto dele continua calmo.")

    escLen("\nEntão ri.")

    escLen("\nMas não há humor naquela risada.")

    escLen("\nRICHARD:")
    escLen("\n— Vocês são muito inconvenientes.")

    escLen("\nOnix sorri de canto.")

    escLen("\nONIX:")
    escLen("\n— E você é muito sensível.")

    escLen("\nRichard olha para ela.")

    escLen("\nSeu rosto endurece.")

    escLen("\nRICHARD:")
    escLen("\n— Cuidado.")

    escLen("\nONIX:")
    escLen("\n— Com o quê?")

    escLen("\nEle ergue lentamente o arco.")

    escLen("\nA flecha é encaixada.")

    escLen("\nO som da corda sendo puxada corta o silêncio.")

    escLen("\nBolota se coloca à frente de vocês.")

    escLen("\nVocê segura o braço de Onix e a puxa para trás.")

    escLen("\nRichard aponta a flecha.")

    escLen("\nAgora não há mais brincadeira.")

    escLen("\nRICHARD:")
    escLen("\n— Eu avisei.")

    escLen("\nAo longe, um som ecoa entre as árvores.")

    escLen("\nUm assobio.")

    escLen("\nRichard vira a cabeça.")

    escLen("\nPor um instante, sua atenção se desvia.")

    escLen("\nVocê percebe.")
    escLen("\nOnix também.")

    escLen("\nONIX:")
    escLen("\n— Tem alguém chamando você?")

    escLen("\nRichard abaixa o arco lentamente.")

    escLen("\nEle olha para a mata.")

    escLen("\nO assobio acontece novamente.")

    escLen("\nMais distante.")

    escLen("\nRichard parece irritado.")

    escLen("\nRICHARD:")
    escLen("\n— Vamos brincar um pouco então.")

    escLen("\nRICHARD:")
    escLen("\n— Vocês podem continuar pela trilha e encontrar os outros.")

    escLen("\nEle aponta para a esquerda.")

    escLen("\nRICHARD:")
    escLen("\n— Ou podem seguir pela mata fechada.")

    escLen("\nEle aponta para a direita.")

    escLen("\nBolota começa a rosnar novamente.")

    escLen("\nVocê sente o corpo ficar tenso.")

    escLen("\nRichard dá alguns passos para trás.")

    escLen("\nRICHARD:")
    escLen("\n— Vamos ver se vocês conseguem fugir direito.")

    escLen("\nEntão ele começa a contar regressivamente.")

    escLen("\n10...")
    U.aguarde(90)
    escLen("\n9...")
    U.aguarde(90)
    escLen("\n8...")
    U.aguarde(90)
    escLen("\n7...")
    U.aguarde(90)
    escLen("\n6...")
    U.aguarde(90)
    escLen("\n5...")
    U.aguarde(90)
    escLen("\n4...")
    U.aguarde(90)
    escLen("\n3...")
    U.aguarde(90)
    escLen("\n2...")
    U.aguarde(90)
    escLen("\n1...")

    limpa()

    escolhas8()


		
	}


	// ESCOLHA 1 - SAÍDA DA CELA

	funcao escolhas()
	{
		escLen("\nESCOLHAS\n")
		escLen("\nA) Correr imediatamente. Digite 1")
		escLen("\nB) Esperar e observar os arredores. Digite 2")
		escLen("\n\nEscolha: ")

		leia(escolha1)

		limpa()

		se(escolha1 == 1)
		{
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

			escreva("\n    _ \n")
			escreva(".-'` |___________________________////// \n")
			escreva("`'-._|                           \\\\\\\\\\\\ \n")

			U.aguarde(5000)

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
			escLen("\nVocê precisa escolher 1 ou 2.")

			limpa()

			escolhas()
		}
	}

	// ESCOLHA 2 - TRILHA
	
	funcao escolhas2()
	{
		escLen("\nESCOLHAS\n")
		escLen("\nA) Seguir pela área aberta. Digite 1")
		escLen("\nB) Entrar na mata fechada. Digite 2")
		escLen("\n\nEscolha: ")

		leia(escolha2)

		limpa()

		se(escolha2 == 1)
		{
			escLen("Você segue pela área aberta.")

			limpa()

			escLen("Por alguns minutos, nada acontece.")
			escLen("\nEntão você percebe.")

			limpa()

			escLen("Aquela área não parece natural.")
			escLen("\nO terreno foi preparado.")

			limpa()

			escLen("Vocês entraram em uma zona de observação.")
			escLen("\nUma pequena câmera se movimenta entre as árvores.")

			limpa()

			escLen("Vocês foram detectados.")
			escLen("\nTigres foram soltos.")
			escLen("\nNão há como fugir...")

			limpa()
		}

		senao se(escolha2 == 2)
		{
			escLen("Você e Onix entram na mata fechada.")

			limpa()

			escLen("As árvores se tornam cada vez mais próximas.")
			escLen("\nGalhos e folhas dificultam a passagem.")
			escLen("\nMas também dificultam a visão.")

			limpa()

			escLen("\nPor enquanto, vocês estão fora do alcance dos caçadores.")

			limpa()
		}

		senao
		{
			escLen("Escolha inválida.")
			escLen("\nVocê precisa escolher 1 ou 2.")

			limpa()

			escolhas2()
		}
	}


	// ESCOLHA 3 - CRIATURA

	funcao escolhas3()
	{
		escLen("\nESCOLHAS\n")
		escLen("\nA) Correr. Digite 1")
		escLen("\nB) Esperar. Digite 2")
		escLen("\n\nEscolha: ")

		leia(escolha3)

		limpa()

		se(escolha3 == 1)
		{
			escLen("Você puxa Onix consigo para mais a fundo na floresta,")
			escLen("\nbuscando ir o mais longe de onde acha vir os passos da criatura,")
			escLen("\nse escondendo em uma caverna aparentemente vazia.")

			limpa()

			escLen("Vocês acham que estão seguros,")
			escLen("\naté ouvir um rosnado...")

			escLen("\nAo mesmo tempo em que parece um único ser, é possível ouvir três.")

			limpa()

			escLen("Não existe tempo de fuga ou reação.")
			escLen("\nNão há como fugir...")
			escLen("\nVocê morreu desmembrado.")

			limpa()
		}

		senao se(escolha3 == 2)
		{
			escLen("\nONIX:")
			escLen("\n— Tem algo se aproximando! Temos que sair daqui!")

			escLen("\nVocê segura o braço de Onix, impedindo-a de correr.")

			escreva("\n", nome, ": ")
			escLen("\n— Espera.")

			escLen("\nVocês esperam por alguns segundos, mas parece uma eternidade.")

			escLen("\nO medo cresce enquanto a criatura se aproxima, mas você sabe que sair do lugar não é uma opção.")

			escLen("\nExistem caçadores em todos os cantos. Antes morrer por uma criatura do que por um dos humanos.")

			escLen("\nA sombra da criatura é visível agora.")

			escLen("\nVocê fecha os olhos, abraçando a morte certa, até que os passos simplesmente param.")

			escLen("\nVocê sente algo arranhar sua perna, algo pequeno, aparentemente inofensivo.")

			escLen("\nAo olhar para baixo, você encontra um cachorro pequeno, talvez um pouco maior que seu braço.")

			escolhas4()
		}

		senao
		{
			escLen("Escolha inválida.")
			escLen("\nVocê precisa escolher 1 ou 2.")

			limpa()

			escolhas3()
		}
	}


	// ESCOLHA 4 - BOLOTA

	funcao escolhas4()
	{
		escLen("\nESCOLHAS\n")
		escLen("\nA) Levar o cachorro consigo em sua jornada. Digite 1")
		escLen("\nB) Fazer carinho no cachorro, mas deixá-lo para trás. Digite 2")
		escLen("\n\nEscolha: ")

		leia(escolha4)

		limpa()

		se(escolha4 == 1)
		{
			escLen("\nVocê pega o cachorro no colo e faz carinho em sua cabeça.")

			escLen("\nONIX:")
			escLen("\n— A gente tem que dar um nome pra ele!")

			escreva("\n", nome, ":")
			escLen("\n— Mas chamá-lo do quê? Eu nunca tive um cachorro!")

			escLen("\nONIX:")
			escLen("\n— Uhm... Que tal Destruidor de Galáxias?")

			escreva("\n", nome, ":")
			escLen("\n— Não! Eu não quero ter que gritar \"Destruidor de Galáxias, corre!\" o tempo todo!")

			escLen("\nONIX:")
			escLen("\n— Aff, tá, então que tal Bolota?")

			escreva("\n", nome, ":")
			escLen("\n— Tipo o apelido que a gente deu praquele Orc cabeçudo?")

			escLen("\nONIX:")
			escLen("\n— O que morreu?")

			escreva("\n", nome, ":")
			escLen("\n— É, o que morreu!")

			escLen("\nONIX:")
			escLen("\n— Ah, então é! Bolota tipo ele!")

			escLen("\n~ COMPANHEIRO DESBLOQUEADO: Bolota ~")

			limpa()
		}

		senao se(escolha4 == 2)
		{
			escLen("\nVocê faz carinho no cachorro, mas deixa ele lá.")

			escLen("\nEnquanto você e Onix adentram mais a fundo na floresta, vocês são rodeados por paredes pretas.")

			escLen("\nEm sua frente, a divindade primordial da morte se encontra.")

			escLen("\nD/P:")
			escLen("\n— Vocês rejeitaram meu filho, logo, não os posso deixar livres.")

			escLen("\nLogo, você e Onix se encontram em uma fila de pessoas acorrentadas pelos pulsos.")

			escLen("\nVocês serão eternos servidores da Morte.")

			limpa()
		}

		senao
		{
			escLen("Escolha inválida.")
			escLen("\nVocê precisa escolher 1 ou 2.")

			limpa()

			escolhas4()
		}
	}

	// ESCOLHA 5 - ELEVAÇÃO

	funcao escolhas5()
	{
		escLen("\nESCOLHAS\n")
		escLen("\nA) Cavar imediatamente. Digite 1")
		escLen("\nB) Jogar a pedra em cima. Digite 2")
		escLen("\nC) Contornar e ignorar. Digite 3")
		escLen("\n\nEscolha: ")

		leia(escolha5)

		limpa()

		se(escolha5 == 1)
		{
			escreva("\n", nome, ": ")
			escLen("\nVamos cavar isso, então. E se for um corpo, eu vou te enterrar junto com ele, Onix.")

			escLen("\nONIX:")
			escLen("\n— Trato feito.")

			escLen("\nAo subir em cima da elevação, vocês ouvem um clique.")

			escLen("\nEm seguida, uma explosão atinge vocês dois.")

			escLen("\nOnix é jogada contra uma pedra, com estilhaços em suas pernas.")

			escLen("\nUma mina terrestre.")

			escLen("\nAntes de você conseguir pensar, bate sua cabeça contra uma árvore.")

			escLen("\nSua visão fica escura.")

			limpa()
		}

		senao se(escolha5 == 2)
		{
			escreva("\n", nome, ": ")
			escLen("\nJoga essa pedra, então.")

			escLen("\nVocê e Onix se afastam, e ela joga a pedra.")

			escLen("\nAo impacto da pedra, uma explosão é causada.")

			escLen("\nQuando a fumaça se afasta, vocês se aproximam da cratera.")

			escLen("\nHá uma caixa.")

			escLen("\nONIX:")
			escLen("\n— O que é isso?")

			escreva("\n", nome, ": ")
			escLen("\n— Não sei, mas vamos pegar.")

			limpa()

			comida()
		}

		senao se(escolha5 == 3)
		{
			escreva("\n", nome, ": ")
			escLen("\nNão sei, mas não acho que deveríamos mexer. Vai que é um corpo, e o espírito dele começa a assombrar a gente.")

			escLen("\nONIX:")
			escLen("\n— Faz sentido.")

			escLen("\nVocês se afastam do local, com Bolota seguindo seus passos.")

			limpa()
		}

		senao
		{
			escLen("Escolha inválida.")
			escLen("\nVocê precisa escolher 1, 2 ou 3.")

			limpa()

			escolhas5()
		}
	}


	// ESCOLHA 6 - COMIDA

	funcao inteiro escolhas6()
	{
		escLen("\nONIX:")
		escLen("\n— Mas ok, a gente vai comer tudo ou guarda uma parte pra depois?")

		escLen("\nESCOLHAS\n")
		escLen("\nA) Comer tudo agora. Digite 1")
		escLen("\nB) Comer um pouco e guardar o resto. Digite 2")
		escLen("\n\nEscolha: ")

		leia(escolha6)

		limpa()

		se(escolha6 == 1)
		{
			escreva("\n", nome, ": ")
			escLen("\nAh, sei lá se a gente vai estar vivo nesse depois aí. Vamos comer agora.")

			escLen("\nONIX:")
			escLen("\n— Ok, então. Tô morrendo de fome já.")

			escLen("\nVocês se sentam e comem todo o conteúdo da caixa.")

			escLen("\nDe repente...")

			escLen("\nONIX:")
			escLen("\n— EI! Isso era meu!")

			escLen("\nEla exclama para Bolota, que come alegremente a comida roubada das mãos de Onix.")

			escLen("\nA cena provoca um riso baixo em você.")

			escLen("\nONIX:")
			escLen("\n— Para de rir, babaca.")

			escLen("\nVocês dois se levantam e seguem jornada.")

			tem_comida = 0

			limpa()

			retorne tem_comida
		}

		senao se(escolha6 == 2)
		{
			escreva("\n", nome, ": ")
			escLen("\nAcho melhor a gente guardar um pouco pra depois, né? Talvez não encontremos comida mais pra frente.")

			escLen("\nONIX:")
			escLen("\n— Tá, né... eu tava com fome, mas se você diz...")

			escLen("\nVocês comem aproximadamente 1/3 da comida, dão um pouco para Bolota e guardam o resto.")

			escLen("\nOnix se levanta e estende a mão para você.")

			escLen("\nONIX:")
			escLen("\n— Vamos?")

			escLen("\nVocês voltam a andar.")

			tem_comida = 1

			limpa()

			retorne tem_comida
		}

		senao
		{
			escLen("Escolha inválida.")
			escLen("\nVocê precisa escolher 1 ou 2.")

			limpa()

			retorne escolhas6()
		}
	}


	// ESCOLHA 7 - GRIFA
	
	funcao escolhas7()
	{
		escLen("\nESCOLHAS\n")
		escLen("\nA) Tentar atacá-la. Digite 1")
		escLen("\nB) Tentar recuar e não parecer ameaçador. Digite 2")

		se(tem_comida > 0)
		{
			escLen("\nC) Oferecer o resto da comida. Digite 3")
		}

		escLen("\n\nEscolha: ")

		leia(escolha7)

		limpa()

		// OPÇÃO 1 - ATACAR

		se(escolha7 == 1)
		{
			escLen("\nVocê observa a grifa por alguns segundos.")

			escLen("\nEla parece cansada. Sua barriga está inchada, e seus passos são lentos.")

			escLen("\nMas ainda é um monstro. E monstros são perigosos.")

			escLen("\nVocê se abaixa lentamente até o chão, pegando um pedaço grosso de madeira.")

			escLen("\nOnix percebe o movimento.")

			escLen("\nONIX:")
			escLen("\n— Você tá pensando em fazer o quê?")

			escreva("\n", nome, ": ")
			escLen("\n— Se ela atacar, precisamos estar preparados.")

			escLen("\nONIX:")
			escLen("\n— Mas ela nem fez nada ainda!")

			escLen("\nA grifa ergue a cabeça.")

			escLen("\nSeus olhos parecem encontrar os seus.")

			escLen("\nPor um instante, tudo parece ficar parado.")

			escLen("\nEntão, a grifa abre as asas.")

			escLen("\nOnix recua.")

			escLen("\nONIX:")
			escLen("\n— Ah, droga.")

			escLen("\nA criatura avança.")

			escLen("\nVocê tenta desviar, mas suas garras atingem seu peito, jogando você contra uma árvore.")

			escLen("\nA dor é imediata.")

			escLen("\nOnix grita e tenta correr até você.")

			escLen("\nMas a grifa se vira em sua direção.")

			escLen("\nVocê tenta se levantar, mas é tarde demais.")

			escLen("\nA última coisa que vê é Onix tentando proteger você.")

			limpa()

			escLen("FIM DE JOGO.")

			limpa()
		}


		// OPÇÃO 2 - RECUAR
		

		senao se(escolha7 == 2)
		{
			escLen("\nVocê ergue as mãos lentamente.")

			escreva("\n", nome, ": ")
			escLen("\n— Calma...")

			escLen("\nOnix olha para você, confusa.")

			escLen("\nONIX:")
			escLen("\n— Calma? Você tá falando sério?")

			escreva("\n", nome, ": ")
			escLen("\n— Não faz movimentos bruscos. E confia em mim.")

			escLen("\nA grifa permanece parada.")

			escLen("\nSuas asas estão parcialmente abertas, e seus olhos acompanham cada movimento de vocês.")

			escLen("\nBolota, por outro lado, não parece entender a situação.")

			escLen("\nO cachorro dá alguns passos para a frente.")

			escLen("\nONIX:")
			escLen("\n— Bolota, volta aqui. Agora.")

			escLen("\nEle para.")

			escLen("\nA grifa abaixa a cabeça, aproximando o focinho do chão.")

			escLen("\nVocê percebe que ela está farejando.")

			escLen("\nTalvez esteja procurando comida. Ou um lugar seguro.")

			escLen("\nVocê não sabe.")

			escLen("\nMas sabe que não quer descobrir o que acontece quando ela se sente ameaçada.")

			escreva("\n", nome, ": ")
			escLen("\n— Vamos recuar. Lentamente.")

			escLen("\nVocê dá um passo para trás.")
			escLen("\nDepois outro.")

			escLen("\nOnix acompanha seus movimentos.")

			escLen("\nA grifa não avança.")

			escLen("\nPor alguns segundos, vocês continuam recuando.")

			escLen("\nAté que a criatura finalmente se vira e desaparece entre as árvores.")

			escLen("\nOnix solta o ar que nem percebeu que estava segurando.")

			escLen("\nONIX:")
			escLen("\n— Eu quase morri umas três vezes nessa floresta.")

			escreva("\n", nome, ": ")
			escLen("\n— E ainda nem chegamos na metade.")

			escLen("\nONIX:")
			escLen("\n— Não precisava lembrar disso.")

			escLen("\nBolota late.")

			escLen("\nONIX:")
			escLen("\n— Aquieta aí, Bolota.")

			escLen("\nVocê olha para o cachorro.")

			escLen("\nEle parece estar olhando para algum ponto atrás de vocês.")

			escreva("\n", nome, ": ")
			escLen("\n— O que é?")

			escLen("\nAntes que Onix possa responder, um som corta a floresta.")

			limpa()
		}


		// OPÇÃO 3 - OFERECER COMIDA
		

		senao se(escolha7 == 3 e tem_comida > 0)
		{
			escLen("\nVocê abre a caixa e retira o restante da comida.")

			escreva("\n", nome, ": ")
			escLen("\n— Talvez ela esteja com fome.")

			escLen("\nOnix olha para a comida. Depois para a grifa.")

			escLen("\nONIX:")
			escLen("\n— Você vai dar a nossa comida para ela?")

			escreva("\n", nome, ": ")
			escLen("\n— Ela está grávida.")

			escLen("\nONIX:")
			escLen("\n— Ah, claro. Não sabia que tinha sido contratado como tratador de zoológico.")

			escLen("\nVocê ignora o comentário e coloca a comida no chão.")

			escLen("\nA grifa observa.")

			escLen("\nPor alguns segundos, ela não se move.")

			escLen("\nEntão, lentamente, aproxima-se da comida.")

			escLen("\nEla cheira o alimento antes de começar a comer.")

			escLen("\nOnix permanece imóvel, observando a criatura.")

			escLen("\nA grifa come tudo em poucos segundos.")

			escLen("\nDepois, ergue a cabeça e olha para vocês.")

			escLen("\nVocê sente que ela não está mais tão ameaçadora.")

			escLen("\nONIX:")
			escLen("\n— Acho que acabamos de fazer amizade com um grifo.")

			escreva("\n", nome, ": ")
			escLen("\n— Tecnicamente, uma grifa.")

			escLen("\nONIX:")
			escLen("\n— Tanto faz.")

			escLen("\nA grifa se aproxima mais um pouco e então se deita próxima às árvores.")

			escLen("\nTalvez ela só estivesse procurando um lugar seguro para descansar.")

			tem_comida = 0

			limpa()
		}


		senao
		{
			escLen("Escolha inválida.")

			se(tem_comida > 0)
			{
				escLen("\nVocê precisa escolher 1, 2 ou 3.")
			}
			senao
			{
				escLen("\nVocê precisa escolher 1 ou 2.")
			}

			limpa()

			escolhas7()
		}
	}

	funcao escolhas8(){
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 24537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */