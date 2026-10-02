programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T

	cadeia global_gen
	const inteiro velo = 35
	
	//Bebel
	
	inteiro tem_comida = 0
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
		"Sátiro",
		"Harpia"
	}

	// Categoria Texto lento

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
	
	// Categoria Personagem
	
	funcao defineGene()
	{
		escLen("Olá, jogador!\n")
		escLen("Informe seu gênero, por favor (ele/dele, ela/dela, elx/delx): ")
		leia(global_gen)

		al(0)
	}

	funcao cadeia nom()
	{
		escLen("Então, pequeno gafanhoto, como deveria chamá-lo?\n")
		leia(nome)

		escreva("Entendi, ", nome, "\n")
		al(100)

		retorne nome
	}

	// Categoria Raça
	
	funcao inteiro rac()
	{
		escLen("Para o seu grandíssimo azar, você não pode escolher a sua raça! Ela será sorteada.\n")
		r = sorteia(0, 8)

		escLen("E a sua raça é...\n")
		escreva(raca[r], "!")

		U.aguarde(1000)
		escLen("\nParabéns!\n")

		al(250)

		retorne r
	}

	// Categoria Comida
	
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

			al(500)
		}

		senao se(v == 2)
		{
			escLen("\nONIX:")
			escLen("\n— Frango? Ok, eu acho.")

			escreva("\n", nome, ": ")
			escLen("\nAcho que essas coxas de frango vão sustentar a gente por um tempo.")

			al(500)
		}

		senao
		{
			escLen("\nONIX:")
			escLen("\n— Sardinhas! Eu gosto de peixe.")

			escreva("\n", nome, ": ")
			escLen("\nÉ, é uma lata bem grande de sardinhas.")

			al(500)
		}

		escolhas6()
	}

	funcao al(inteiro t){

		// al == Aguarde e Limpa

		U.aguarde(t)
		limpa()
	}

	//Jojo
	
	// *** O INÍCIO ***

	funcao inicio()
	{
		// Criação do personagem
		defineGene()
		nom()
		rac()

		// INTRODUÇÃO

		escreva(" ::::::::         :::     ::::    ::::      :::     ::::    ::: :::    ::: :::::::::: ::::::::  :::::::::: :::::::::     ::::    :::  ::::::::     ::::::::::: :::     ::::::::: ::::::::::: :::     :::::::::   ::::::::  \n")
		escreva(":+:    :+:      :+: :+:   +:+:+: :+:+:+   :+: :+:   :+:+:   :+: :+:    :+: :+:       :+:    :+: :+:        :+:    :+:    :+:+:   :+: :+:    :+:        :+:   :+: :+:   :+:    :+:    :+:   :+: :+:   :+:    :+: :+:    :+: \n")
		escreva("+:+    +:+     +:+   +:+  +:+ +:+:+ +:+  +:+   +:+  :+:+:+  +:+ +:+    +:+ +:+       +:+        +:+        +:+    +:+    :+:+:+  +:+ +:+    +:+        +:+  +:+   +:+  +:+    +:+    +:+  +:+   +:+  +:+    +:+ +:+    +:+ \n")
		escreva("+#+    +:+    +#++:++#++: +#+  +:+  +#+ +#++:++#++: +#+ +:+ +#+ +#++:++#++ +#++:++#  +#+        +#++:++#   +#++:++#:     +#+ +:+ +#+ +#+    +:+        +#+ +#++:++#++: +#++:++#:     +#+ +#++:++#++: +#++:++#:  +#+    +:+ \n")
		escreva("+#+    +#+    +#+     +#+ +#+       +#+ +#+     +#+ +#+  +#+#+# +#+    +#+ +#+       +#+        +#+        +#+    +#+    +#+  +#+#+# +#+    +#+        +#+ +#+     +#+ +#+    +#+    +#+ +#+     +#+ +#+    +#+ +#+    +#+ \n")
		escreva("#+#    #+#    #+#     #+# #+#       #+# #+#     #+# #+#   #+#+# #+#    #+# #+#       #+#    #+# #+#        #+#    #+#    #+#   #+#+# #+#    #+#        #+# #+#     #+# #+#    #+#    #+# #+#     #+# #+#    #+# #+#    #+# \n")
		escreva(" ########     ###     ### ###       ### ###     ### ###    #### ###    ### ########## ########  ########## ###    ###    ###    ####  ########         ### ###     ### ###    ###    ### ###     ### ###    ###  ########  \n")

		al(2500)

		escLen("Som de televisão antiga\n")

		escreva("\n ___________ \n")
		escreva("|  .----.  o| \n")
		escreva("| |      | o| \n")
		escreva("| |      | o| \n")
		escreva("|__`----`___| \n")
		escreva(" ´         ` \n")

		al(2500)

		escLen("Apresentadora:")
		escLen("\n— Boa noite, cidadãos gloriosos de Tártaro!")
		al(1500)

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

		al(2500)

		escLen("Apresentadora:")
		escLen("\n— Hoje é um dia especial!")
		escLen("\n— Pois hoje começa mais uma edição da nossa querida Limpeza Trienal!")
		
		al(1500)

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

		al(2500)

		escLen("Apresentadora:")
		escLen("\n— Sete dias de coragem!")
		escLen("\n— Sete dias de emoção!")
		escLen("\n— Sete dias para descobrirmos quem será o último sobrevivente!")

		al(1500)

		escLen(".............")
		limpa()


		escLen("Apresentadora:")
		escLen("\n— Para vocês, não humanos, temos que agradecer.")
		escLen("\n— Amamos o seu espetáculo.")
		escLen("\n— Adoramos os seus gritos, o seu sofrimento.")
		escLen("\n— Amamos ver suas vidas sendo tiradas pouco a pouco")
		escLen("\n— Enquanto pensam no pedaço de lixo que são.")
		
		al(2000)
		
		escLen("°`-=x=-=x=-=x=-=x=-=x=-=x=´° Volta ao normal `°=x=-=x=-=x=-=x=-=x=-=x=-´°")
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

		al(2500)

		escLen(".......")
		limpa()

		// CELA

		escLen("Você acorda no chão frio de uma cela.")
		escLen("\nSua cabeça dói.")
		escLen("\nSeu corpo dói.")
		escLen("\nVocê não sabe quanto tempo ficou inconsciente.")
		escLen("\nDo outro lado da cela, separados por uma parede de tijolos, está Onix.")

		al(1500)
		
		escLen(".......")
		limpa()

		escLen("ONIX:")
		escLen("\n— Finalmente.")
		
		al(500)
		
		escLen("Você tenta se levantar.")
		
		al(500)

		escreva(nome, ":")
		escLen("\n— Quanto tempo?")
		
		al(500)

		escLen("ONIX:")
		escLen("\n— Não sei, mas você tá desmaiado desde a surra de manhã.")
		escLen("\n— Mas ouvi os guardas...")
		escLen("\n— E é hoje...")
		
		al(1000)
		
		escLen("Você não teve nem tempo para pensar, antes de escutar um som.")
		
		al(500)
		
		escLen("Clack")

		escreva("\n  ooo,    .---. \n")
		escreva(" o`  o   /    |\\________________ \n")
		escreva("o`   'oooo()  | ________   _   _) \n")
		escreva("`oo   o` \\    |/        | | | | \n")
		escreva("  `ooo'   `---'         \"-\" |_| \n")

		al(2500)

		escLen("As portas começam a destravar.")
		escLen("\nUma voz surge pelos alto-falantes.")
		
		al(750)

		escLen("Apresentadora:")
		escLen("\n— Participantes, preparem-se para contagem regressiva.")
		
		al(750)

		escLen("ONIX:")
		escLen("\n— Quando abrirem a porta, não pense.")
		
		al(750)

		escLen("Apresentadora:")
		escLen("\n3")
		
		al(500)

		escLen("ONIX:")
		escLen("\n— Não lute.")
		
		al(500)
		
		escLen("Apresentadora:")
		escLen("\n2")
		
		al(500)
		
		escLen("ONIX:")
		escLen("\n— Só corre.")
		
		al(500)

		escLen("Apresentadora:")
		escLen("\n1.")
		
		al(500)

		escolhas()


		escLen("\nVocê e Onix correm durante um tempo.")
		escLen("\nCada vez mais para dentro da floresta.")
		
		al(750)

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

		al(2500)


		escLen("\nAs árvores parecem altas demais.")
		escLen("\nO ar é pesado.")
		escLen("\nVocê olha para trás.")
		escLen("\nNenhum caçador.")
		escLen("\nAinda.")
		
		al(1500)

		escLen("\nEm um determinado ponto vocês encontram duas trilhas.")
		escLen("\nUma segue por uma região aberta.")
		escLen("\nA outra desaparece entre uma área extremamente fechada da mata.")
		
		al(1500)

		escLen("ONIX:")
		escLen("\n— Precisamos escolher.")
		
		al(750)

		escolhas2()


		escLen("A cada passo, a floresta parece se fechar um pouco mais ao redor de vocês.")
		escLen("\nOs galhos baixos arranham seus braços enquanto vocês passam,")
		escLen("\nenquanto as folhas secas estalam sob seus pés, denunciando cada movimento.")
		
		al(1250)

		escLen("Então, Onix para.")
		escLen("\nONIX:")
		escLen("\n— Mais devagar.")
		
		al(1100)
		
		escreva(nome, ":")
		escLen("\n— O quê?")
		
		al(500)

		escLen("A garota não responde imediatamente.")
		escLen("\nPermanece imóvel, olhando para a mata ao redor.")
		escLen("\nVocê acompanha seu olhar.")
		
		al(1100)
		
		escLen("Você não percebe nada.")
		escLen("\nNão há nada.")
		
		al(750)

		escLen("Não há pássaros cantando entre as árvores.")
		escLen("\nNenhum inseto.")
		escLen("\nNenhum som de folhas sendo movimentadas pelo vento.")
		escLen("\nA floresta, que antes parecia viva, agora parece estar prendendo a respiração.")
		
		al(1500)

		escLen("ONIX:")
		escLen("\n— Você ouviu?")
		
		al(500)

		escreva(nome, ":")
		escLen("\n— Ouvi o quê? Não ouvi nada.")
		
		al(500)
		
		escLen("ONIX:")
		escLen("\n— Exatamente. Está quieto demais.")
		escLen("\n— E isso não é bom...")
		
		al(600)

		escLen("O silêncio se estende por mais alguns segundos.")
		escLen("\nNenhum inseto.")
		escLen("\nE então a terra começa a tremer aos poucos.")
		
		al(750)
		
		escLen("É quase imperceptível no começo,")
		escLen("\nmas logo você percebe que não é um tremor comum.")
		escLen("\nSão passos de algo maior, talvez até...")
		escLen("\nAncião.")
		
		al(1000)
		
		escolhas3()


		escLen("\nDepois de adotarem Bolota, você e Onix continuam andando pela floresta que se estende à frente de vocês, com Onix uma vez ou outra arrancando um galho de alguma árvore e jogando para Bolota ir buscar.")
		escLen("\nTudo está pacífico... até demais. Porém, os pássaros estão cantando, e as flores ainda estão desabrochando.")
		escLen("\nEntão, talvez esteja tudo bem.")
		escLen("\nTalvez.")
		
		al(1250)

		escLen("\nONIX:")
		escLen("\n— Ok, pelo menos está um silêncio agradável.")
		escLen("\n— Espero que nada aconte-")
		
		al(750)

		escLen("\nEla nem termina sua frase quando Bolota começa a latir.")

		escLen("\nÀ frente do animal, há uma faixa de terra suspeitosamente elevada.")
		
		al(750)

		escreva("\n", nome, ":")
		escLen("\n— Espero que não seja um corpo ou algo assim.")

		escLen("\nONIX:")
		escLen("\n— Quer descobrir cavando ou jogando pedra?")
		
		al(750)

		escLen("\nEla disse, já pegando uma pedra de tamanho médio.")
		
		al(500)
		
		escolhas5()


		escLen("\nVocês andam pela floresta, completamente em paz.")
		escLen("\nBolota caminha animadamente na frente de você e Onix, às vezes perseguindo um inseto no chão.")
		
		al(900)

		escLen("\nONIX:")
		escLen("\n— Nossa, que paz. Parece até milagre.")
		
		al(750)
								
		escLen("\nMal ela terminou de pronunciar essa frase, vocês ouvem passos. Pesados. Fortes.")

		escLen("\nAntes que qualquer ação possa ser realizada, a fonte desses sons aparece.")
		
		al(1000)

		escLen("\nUm grifo aparece, com passos pesados e cansados.")
		escLen("\nUma grifa, especificamente. Sua barriga está inchada.")

		escLen("\nONIX:")
		escLen("\n— Ah... ela tá grávida.")

		escLen("\nO que vocês farão?")

		al(250)
		
		escolhas7()

    escLen("\nA PRESENÇA")

    escLen("\nA floresta permanece quieta.")
    escLen("\nNão completamente.")

    escLen("\nHávia o som das folhas se movendo, o vento passando entre os galhos e a respiração cansada de vocês.")

    escLen("\nMas existe algo diferente.")

    escLen("\nBolota percebe primeiro.")

    escLen("\nO cachorro para de andar.")
    escLen("\nSeu corpo fica rígido.")

    al(1500)

    escLen("\nONIX:")
    escLen("\n— Bolota?")

    al(750)

    escLen("\nEle não responde.")
    escLen("\nApenas olha para a mata.")

    escLen("\nVocê acompanha seu olhar.")

    escLen("\nEntre as árvores, não há nada.")
    escLen("\nApenas troncos escuros e uma névoa fina que se arrasta próxima ao chão.")

    escLen("\nEntão, um galho se quebra.")

    al(1500)

    escLen("\nCRAC.")

    al(750)

    escLen("\nOnix segura seu braço.")
    
    al(750)

    escLen("\nONIX:")
    escLen("\n— Tem alguém aí.")

    al(900)

    escLen("\nVocê não responde.")

    escLen("\nO som vem novamente.")
    escLen("\nDessa vez, mais próximo.")

    al(1100)

    escLen("\nCRAC.")

    al(750)

    escLen("\nBolota começa a rosnar.")

    al(750)

    escreva("\n", nome, ": ")
    escLen("\n— Quieto.")

    al(900)

    escLen("\nO cachorro permanece ao seu lado.")

    al(750)

    escLen("\nVocê sente a mão de Onix apertar seu braço.")
    escLen("\nEla está assustada.")
    escLen("\nNão é difícil perceber.")
    escLen("\nMas tenta esconder.")

    al(1500)

    escLen("\nEntão uma voz surge entre as árvores.")

    al(750)

    escLen("\n??? :")
    escLen("\n— Olha só o que temos aqui, dois monstros... ou melhor, dois pedaços de lixo.")

    al(900)

    escLen("\nOnix se vira imediatamente.")
    escLen("\nVocê também.")

    al(900)

    escLen("\nUm garoto aparece entre os troncos.")

    escLen("\nEle parece ter aproximadamente a sua idade.")
    escLen("\nTalvez um pouco mais velho.")

    al(1100)

    escLen("\nUsa roupas escuras, botas de caça e uma capa que parece ter sido feita para se misturar à floresta.")

    escLen("\nEm uma das mãos, segura um arco.")
    escLen("\nNa outra, uma flecha.")

    escLen("\nO cabelo está levemente bagunçado, provavelmente por causa da caminhada.")

    al(1500)

    escLen("\nSeu rosto parece tranquilo.")
    escLen("\nQuase cansado.")

    al(900)

    escLen("\nEle olha para vocês.")
    escLen("\nDepois para Bolota.")

    al(750)

    escLen("\n??? :")
    escLen("\n— Ah.")

    al(800)

    escLen("\nUm sorriso pequeno surge em seu rosto.")

    al(800)

    escLen("\n??? :")
    escLen("\n— Vocês pegaram um cachorro.")

    al(900)

    escLen("\nOnix dá um passo para frente.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— Quem é você?")

    al(750)

    escLen("\nO garoto olha para ela.")

    al(750)

    escLen("\n??? :")
    escLen("\n— Richard.")

    al(750)

    escLen("\nEle espera.")
    escLen("\nComo se fosse óbvio que vocês deveriam saber mais alguma coisa.")

    al(850)

    escLen("\nRICHARD:")
    escLen("\n— Richard Miller.")

    al(850)

    escLen("\nVocê não responde.")

    escLen("\nSeu olhar permanece no arco.")
    escLen("\nNa flecha.")
    escLen("\nNas mãos dele.")

    al(1150)

    escLen("\nRichard percebe.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Relaxa. Se eu quisesse atirar, já teria feito.")

    al(900)

    escLen("\nOnix olha para você.")
    escLen("\nDepois volta a encarar Richard.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— Isso era pra me tranquilizar?")

    al(800)

    escLen("\nRichard dá de ombros.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Não sei. Funcionou?")

    al(800)

    escLen("\nVocê permanece em silêncio.")

    escLen("\nEle observa seu rosto por alguns segundos.")

    al(900)

    
    escLen ("\nRICHARD:")
    escLen("\n— Você é o mais quieto dos dois?")

    escreva("\n", nome, ": ")
    escLen("\n— Depende.")

    escLen("\nRICHARD:")
    escLen("\n— De quê?")

    escreva("\n", nome, ": ")
    escLen("\n— Da pessoa.")

    al(1250)

    escLen("\nRichard sorri.")
    escLen("\nDessa vez, um pouco mais.")

    al(800)

    escLen("\nRICHARD:")
    escLen("\n— Entendi.")

    al(800)

    escLen("\nEle olha novamente para Onix.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— E você é a que fala mais.")

    escLen("\nONIX:")
    escLen("\n— E você é o mais irritante.")

    al(1100)

    escLen("\nRichard inclina levemente a cabeça.")

    escLen("\nPor um instante, o sorriso desaparece.")
    escLen("\nMas retorna logo depois.")

    al(1150)

    escLen("\nRICHARD:")
    escLen("\n— É um hábito.")

    al(800)

    escLen("\nEle dá mais um passo.")

    escLen("\nOnix imediatamente recua.")

    escLen("\nRichard percebe.")

    escLen("\nSeu olhar desce para o movimento dos pés dela.")
    escLen("\nDepois sobe novamente.")

    al(1100)

    escLen("\nRICHARD:")
    escLen("\n— Vocês estão fugindo há quanto tempo?")

    al(800)

    escLen("\nNinguém responde.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Desde a abertura?")

    al(800)

    escLen("\nOnix continua olhando para ele.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— Você também está participando?")

    al(800)

    escLen("\nRichard olha para o próprio braço.")

    escLen("\nA marca dos participantes está visível.")

    al(900)

    escLen("\nRICHARD:")
    escLen("\n— Parece que sim.")

    escLen("\nONIX:")
    escLen("\n— Então por que você não está correndo?")

    al(950)

    escLen("\nRichard olha ao redor.")

    escLen("\nA floresta.")
    escLen("\nAs árvores.")
    escLen("\nA trilha.")

    escLen("\nDepois volta a olhar para vocês.")

    al(1050)

    escLen("\nRICHARD:")
    escLen("\n— Porque eu não preciso.")

    al(900)

    escLen("\nO silêncio que vem depois parece mais pesado.")

    escLen("\nVocê olha para a mata atrás dele.")

    escLen("\nNenhum movimento.")
    escLen("\nNenhuma outra pessoa.")

    escLen("\nApenas Richard.")
    escLen("\nE o arco.")

    escLen("\nEle percebe que você está procurando uma rota.")

    al(1350)

    escLen("\nRICHARD:")
    escLen("\n— Não adianta.")

    escreva("\n", nome, ": ")
    escLen("\n— O quê?")

    escLen("\nRICHARD:")
    escLen("\n— Procurar por onde sair.")

    al(1500)

    escLen("\nEle aponta com a cabeça para a trilha.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Essa região é cercada por câmeras e armadilhas.")

    escLen("\nRICHARD:")
    escLen("\n— Se vocês continuarem seguindo por ali, vão acabar voltando para uma área aberta.")

    al(1275)

    escLen("\nOnix estreita os olhos.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— E você sabe disso como?")

    al(800)

    escLen("\nRichard sorri.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Porque conheço o jogo.")

    al(800)

    escLen("\nEle parece satisfeito com a resposta.")

    escLen("\nMas não é exatamente orgulho.")
    escLen("\nÉ algo mais próximo de diversão.")

    escLen("\nComo se gostasse de ver vocês tentando descobrir o que ele já sabe.")

    al(1050)

    escLen("\nRICHARD:")
    escLen("\n— Vocês tiveram sorte de chegar até aqui.")

    escLen("\nONIX:")
    escLen("\n— E você veio dar parabéns?")

    escLen("\nRICHARD:")
    escLen("\n— Não.")

    al(1250)

    escLen("\nEle olha para Bolota.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Só achei curioso.")

    al(800)

    escLen("\nO cachorro permanece rosnando baixo.")

    escLen("\nRichard se agacha um pouco, tentando ficar na altura dele.")

    al(1050)

    escLen("\nRICHARD:")
    escLen("\n— Ele não gosta de mim.")

    escLen("\nONIX:")
    escLen("\n— Ele tem bom senso.")

    al(1000)

    escLen("\nRichard solta uma risada curta.")

    escLen("\nDessa vez, parece verdadeira.")

    al(900)

    escLen("\nRICHARD:")
    escLen("\n— Você sempre responde assim?")

    escLen("\nONIX:")
    escLen("\n— Só quando a pessoa merece.")

    al(1050)

    escLen("\nO sorriso dele diminui.")

    escLen("\nNão desaparece completamente.")
    escLen("\nMas fica preso no canto da boca.")

    escLen("\nRichard se levanta.")

    al(1200)

    escLen("\nRICHARD:")
    escLen("\n— Vocês sabem o que acontece quando a noite chega?")

    al(800)

    escLen("\nOnix permanece imóvel.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— Não.")

    escLen("\nRICHARD:")
    escLen("\n— A maioria dos caçadores volta para as áreas de descanso.")

    al(950)

    escLen("\nEle olha para a mata.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Mas alguns ficam.")

    escreva("\n", nome, ": ")
    escLen("\n— Você é um deles?")

    al(850)

    escLen("\nRichard olha para você.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Sou.")

    escLen("\nONIX:")
    escLen("\n— Então por que está conversando?")

    al(1050)

    escLen("\nRichard dá de ombros.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Porque posso.")

    escLen("\nONIX:")
    escLen("\n— Isso não responde.")

    escLen("\nRICHARD:")
    escLen("\n— Responde o suficiente.")

    al(1250)

    escLen("\nEle olha para você.")

    escLen("\nPor alguns segundos, nenhum dos dois fala.")

    escLen("\nO vento passa entre as árvores.")
    escLen("\nA capa de Richard se move levemente.")

    al(1150)

    escLen("\nRICHARD:")
    escLen("\n— Eu poderia matar vocês agora.")

    al(900)

    escLen("\nOnix olha para o arco.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— Mas não matou.")

    escLen("\nRICHARD:")
    escLen("\n— Ainda.")

    al(1050)

    escLen("\nA palavra permanece entre vocês.")

    escLen("\nBolota rosna mais alto.")

    escLen("\nRichard olha para o cachorro.")

    al(1050)

    escLen("\nRICHARD:")
    escLen("\n— Ele vai continuar fazendo isso?")

    escLen("\nONIX:")
    escLen("\n— Provavelmente.")

    escLen("\nRICHARD:")
    escLen("\n— Irritante.")

    escLen("\nONIX:")
    escLen("\n— Ele aprendeu com você.")

    al(1450)

    escLen("\nRichard aperta os lábios.")

    escLen("\nO sorriso desaparece por completo.")

    escLen("\nA mão que segura a flecha se fecha.")

    escLen("\nPor um momento, parece que ele vai levantar o arco.")

    escLen("\nMas Richard respira fundo.")

    escLen("\nE volta a sorrir.")

    escLen("\nEle aponta para a mata atrás de vocês.")

    al(1550)

    escLen("\nRICHARD:")
    escLen("\n— Mais à frente tem uma área alagada.")

    escLen("\nRICHARD:")
    escLen("\n— O chão parece firme, mas não é.")

    escLen("\nRICHARD:")
    escLen("\n— Se entrarem sem prestar atenção, podem afundar.")

    al(1050)

    escLen("\nOnix não desvia o olhar dele.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— E por que está nos avisando?")

    al(800)

    escLen("\nRichard inclina a cabeça.")

    al(750)

    escLen("\nRICHARD:")
    escLen("\n— Porque seria chato se vocês morressem tão cedo.")

    escLen("\nONIX:")
    escLen("\n— Que preocupação.")

    escLen("\nRICHARD:")
    escLen("\n— Não confunda interesse com preocupação.")

    al(1150)

    escLen("\nO vento sopra novamente.")

    escLen("\nDessa vez, traz um cheiro metálico.")

    al(825)

    escLen("\nSangue.")

    al(625)

    escLen("\nVocê não sabe de onde vem.")

    escLen("\nRichard percebe que você sentiu.")

    al(800)

    escLen("\nRICHARD:")
    escLen("\n— Tem outros caçadores por perto.")

    al(900)

    escLen("\nVocê ergue a arma.")

    escLen("\nRichard para.")

    escLen("\nSeu olhar desce até a lâmina.")
    escLen("\nDepois volta para seu rosto.")

    al(1050)

    escLen("\nRICHARD:")
    escLen("\n— Você realmente acha que consegue me enfrentar?")

    escreva("\n", nome, ": ")
    escLen("\n— Não sei.")

    al(1200)

    escLen("\nVocê aperta o cabo da arma.")

    al(750)

    escreva("\n", nome, ": ")
    escLen("\n— Mas posso tentar.")

    al(800)

    escLen("\nRichard observa você em silêncio.")

    escLen("\nO rosto dele continua calmo.")

    escLen("\nEntão ri.")

    escLen("\nMas não há humor naquela risada.")

    al(1100)

    escLen("\nRICHARD:")
    escLen("\n— Vocês são muito inconvenientes.")

    al(900)

    escLen("\nOnix sorri de canto.")

    al(750)

    escLen("\nONIX:")
    escLen("\n— E você é muito sensível.")

    al(900)

    escLen("\nRichard olha para ela.")

    escLen("\nSeu rosto endurece.")

    al(925)

    escLen("\nRICHARD:")
    escLen("\n— Cuidado.")

    escLen("\nONIX:")
    escLen("\n— Com o quê?")

    al(1050)

    escLen("\nEle ergue lentamente o arco.")

    escLen("\nA flecha é encaixada.")

    escLen("\nO som da corda sendo puxada corta o silêncio.")

    al(1100)

    escLen("\nBolota se coloca à frente de vocês.")

    escLen("\nVocê segura o braço de Onix e a puxa para trás.")

    al(800)

    escLen("\nRichard aponta a flecha.")

    al(850)

    escLen("\nAgora não há mais brincadeira.")

    al(850)

    escLen("\nRICHARD:")
    escLen("\n— Eu avisei.")

    al(800)

    escLen("\nAo longe, um som ecoa entre as árvores.")

    al(775)

    escLen("\nUm assobio.")

    al(800)

    escLen("\nRichard vira a cabeça.")

    escLen("\nPor um instante, sua atenção se desvia.")

    escLen("\nVocê percebe.")
    escLen("\nOnix também.")

    al(1100)

    escLen("\nONIX:")
    escLen("\n— Tem alguém chamando você?")

    al(900)

    escLen("\nRichard abaixa o arco lentamente.")

    escLen("\nEle olha para a mata.")

    escLen("\nO assobio acontece novamente.")

    escLen("\nMais distante.")

    escLen("\nRichard parece irritado.")

    al(1275)

    escLen("\nRICHARD:")
    escLen("\n— Vamos brincar um pouco então.")

    al(775)

    escLen("\nRICHARD:")
    escLen("\n— Vocês podem continuar pela trilha e encontrar os outros.")

    escLen("\nEle aponta para a esquerda.")

    al(975)

    escLen("\nRICHARD:")
    escLen("\n— Ou podem seguir pela mata fechada.")

    escLen("\nEle aponta para a direita.")

    al(975)

    escLen("\nBolota começa a rosnar novamente.")

    escLen("\nVocê sente o corpo ficar tenso.")

    escLen("\nRichard dá alguns passos para trás.")

    al(950)

    escLen("\nRICHARD:")
    escLen("\n— Vamos ver se vocês conseguem fugir direito.")

    escLen("\nEntão ele começa a contar regressivamente.")

    al(850)

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

		al(0)

		se(escolha1 == 1)
		{
			escLen("No momento em que as portas se abrem, o caos se instaura.")

			al(650)

			escLen("Você corre junto de Onix.")
			escLen("\nCentenas de não humanos tentam escapar ao mesmo tempo, empurrando, tropeçando e derrubando uns aos outros em uma tentativa desesperada de sobreviver.")

			al(850)

			escLen("Por enquanto, ninguém está atrás de vocês.")
			escLen("\nVocês atravessam o portão e correm o mais rápido que conseguem.")

			al(775)

			escLen("Os gritos ficam para trás.")
			escLen("\nA floresta surge à frente.")

			al(775)

			escLen("Você e Onix entram entre as árvores antes que os primeiros caçadores consigam alcançar vocês.")

			al(650)
		}

		senao se(escolha1 == 2)
		{
			escLen("Quando a porta se abre, você hesita.")
			escLen("\nPor alguns segundos, simplesmente observa.")

			al(750)

			escLen("A visão diante de você é horrível.")

			al(700)

			escLen("Não humanos correm desesperados enquanto são perseguidos pelos caçadores.")
			escLen("\nAlguns são derrubados.")
			escLen("\nOutros tentam lutar.")

			al(825)

			escLen("E, atrás deles, os ricos assistem àquilo como se fosse apenas mais uma forma de entretenimento.")

			al(750)

			escLen("Você finalmente tenta reagir.")
			escLen("\nTarde demais.")

			al(650)

			escLen("Uma flecha atravessa seu peito.")

			escreva("\n    _ \n")
			escreva(".-'` |___________________________////// \n")
			escreva("`'-._|                           \\\\\\\\\\\\ \n")

			al(5000)

			escLen("Seu corpo cai para trás.")
			escLen("\nA visão escurece.")

			al(900)

			escLen("FIM DE JOGO.")

			al(1000)

			escLen("NARRADOR:")
			escLen("\n— Na Caçada, hesitar também é uma escolha.")

			morreu()
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

			al(650)

			escLen("\nPor alguns minutos, nada acontece.")
			escLen("\nEntão você percebe.")

			al(750)

			escLen("\nAquela área não parece natural.")
			escLen("\nO terreno foi preparado.")

			al(700)

			escLen("\nVocês entraram em uma zona de observação.")
			escLen("\nUma pequena câmera se movimenta entre as árvores.")

			al(675)

			escLen("\nVocês foram detectados.")
			escLen("\nTigres foram soltos.")
			escLen("\nNão há como fugir...")

			al(975)

			morreu()
		}

		senao se(escolha2 == 2)
		{
			escLen("Você e Onix entram na mata fechada.")

			al(650)

			escLen("As árvores se tornam cada vez mais próximas.")
			escLen("\nGalhos e folhas dificultam a passagem.")
			escLen("\nMas também dificultam a visão.")

			al(850)

			escLen("\nPor enquanto, vocês estão fora do alcance dos caçadores.")

			al(750)
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

			al(850)

			escLen("Vocês acham que estão seguros,")
			escLen("\naté ouvir um rosnado...")

			escLen("\nAo mesmo tempo em que parece um único ser, é possível ouvir três.")

			al(1050)

			escLen("Não existe tempo de fuga ou reação.")
			escLen("\nNão há como fugir...")
			escLen("\nVocê morreu desmembrado.")

			al(950)

			morreu()
		}

		senao se(escolha3 == 2)
		{
			escLen("\nONIX:")
			escLen("\n— Tem algo se aproximando! Temos que sair daqui!")

			al(750)

			escLen("\nVocê segura o braço de Onix, impedindo-a de correr.")

			al(650)

			escreva("\n", nome, ": ")
			escLen("\n— Espera.")

			al(800)

			escLen("\nVocês esperam por alguns segundos, mas parece uma eternidade.")

			al(750)

			escLen("\nO medo cresce enquanto a criatura se aproxima, mas você sabe que sair do lugar não é uma opção.")

			escLen("\nExistem caçadores em todos os cantos. Antes morrer por uma criatura do que por um dos humanos.")

			al(900)

			escLen("\nA sombra da criatura é visível agora.")

			escLen("\nVocê fecha os olhos, abraçando a morte certa, até que os passos simplesmente param.")

			al(750)

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

     // Mimi
     
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

			al(750)

			escreva("\n", nome, ":")
			escLen("\n— Mas chamá-lo do quê? Eu nunca tive um cachorro!")

			al(750)

			escLen("\nONIX:")
			escLen("\n— Uhm... Que tal Destruidor de Galáxias?")

			al(750)

			escreva("\n", nome, ":")
			escLen("\n— Não! Eu não quero ter que gritar \"Destruidor de Galáxias, corre!\" o tempo todo!")

			al(800)

			escLen("\nONIX:")
			escLen("\n— Aff, tá. Então que tal Bolota?")
			
			al(750)

			escreva("\n", nome, ":")
			escLen("\n— Tipo o apelido que a gente deu praquele Orc cabeçudo?")

			al(750)

			escLen("\nONIX:")
			escLen("\n— O que morreu?")

			al(750)

			escreva("\n", nome, ":")
			escLen("\n— É, o que morreu!")

			al(750)

			escLen("\nONIX:")
			escLen("\n— Ah, então é! Bolota tipo ele!")

			al(750)

			escLen("\n~ COMPANHEIRO DESBLOQUEADO: Bolota ~")

			al(1250)

			limpa()
		}

		senao se(escolha4 == 2)
		{
			escLen("\nVocê faz carinho no cachorro, mas deixa ele lá.")

			al(650)

			escLen("\nEnquanto você e Onix adentram mais a fundo na floresta, vocês são rodeados por paredes pretas.")

			escLen("\nEm sua frente, a divindade primordial da morte se encontra.")

			al(1050)

			escLen("\nD/P:")
			escLen("\n— Vocês rejeitaram meu filho, logo, não os posso deixar livres.")

			al(750)

			escLen("\nLogo, você e Onix se encontram em uma fila de pessoas acorrentadas pelos pulsos.")

			escLen("\nVocês serão eternos servidores da Morte.")

			al(950)

			morreu()
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


     // Geo
     
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

     // ESCOLHA 8 (COM SUBESCOLHAS) - LUTA 
    	
     funcao escolhas8()
{
	inicioLutaFinal()
}

    // A LUTA
    
    cadeia art_definido = "o"
    cadeia pron_pessoal = "ele"
    cadeia desinencia_o = "o"

    inteiro hp_jogador = 100
    inteiro hp_richard = 150
    inteiro hp_onix = 80
	
     funcao carregarPronomes(){
	
	se (global_gen == "ela/dela/a" ou global_gen == "ela/dela")
	{
		art_definido = "a"
		pron_pessoal = "ela"
		desinencia_o = "a"
	}
	senao se (global_gen == "elx/delx" ou global_gen == "elx/delx/e")
	{
		art_definido = "e"
		pron_pessoal = "elx"
		desinencia_o = "e"
	  }
	senao
	{
		art_definido = "o"
		pron_pessoal = "ele"
		desinencia_o = "o"
	  }
}

     funcao inicioLutaFinal()
   {
	carregarPronomes()

	escLen("O CONFRONTO FINAL\n\n")
	
	escLen("Após a contagem regressiva, Richard Miller vira a cabeça lentamente, os encarando com olhos arregalados.\n")
	
	escLen("O ar fica gélido. A tensão é sufocante.\n\n")
	
	escLen("\"Como eu devo agir depressa? Não vou confiar nele...\" - pensa " + nome + ".\n\n")
	
	escLen("1) Atacar de surpresa\n")
	
	escLen("2) Empurrar Onix para fugir\n\n")
	   
	escLen("Escolha sua ação: ")

	inteiro escolha_inicial
	leia(escolha_inicial)

	limpa()

    se (escolha_inicial == 1)
	 {
		rotaA_AtacarSurpresa()
	 }
	senao se (escolha_inicial == 2)
	    {
		rotaB_EmpurrarOnix()
	    }
	senao
	{
		escLen("Escolha inválida! Tente de novo!\n")
		U.aguarde(1500)
		inicioLutaFinal()
	}
}

     funcao rotaA_AtacarSurpresa()
{
	escLen("Assim que " + nome + " se prepara para atacar...\n")
	
	escLen("Richard lançou a flecha em direção a " + nome + " bem antes.\n")
	
	escLen("A flecha teria " + art_definido + " acertado se Onix não tivesse entrado na frente.\n\n")
	
	escLen("-- ONIX!!\n\n")
	
	inteiro dano_flecha = sorteia(35, 50)
	hp_onix = hp_onix - dano_flecha
	
	escLen("A flecha atingiu a barriga dele.\n")
	
	escLen(nome + " imediatamente tenta verificá-lo, mas ele a empurra para trás.\n")
	
	escLen("-- Eu tô bem.\n")
	
	se (desinencia_o == "a")
	{
		escLen("-- Ah, sim, você está ótimo. - " + nome + " murmurou para si mesma enquanto se levantava da queda, suando de desespero.\n\n")
	}
	senao se (desinencia_o == "e")
	{
		escLen("-- Ah, sim, você está ótimo. - " + nome + " murmurou para si mesme enquanto se levantava da queda, suando de desespero.\n\n")
	}
	senao
	{
		escLen("-- Ah, sim, você está ótimo. - " + nome + " murmurou para si mesmo enquanto se levantava da queda, suando de desespero.\n\n")
	 }

	escLen("Richard apenas vira a cabeça de lado lentamente. A expressão era de pura antipatia.\n")
	
	escLen("Um movimento brusco! Onix apenas enxergou um borrão sumindo até sentir a presença por trás.\n")
	
	escLen("Onix desvia do ataque no exato milissegundo em que Richard avança, puxa o braço do vilão e o derruba no chão!\n")
	
	escLen(nome + " imediatamente corre na direção dos dois.\n\n")

	escLen("1) Parar e Observar atenciosamente, confiando em Onix\n")
	
	escLen("2) Dar uma Cacetada em Richard\n\n")
	
	escLen("Digite sua opção: ")

	inteiro decisao
	leia(decisao)
	limpa()

	se (decisao == 2)
	{
		escLen(nome + " entra na frente de Onix e tenta atingir Richard com um soco.\n")
		
		escLen("-- Você é fraco.\n\n")
		
		escLen("Foi a última coisa que " + nome + " ouviu de Richard antes de morrer.\n\n")
		
		exibirGameOver()
	}
	senao se (decisao == 1)
	{
		rotaA_ObservarEConfronto()
	}
	senao
	{
		escLen("Opção inválida!\n")
		U.aguarde(1500)
		rotaA_AtacarSurpresa()
	}
}

     funcao rotaA_ObservarEConfronto()
{
	escLen("Richard, assim que caiu no chão, levantou a perna. Um chute forte na mandíbula de Onix.\n")
	
	escLen("Assim que o atinge, Richard dá um mortal e pousa desviando da foice que Onix lançou, observando-o seriamente.\n")
	
	escLen("Onix se vira em direção a Richard.\n")
	
	escLen("-- Você age como se estivesse no controle de tudo, Miller.\n\n")
	
	escLen("Antes que Richard pudesse responder, ele apenas sente um líquido escorrer no seu peito.\n")

	inteiro dano_critico = sorteia(60, 80)
	hp_richard = hp_richard - dano_critico

	escLen("No mesmo segundo, sua visão ainda era Onix inclinado para trás, rindo com sangue nos dentes.\n")
	
	escLen("Ao olhar para debaixo do nariz, sua visão é a mão com as unhas afiadas de Onix atravessando seu peito por trás.\n")
	
	escLen("-- URGH!\n\n")
	
	escLen("Richard perdeu muito sangue quando Onix retirou a mão e o chutou para longe.\n")
	
	escLen("Enquanto é lançado, Richard rosna e se estabiliza de pé instantaneamente.\n")

	
	escLen("Ele lança várias flechas em direção a Onix por caminhos diferentes. Tão rápido quanto uma Águia.\n")
	
	escLen("Onix mantinha as mãos nos bolsos da calça, desviando de cada uma delas. Se movia para os lados como se estivesse entediado.\n")
	
	escLen("Assim que Richard salta para lançar uma flecha em direção ao seu coração, Onix salta para o lado, e tenta atingir um soco por trás de sua cabeça.\n")
	
	escLen("Richard desvia para baixo e chuta ele para longe.\n")
	
	escLen("Enquanto Onix voava para trás, encostando no chão às vezes, Richard salta em sua direção.\n")
	
	escLen("Onix desvia do lado e pousa sobre uma árvore gigante.\n\n")

	escLen("Uma tempestade começa. O chão fica escorregadio...\n")
	
	escLen("A água da chuva escorria pelo chapéu de cogumelo de Onix. Que estava ofegante.\n")
	
	escLen("Ele estava totalmente enfraquecido pela quantidade de sangue que perdeu pela barriga.\n")
	
	escLen("Onix caiu, batendo a cabeça no chão.\n\n")

	escLen("-- " + nome + ".\n")
	escLen("-- ONIX!\n\n")

	escLen(nome + " corre em direção a ele, as mãos trêmulas.\n")
	
	escLen("Onix fecha os olhos enquanto se encosta no tronco da árvore. Respira fundo.\n")
	
	escLen("-- Toque no meu cabelo e termine isso por mim.\n\n")

	escLen("1) Aceitar o poder de Onix\n")
	escLen("2) Ignorar, rir e sair correndo\n\n")
	
	escLen("Digite sua decisão: ")

	inteiro escolha_poder
	leia(escolha_poder)
	 limpa()

	se (escolha_poder == 2)
	{
		escLen("Onix chora enquanto a observa fugir, fechando os olhos.\n")
		
		escLen("Correndo pela floresta, " + nome + " tropeça enquanto é atingid" + desinencia_o + " por trás.\n")
		
		escLen("Richard acerta uma flecha em sua cabeça.\n\n")
		exibirGameOver()
	}
	senao se (escolha_poder == 1)
	{
		finalRotaA_VitoriaEpica()
	}
	senao
	{
		escLen("Opção inválida!\n")
		U.aguarde(1500)
		rotaA_ObservarEConfronto()
	}
}

     funcao finalRotaA_VitoriaEpica()
{
	escLen(nome + " agarra uma das tranças de Onix com a mão.\n")
	
	escLen("De repente, sente um vigor diferente.\n")
	
	escLen("Agora o mundo parecia bem mais devagar comparado a " + pron_pessoal + ".\n\n")
	
	escLen("Richard estava tentando se estabilizar para não cair. Enfraquecido, uma tontura insuportável.\n")
	
	escLen("-- ONDE ESTÃO VOCÊS?!\n")
	
	escLen("Richard segura seu arco e flecha tremendo enquanto mira para todos os lados. Exceto... para cima.\n\n")
	
	escLen("Richard olha para cima tarde demais.\n")
	
	escLen(nome + " segurava a foice de Onix, os olhos brilhando rosa claro.\n")
	
	escLen("O impacto acabou com a vida de Richard.\n\n")

	U.aguarde(1500)

	escLen("Dias após a luta, " + nome + " e Onix são reconhecidos pela população ao derrotar Richard Miller.\n")
	
	escLen(nome + " está sentad" + desinencia_o + " na beira do rio roxo, juntamente a outros elfos enquanto brincam de quem lança a pedra mais longe.\n")
	
	escLen(nome + " sorri, fecha os olhos enquanto inclina a cabeça para baixo e depois olha para cima.\n\n")
	
	escLen("\"O mundo voltou ao seu ritmo normal.\"\n")
	
	escLen("\"Menos eu.\"\n")
	
	escLen("\"Eu carregava os passos de quem ficou para trás.\"\n\n")

	exibirVitoria()
}

     funcao rotaB_EmpurrarOnix()
{
	escLen(nome + " empurrou Onix com força em direção aos arbustos.\n")
	
	escLen("Corre na direção oposta para distrair Richard.\n")
	
	escLen("Ao ouvir o barulho, Richard não hesita. Puxa a corda do arco e dispara um tiro cego na névoa.\n")
	
	escLen("Um grito desesperado e abafado ecoa.\n\n")
	
	escLen(nome + " para de correr e olha para trás.\n")
	
	escLen("Richard não atirou em " + pron_pessoal + ".\n")
	
	escLen("A flecha atingiu a perna de Onix, que caiu na lama.\n")
	
	escLen("Richard surge das sombras como um fantasma, caminhando lentamente até Onix com uma nova flecha engatilhada.\n\n")
	
	escLen("-- O jogo de esconde-esconde acabou. - disse Richard, com um olhar frio.\n\n")
	
	escLen(nome + " precisa agir imediatamente antes que Richard acabe com a vida de Onix.\n\n")

	escLen("1) Avançar rastejando pela lama para desarmar o arco de Richard\n")
	
	escLen("2) Atirar uma pedra na cabeça de Richard para chamar a atenção\n\n")
	
	escLen("Digite sua escolha: ")

	inteiro escolha_resgate
	
	leia(escolha_resgate)
	limpa()

	se (escolha_resgate == 1)
	{
		escLen(nome + " tenta deslizar silenciosamente pela lama, mas o chão escorregadio trai seus movimentos. O galho estala.\n")
		
		escLen("Richard gira o corpo num reflexo desumano.\n")
		
		escLen("-- Eu ouvi você.\n\n")
		
		escLen("Uma flecha atravessa o peito de " + nome + " antes mesmo de conseguir se levantar.\n")
		
		escLen("Onix grita ao fundo, mas a visão de " + nome + " escurece rapidamente.\n\n")
		
		exibirGameOver()
	}
	senao se (escolha_resgate == 2)
	{
		finalRotaB_SacrificioDeOnix()
	}
	senao
	{
		escLen("Opção inválida!\n")
		U.aguarde(1500)
		rotaB_EmpurrarOnix()
	}
}

     funcao finalRotaB_SacrificioDeOnix()
{
	escLen(nome + " segura uma pedra pesada do chão e a lançou com toda a fúria.\n")
	
	escLen("Acerta o ombro de Richard, desalinhando o arco dele.\n")
	
	escLen("Richard rosna de raiva e se vira para " + nome + ".\n\n")
	
	escLen("Esse segundo de distração era tudo que Onix precisava.\n")
	
	escLen("Mesmo com a perna ferida, Onix surge da lama. Suas unhas afiadas brilhando no escuro.\n")
	
	escLen("Num movimento desesperado, Onix avança e crava as garras diretamente no pescoço de Richard.\n\n")
	
	escLen("-- Você... subestimou a gente, Miller. - cospe Onix, ensanguentado.\n\n")
	
	escLen("Richard desaba morto na lama, sufocado pelo próprio sangue.\n\n")
	
	escLen("A tempestade começa a cair pesadamente, lavando o campo de batalha.\n")
	
	escLen(nome + " corre até Onix, mas o ferimento da flecha dele, misturado à lama contaminada da floresta, começa a paralisar o corpo dele.\n")
	
	escLen("Onix cai sentado, escorado em uma rocha.\n")
	
	escLen("Ele olha para a perna e depois para " + nome + ".\n\n")
	
	escLen("-- Nós vencemos... mas o veneno das flechas dele já se espalhou. Não há tempo.\n")
	
	escLen("Onix estende a mão trêmula, entregando seu chapéu de cogumelo e sua foice para " + nome + ".\n")
	
	escLen("-- Pegue isso. Saia deste lugar e conte a todos que os monstros de Tártaro não se renderam.\n\n")
	
	escLen("Onix fecha os olhos permanentemente sob a chuva.\n\n")

	U.aguarde(1500)

	escLen("Anos depois, " + nome + " está em uma taverna distante, longe de Tártaro.\n")
	
	escLen("O chapéu de cogumelo de Onix está pendurado na parede como uma relíquia.\n")
	
	escLen(nome + " toma um gole de sua bebida, olhando para a foice descansando ao lado da mesa.\n\n")
	
	escLen("\"Ganhamos a liberdade que ele tanto queria..\"\n")
	
	escLen("\"Mas o gosto da lama e da chuva nunca sairá da minha boca.\"\n\n")

	exibirVitoria()
}

     funcao exibirGameOver()
{
	morreu()
}

     funcao exibirVitoria()
  {
	escLen("FIM DA HISTÓRIA.\n")
	U.aguarde(2000)
	limpa()
  }	
	
	funcao morreu(){	

 		cadeia continuar

 		escreva("/n:::::::::: ::::::::::: ::::    ::::     :::::::::  ::::::::::    ::::::::::: ::::::::   ::::::::   ::::::::  \n")
		escreva(":+:            :+:     +:+:+: :+:+:+    :+:    :+: :+:               :+:    :+:    :+: :+:    :+: :+:    :+: \n")
		escreva("+:+            +:+     +:+ +:+:+ +:+    +:+    +:+ +:+               +:+    +:+    +:+ +:+        +:+    +:+ \n")
		escreva(":#::+::#       +#+     +#+  +:+  +#+    +#+    +:+ +#++:++#          +#+    +#+    +:+ :#:        +#+    +:+ \n")
		escreva("+#+            +#+     +#+       +#+    +#+    +#+ +#+               +#+    +#+    +#+ +#+   +#+# +#+    +#+ \n")
		escreva("#+#            #+#     #+#       #+#    #+#    #+# #+#           #+# #+#    #+#    #+# #+#    #+# #+#    #+# \n")
		escreva("###        ########### ###       ###    #########  ##########     #####      ########   ########   ########  \n")
 		U.aguarde(2000)
 		limpa()
 		escLen("\nTrabalho feito por Geovana, Izabel, Yasmin e Joyce.")
 		U.aguarde(2000)

 		escLen("\nPressione enter para recomeçar o jogo!")
 		leia(continuar)
 		limpa()

 		inicio()
	}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */