programa
{

  inclua biblioteca Util --> u
  inclua biblioteca Matematica --> m

   inteiro vida_jogador_max = 100
   inteiro vida_jogador = 10
   inteiro vida_inimigo_max = 100
   inteiro vida_inimigo = 100
   inteiro dano_j = 10 //jogado
   inteiro dano_b = 20 // boss
   inteiro escolhas



	funcao inicio()
	{

		linha()// MENU INICIAL
      escreva("___ ___ ___  _   _ ___ ___ _____ ___  ___    ___   ___    __  __  ___   _   ___ \n")
      escreva("/ __| __/ _ \\| | | | __/ __|_   _| _ \\/ _ \\  |   \\ / _ \\  |  \\/  |/ _ \\ /_\\ |_ _|\n")
      escreva("\\__ \\ _| (_) | |_| | _|\\__ \\ | | |   / (_) | | |) | (_) | | |\\/| | (_) / _ \\ | |\n")
      escreva("|___/___\\__\\_\\\\___/|___|___/ |_| |_|_\\\\___/  |___/ \\___/  |_|  |_|\\___/_/ \\_\\___|\n")
      linha()	
      //u.aguarde(1000)	

      escreva("                               ^              \n")
      escreva("                _______     ^^^             \n")
      escreva("               |xxxxxxx|  _^^^^^_           \n")
      escreva("               |xxxxxxx| | [][]  |          \n")
      escreva("            ______xxxxx| |[][][] |          \n")
      escreva("           |++++++|xxxx| | [][][]|          \n")
      escreva("           |++++++|xxxx| |[][][] |          \n")
      escreva("           |++++++|_________ [][]|          \n")
      escreva("           |++++++|=|=|=|=|=| [] |          \n")
      escreva("           |++++++|=|=|=|=|=|[][]|          \n")
      escreva("___________|++HH++|  _HHHH__|   _________   \n")
      escreva("         _______________   ______________   \n")
      escreva("==================  ===========    ==========  \n")



     linha()
     escreva("PRESSIONE [1] PARA INICIAR O JOGO :  ")
     leia(escolhas)
     // u.aguarde(1000)
     limpa()


    linha() // AVISO! sobre como o jogo funciona etc.
      escreva("   ___   _____ ___  ___  _ _ _ \n")
      escreva("  /_\\ \\ / /_ _/ __|/ _ \\| | | | \n")
      escreva(" / _ \\ V / | |\\__ \\ (_) |_|_|_| \n")
      escreva("/_/ \\_\\_/ |___|___/\\___/(_|_|_) \n")
     linha()
     escreva("  -AS AÇÕES A SEGUIR NO JOGO SÃO IMUTAVEIS! ENTÃO TOME CUIDADO. \n  -E CASO VOCÊ ERRE ALGUMAS ESCOLHA FORA DO COMBATE SEU JOGO SERÁ ENCERRADO, ENTÃO TENHA CERTEZA DE COLOCAR O CARACTERE CORRETO E PRESSIONAR [ENTER]. \n ")
     linha()
     escreva("PRESSIONE [1] PARA CONTINUAR : ")
     leia(escolhas)
     //u.aguarde(1000)
     limpa()


    linha() // INTRO
     escreva(" ___ _  _ _____ ___  ___  \n")
     escreva(" |_ _| \\| |_   _| _ \\/ _ \\ \n")
     escreva("  | || .` | | | |   / (_) | \n")
     escreva(" |___|_|\\_| |_| |_|_\\\\___/  \n")
     linha()
    // u.aguarde(1000)
     escreva("    -Moai era um famoso degustador de vinho, que perdeu sua fama após ser acusado de ser uma farsa.\n  Embora ele tenha uma vida tranquila em sua humilde residencia localizada na Califórnia, \n com o dinheiro que conseguiu na sua epóca de fama. \n   Ele não imaginava que ia ter uma mudança que iria mudar a sua vida completamente. \n")
     linha()
     escreva("PRESSIONE [1] PARA CONTINUAR : ")
     leia(escolhas)
     limpa()
     //u.aguarde(1000)


     linha()
     escreva(" ___ _  _ _____ ___  ___  \n")
     escreva(" |_ _| \\| |_   _| _ \\/ _ \\ \n")
     escreva("  | || .` | | | |   / (_) | \n")
     escreva(" |___|_|\\_| |_| |_|_\\\\___/  \n")
     linha()
    // u.aguarde(1000)
     escreva("   -Certo dia enquanto Moai estava relaxando em sua casa cuidando de sua coleção de vinhos requintados e regando seu jardim de espécies raras. \n  Quando de repente escuta um barulho na cozinha, e vai verificar. \n  Chegando lá ele se depara com uma pessoa que nunca viu na vida com o rosto completamente coberto, \n E antes mesmo que ele possa reagir, ele só escuta um som : BONK! \n E desmaia.\n")
     linha()
     escreva("PRESSIONE [1] PARA CONTINUAR : ")
     leia(escolhas)
     limpa()
     //u.aguarde(1000)


    linha()// INICIO DO JOGO APRESENTANDO O OBJETIVO E APARECENDO NA AREA INICIAL ( SPAWN )
     escreva("     ______   _______      _____  ________  ________  ______  __     __   ______                    ______    ______   _______   _______   ________  __     __  ______  __     __   ______  \n")
     escreva(" /      \\ |       \\    |     \\|        \\|        \\|      \\|  \\   |  \\ /      \\                  /      \\  /      \\ |       \\ |       \\ |        \\|  \\   |  \\|      \\|  \\   |  \\ /      \\ ", "\n")
     escreva("|  $$$$$$\\| $$$$$$$\\    \\$$$$$| $$$$$$$$ \\$$$$$$$$ \\$$$$$$| $$   | $$|  $$$$$$\\       __       |  $$$$$$\\|  $$$$$$\\| $$$$$$$\\| $$$$$$$\\| $$$$$$$$| $$   | $$ \\$$$$$$| $$   | $$|  $$$$$$\\" ,"\n")
     escreva("| $$  | $$| $$__/ $$      | $$| $$__       | $$     | $$  | $$   | $$| $$  | $$      |  \\      | $$___\\$$| $$  | $$| $$__/ $$| $$__| $$| $$__    | $$   | $$  | $$  | $$   | $$| $$__| $$\n")
     escreva("| $$  | $$| $$    $$ __   | $$| $$  \\      | $$     | $$   \\$$\\ /  $$| $$  | $$       \\$$       \\$$    \\ | $$  | $$| $$    $$| $$    $$| $$  \\    \\$$\\ /  $$  | $$   \\$$\\ /  $$| $$    $$\n")
     escreva("| $$  | $$| $$$$$$$\\|  \\  | $$| $$$$$      | $$     | $$    \\$$\\  $$ | $$  | $$       __        _\\$$$$$$\\| $$  | $$| $$$$$$$\\| $$$$$$$\\| $$$$$     \\$$\\  $$   | $$    \\$$\\  $$ | $$$$$$$$\n")
     escreva("| $$__/ $$| $$__/ $$| $$__| $$| $$_____    | $$    _| $$_    \\$$ $$  | $$__/ $$      |  \\      |  \\__| $$| $$__/ $$| $$__/ $$| $$  | $$| $$_____    \\$$ $$   _| $$_    \\$$ $$  | $$  | $$\n")
     escreva(" \\$$    $$| $$    $$ \\$$    $$| $$     \\   | $$   |   $$ \\    \\$$$    \\$$    $$       \\$$       \\$$    $$ \\$$    $$| $$    $$| $$  | $$| $$     \\    \\$$$   |   $$ \\    \\$$$   | $$  | $$\n")
     escreva("  \\$$$$$$  \\$$$$$$$   \\$$$$$$  \\$$$$$$$$    \\$$    \\$$$$$$     \\$      \\$$$$$$                   \\$$$$$$   \\$$$$$$  \\$$$$$$$  \\$$   \\$$ \\$$$$$$$$     \\$     \\$$$$$$     \\$     \\$$   \\$$\n \n")
     escreva("(opcional)")
     linha()
     //u.aguarde(1000)
     escreva("PRESSIONE [1] PARA CONTINUAR : ")
     leia(escolhas)

     limpa()
     //u.aguarde(1000)
     linha()
      escreva("             ___     \n")
      escreva("        ,-'","'___'","'-. \n")
      escreva("       .;'","''| |`'","':. \n")
      escreva("       || | | | | || \n")
      escreva("       ||_|_|_|_|_|| \n")
      escreva("      //          /| \n")
      escreva("     /__         //| \n")
      escreva(" ,-'","'___'","'-.    //|| \n")
      escreva(".;'","''| |`'", "':.  //   \n")
      escreva("||/| | | | || //    \n")
      escreva("||_|_|_|_|_||//     \n")
      escreva("||_________||/      \n")
      escreva("||         ||       \n")
      escreva("''         ''     \n")
     linha()
    // u.aguarde(1000)
     escreva("  -Após um longo tempo demasiado desmaiado Moai acorda com o frio de um chão gelado. \n Aos poucos recuperando seus sentidos ele tenta compreender a situação em que se encontra e decide analisar os arredores, \n e ele percebe que se encontra numa cela com um conchão mofado e um buraco de fossa ele também percebe que sua cela está com a porta aberta, \n e que tem apenas uma  única luz visivel em um corredor a frente. \n")
     linha()
     escreva("PRESSIONE [1] PARA CONTINUAR : ")
     leia(escolhas)
     limpa()
     //u.aguarde(1000)



    linha() // CORREDOR COM O CORPSE
     escreva("___ ___  ___ ___ ___ ___   ___  ___ \n")
     escreva("  / __/ _ \\| _ \\ _ \\ __|   \\ / _ \\| _ \\ \n")
     escreva(" | (_| (_) |   /   / _|| |) | (_) |   / \n")
     escreva("  \\___\\___/|_|_\\_|_\\___|___/ \\___/|_|_\\ \n")      
     linha()
     // u.aguarde(1000)
     escreva(" -Moai ao chegar no corredor, ele se depara com algo que nunca experenciou antes, \n algo que nínguem!! deveria sofrer, ele se depara com uma cena que o deixa HORRORIZADO!! \n")
     linha()
     escreva("PRESSIOE [1] PARA CONTINUAR : ")
     leia(escolhas)
     limpa()
     //u.aguarde(1000)


      linha()
     escreva("___ ___  ___ ___ ___ ___   ___  ___ \n")
     escreva("  / __/ _ \\| _ \\ _ \\ __|   \\ / _ \\| _ \\ \n")
     escreva(" | (_| (_) |   /   / _|| |) | (_) |   / \n")
     escreva("  \\___\\___/|_|_\\_|_\\___|___/ \\___/|_|_\\ \n")      
     linha()
     //u.aguarde(1000)

       escreva("                           ,--.             \n")
       escreva("                          {    }            \n")
       escreva("                          K,   }            \n")
       escreva("                         /  `Y`             \n")
       escreva("                    _   /   /               \n")
       escreva("                   {_'-K.__/                \n")
       escreva("                     `/-.__L._              \n")
       escreva("                     /  ' /`\\_}             \n")
       escreva("                    /  ' /                  \n")
       escreva("            ____   /  ' /                   \n")
       escreva("     ,-'~~~~    ~~/  ' /_                   \n")
       escreva("   ,'             ``~~~%%',                 \n")
       escreva("  (                     %  Y                \n")
       escreva(" {                      %% I                \n")
       escreva("{      -                 %  `.              \n")
       escreva("|       ',                %  )              \n")
       escreva("|        |   ,..__      __. Y               \n")
       escreva("|    .,_./  Y ' / ^Y   J   )|               \n")
       escreva("\\           |' /   |   |   ||               \n")
       escreva(" \\          L_/    . _ (_,.'(               \n")
       escreva("  \\ ,   ,      ^^\"\"' / |      )              \n")
       escreva("    \\_  \\          /,L]     /               \n")
       escreva("      '-_`-,       ` `   ./`                \n")
       escreva("         `-(_            )                  \n")
       escreva("             ^^\\..___,.--`             \n")
       linha()
       //u.aguarde(1000)
       escreva("PRESSIONE [1] PARA CONTINUAR : ")
       leia(escolhas)
        //u.aguarde(1000)
       limpa()


	    linha()
      escreva("___ ___  ___ ___ ___ ___   ___  ___ \n")
     escreva("  / __/ _ \\| _ \\ _ \\ __|   \\ / _ \\| _ \\ \n")
     escreva(" | (_| (_) |   /   / _|| |) | (_) |   / \n")
     escreva("  \\___\\___/|_|_\\_|_\\___|___/ \\___/|_|_\\ \n")      
     linha()
      // u.aguarde(1000)
      escreva(" -Após Moai ver um corpo completamente decomposto e irreconhecível. \n Ele fica em choque com a cena e tira um tempo pra se recompor, e decide investigar mais ao redor, \n e se depara com com mais corpos no caminho e encontra um ainda que não foi completamente decomposto, \n perto dele havi uma garrafa de vinho quebrada e um bilhete , que tinha algo escrito : \n ")
      escreva("  'AQUELE BABACA FICOU COMPLETAMENTE INSANO!!! ele prendeu a gente aqui só com um vinho estranho, \n algumas pessoas ja até morreram após beberem o vinho, eu não tenho a minima ideia do que ele ta pensando , para deixar até mesmo seus subordinados aqui, \n ele aparecia enquanto todos estavam dormindo e colocava mais uma pessoa e falava como 'Não Serve' , \n EU JA CANSEI DISSO!! , eu vo acabar com isso.' \n")
      linha()
      escreva(" ARMA ADQUIRIDA : GARRAFA DE VINHO [ATK (10 ~ 20)] \n ")
      linha()
      escreva("PRESSIONE [1] PARA CONTINUAR : ")
      leia(escolhas)
      //u.aguarde(100)
      limpa()
    escreva("___ ___  ___ ___ ___ ___   ___  ___ \n") 
     escreva("  / __/ _ \\| _ \\ _ \\ __|   \\ / _ \\| _ \\ \n")
     escreva(" | (_| (_) |   /   / _|| |) | (_) |   / \n")
     escreva("  \\___\\___/|_|_\\_|_\\___|___/ \\___/|_|_\\ \n")      
     linha()
     // u.aguarde(1000)
     escreva(" -Ao terminar de ler Moai começa a se questionar a quanto tempo ele está ali, \n e também percebe três caminhos e com duvidas e medos ele continuar a avançar em meio as trevas, \n procurando uma saída desse profundo abismo. \n")
     linha()
     escreva("PRESSIONE [1] PARA CONTINUAR : ")
     leia(escolhas)
     //u.aguarde(1000)
     u.aguarde(1000)

    limpa() //MOMENTO DA ESCOLHA FD
       linha()
       escreva("_   _ __  __    _       ___ ___  ___ ___  _    _  _   _   _ _ _ \n")
        escreva("| | | |  \\/  | /_\\     | __/ __|/ __/ _ \\| |  | || | /_\\ | | | |\n")
        escreva("| |_| | |\\/| |/ _ \\    | _|\\__ \\ (_| (_) | |__| __ |/ _ \\|_|_|_|\n")
       escreva(" \\___/|_|  |_/_/ \\_\\   |___|___/\\___\\___/|____|_||_/_/ \\_(_|_|_)\n")
       linha()
       escreva(" -Após passar horas e horas caminhando em meio a escuridão, \n Moai se ve na necessidade de realizar uma escolha naquele lugar, \n Ele percebe dois caminhos, sem saber do quão grande é esse bunker ele percebe que ele não poder voltar após fazer a sua decisão.  \n")
        linha()
       escreva(" -------  SEGUIR PELA ESQUERDA [1]?   ------------  SEGUIR PELA DIREITA [2]? -----------")
       escreva("ESCOLHA UMA ALTERNATIVA..... : ")
       leia(escolhas)


       escolha (escolhas)
        {
         caso 1 :

          escreva("FINAL BOM TU TA VIVO !!!")//AQUI VAI TA A FUNÇÃO QUE VAI DA NO FINAL BOM
          pare
         caso 2 : 
           direita_mal()
          escreva("FINAL RUIM TU FICO PRESO!!!")//AQUI VAI TA A FUNÇÃO QUE VAI DA NO FINAL RUIM
           pare
         caso contrario : 
          escreva("opção invalida")

        }        		
	}
  funcao direita_mal(){//caminho pro fimal ruim

    limpa()
    linha()
    escreva("  ______  _____  _____ _____  _____ _______ __  _____  _____ ____  \n")
    escreva(" |  ____|/ ____|/ ____|  __ \\|_   _|__   __/_/ |  __ \\|_   _/ __ \\ \n")
    escreva(" | |__  | (___ | |    | |__) | | |    | | / _ \\| |__) | | || |  | | \n")
    escreva(" |  __|  \\___ \\| |    |  _  /  | |    | || | | |  _  /  | || |  | | \n")
    escreva(" | |____ ____) | |____| | \\ \\ _| |_   | || |_| | | \\ \\ _| || |__| | \n")
    escreva(" |______|_____/ \\_____|_|  \\_\\_____|  |_| \\___/|_|  \\_\\_____\\____/  \n")
    linha()

    escreva(" -Após tomar sua decisão, Moai decide seguir pelo caminho da direita. \n No final do corredor escuro, encontra uma porta e ao abri-la. \n Ele encontra um escritório completamente destruído. \n")
    linha()
    escreva("PRESSIONE [1] PARA CONTIUNAR : 1")
    leia(escolhas)
    limpa()
    
   linha()
   escreva("  ______  _____  _____ _____  _____ _______ __  _____  _____ ____  \n")
   escreva(" |  ____|/ ____|/ ____|  __ \\|_   _|__   __/_/ |  __ \\|_   _/ __ \\ \n")
   escreva(" | |__  | (___ | |    | |__) | | |    | | / _ \\| |__) | | || |  | | \n")
   escreva(" |  __|  \\___ \\| |    |  _  /  | |    | || | | |  _  /  | || |  | | \n")
   escreva(" | |____ ____) | |____| | \\ \\ _| |_   | || |_| | | \\ \\ _| || |__| | \n")
   escreva(" |______|_____/ \\_____|_|  \\_\\_____|  |_| \\___/|_|  \\_\\_____\\____/  \n")
   linha()

   escreva(" -Ao vasculhar o escritório, a única coisa intacta, era um copo de whisky. \n Moai então, pegou o copo e seguiu em direção a saida da sala. \n")
   linha()
   escreva(" MAGIA ADIQUIRIDA : COPO DE WHISKY [ITEM/MAGIA DE CURA] \n")
   linha()
   escreva("PRESSIONE [1] PARA CONTINUAR : ")
   leia(escolhas)
   limpa()

   linha()
   escreva("   _____         _                 ______  _____ _______ _____            _   _ _    _          \n")
   escreva("  / ____|  /\\   | |        /\\     |  ____|/ ____|__   __|  __ \\     /\\   | \\ | | |  | |   /\\    \n")
   escreva(" | (___   /  \\  | |       /  \\    | |__  | (___    | |  | |__) |   /  \\  |  \\| | |__| |  /  \\   \n")
   escreva("  \\___ \\ / /\\ \\ | |      / /\\ \\   |  __|  \\___ \\   | |  |  _  /   / /\\ \\ | . ` |  __  | / /\\ \\  \n")
   escreva("  ____) / ____ \\| |____ / ____ \\  | |____ ____) |  | |  | | \\ \\  / ____ \\| |\\  | |  | |/ ____ \\ \n")
   escreva(" |_____/_/    \\_\\______/_/    \\_\\ |______|_____/   |_|  |_|  \\_\\/_/    \\_\\_| \\_|_|  |_/_/    \\_\\\n")
   linha()

   escreva(" -Saindo do escritório, Moai segue o corredor a sua frente, sendo guiado por uma trilha de sangue e símbolos estranhos. \n Quando ele entra em uma sala completamente escura. \n Mas ao dar alguns passos pra fente, as luzes se acendem completamente, revelendo uma sala enorme.")
   linha()
   escreva("PRESSIONE [1] PARA CONTINUAR : ")
   leia(escolhas)
   limpa()
   
   linha()
   escreva("   _____         _                 ______  _____ _______ _____            _   _ _    _          \n")
   escreva("  / ____|  /\\   | |        /\\     |  ____|/ ____|__   __|  __ \\     /\\   | \\ | | |  | |   /\\    \n")
   escreva(" | (___   /  \\  | |       /  \\    | |__  | (___    | |  | |__) |   /  \\  |  \\| | |__| |  /  \\   \n")
   escreva("  \\___ \\ / /\\ \\ | |      / /\\ \\   |  __|  \\___ \\   | |  |  _  /   / /\\ \\ | . ` |  __  | / /\\ \\  \n")
   escreva("  ____) / ____ \\| |____ / ____ \\  | |____ ____) |  | |  | | \\ \\  / ____ \\| |\\  | |  | |/ ____ \\ \n")
   escreva(" |_____/_/    \\_\\______/_/    \\_\\ |______|_____/   |_|  |_|  \\_\\/_/    \\_\\_| \\_|_|  |_/_/    \\_\\\n")
   linha()

   escreva(" -A sala estava repleta de símbolos estranhos, mas ao olhar em direção da trilha de sangue, seu corpo congelou. \n Havia uma pilha de corpos dentro so que parecia ser um círculo de ritual. \n E desenhando esse círculo, estava um robô gigante, ue parecia não ter notado sua presença ainda.")
   linha()
   escreva("PRESSIONE [1] PARA CONTINUAR : ")
   leia(escolhas)
   limpa()

   linha()
   escreva("   _____         _                 ______  _____ _______ _____            _   _ _    _          \n")
   escreva("  / ____|  /\\   | |        /\\     |  ____|/ ____|__   __|  __ \\     /\\   | \\ | | |  | |   /\\    \n")
   escreva(" | (___   /  \\  | |       /  \\    | |__  | (___    | |  | |__) |   /  \\  |  \\| | |__| |  /  \\   \n")
   escreva("  \\___ \\ / /\\ \\ | |      / /\\ \\   |  __|  \\___ \\   | |  |  _  /   / /\\ \\ | . ` |  __  | / /\\ \\  \n")
   escreva("  ____) / ____ \\| |____ / ____ \\  | |____ ____) |  | |  | | \\ \\  / ____ \\| |\\  | |  | |/ ____ \\ \n")
   escreva(" |_____/_/    \\_\\______/_/    \\_\\ |______|_____/   |_|  |_|  \\_\\/_/    \\_\\_| \\_|_|  |_/_/    \\_\\\n")
   linha()

   escreva(" -Mas ao tentar se aproximar mais, o robô nota sua presença. \n Se virando para ele e dizendo: \n Olha só quem apareceu? Se não é MOAI, o famoso degustador de vinhos. Eu estava pensando que todos já estavam mortos, mas parece ue a peça restante veio até mim. Mas não fique triste, pois sua vida servirá a um nobre propósito. Agora SUCUMBA!!!")
   linha()
   escreva("PRESSIONE [1] PARA CONTINUAR : ")
   leia(escolhas)
   limpa()
   //comeca o combate
   //termina o combate

   

  }
	funcao linha(){ // TRAÇA UMA LINHA
		escreva("=============================================================================================================================================================================================\n")

	  }
  funcao grimorio(){ //Desenha o lIvro do "Grimorio"

    escreva("  ############################################    \n")
    escreva("########            ##########        ##########  \n")
    escreva("####                  ####                  ####  \n")
    escreva("####    ##########    ####    ##########    ####  \n")
    escreva("####  ##############  ####  ##############  ####  \n")
    escreva("####                  ####                  ####  \n")
    escreva("####    ##########    ####    ##########    ####  \n")
    escreva("####  ##############  ####  ##############  ####  \n")
    escreva("####                  ####                  ####  \n")
    escreva("####    ##########    ####    ##########    ####  \n")
    escreva("####  ##############  ####  ##############  ####  \n")
    escreva("####                  ####                  ####  \n")
    escreva("####                  ####                  ####  \n")
    escreva("####  ##########################################  \n")
    escreva("################################################  \n")
    escreva("############          ####          ############  \n")

   }
}
