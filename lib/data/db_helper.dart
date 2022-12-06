import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "astros2.db");
    Database database =
        await openDatabase(path, version: 1, onCreate: onCreate);

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    /********** USUÁRIOS **********/

    String sql =
        "CREATE TABLE user (username varchar(100) PRIMARY KEY, password varchar(100))";
    await db.execute(sql);

    sql =
        "INSERT INTO user (username, password) VALUES ('astronauta@gmail.com', '40028922')";
    await db.execute(sql);

    /****************  Questões  ***************/

    //BANCO_QUESTOES
    String sqlquestion =
        "CREATE TABLE QUESTOES (imagem varchar(100), titulo varchar(400), alternativa1 varchar(100), alternativa2 varchar(100), alternativa3 varchar(100), alternativa4 varchar(100), alternativa5 varchar(100), alternativa_certa number);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Size_planets_comparison.jpg/1280px-Size_planets_comparison.jpg', 'Vivemos no planeta Terra. Além dele, existem outros sete girando em torno do Sol, cujos nomes esperamos que já saiba. Então, responda: Quantos planetas têm somente 5 letras em seu nome? Assinale a única alternativa correta.', '4', '3', '2', '5', '6', 1);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://1.bp.blogspot.com/-g0sTX70IkYE/XqMWxgrVPqI/AAAAAAAAdS4/3GW2FyrxmA4at_WzndS3Q9SD-yFGsFAbACLcBGAsYHQ/s1600/dia-e-noite-003.jpg', 'Tudo no Universo se move. O que explica a alternância entre a noite e o dia claro? Assinale a única alternativa correta. ', 'À noite a Terra entra na sombra da Lua.', 'A rotação do Sol.', 'A rotação da Terra.', 'À noite o Sol não brilha', 'À noite um Buraco Negro bloqueia a luz do Sol. ', 3);";
    await db.execute(sqlquestion);

    sqlquestion =
        "INSERT INTO QUESTOES (imagem, titulo, alternativa1, alternativa2, alternativa3, alternativa4, alternativa5, alternativa_certa) VALUES ('https://www.eusemfronteiras.com.br/wp-content/uploads/2020/02/81863403_s-810x519.jpg', 'Vamos fazer uma viagem espacial. Vamos começar indo para o mesmo local onde foram os astronautas, em 1969. Qual é o nome deste lugar? Uma dica: este lugar fica “pertinho”, ou seja, só cerca de 400.000 quilômetros. Assinale a única alternativa correta.', 'Plutão', 'Urano', 'Marte', 'Vênus', 'Lua', 5);";
    await db.execute(sqlquestion);

    /*************  Indicações  ***************/

    //principal_indicacoes
    String sql_princind =
        "CREATE TABLE principal_indicacoes (tituloCard varchar(200), imagem varchar(100))";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Canais do YouTube', 'https://cdn.iconscout.com/icon/free/png-256/youtube-268-721990.png')";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Sites', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Website.png')";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Livros e materiais diversos', 'https://publicdomainvectors.org/photos/StackOfBooks.png')";
    await db.execute(sql_princind);

    sql_princind =
        "INSERT INTO principal_indicacoes (tituloCard, imagem) VALUES ('Outras Redes', 'https://c.pxhere.com/images/48/55/ea3e6a6c6dc4c0aad03ba603702e-1564111.jpg!d')";
    await db.execute(sql_princind);

    // subpages_indicacoes

    String sql_subind =
        "CREATE TABLE subpages_indicacoes (tituloCard varchar(200), imagem varchar(100), texto varchar(400), textBotao varchar(100), link varchar(100), tipoIndicacao varchar(100));";
    await db.execute(sql_subind);

    // -> youtube

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'Canais do YouTube');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'Canais do YouTube');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('ABF - AstrobioFísica', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Ministradas pelo propfessor Virgílio, as aulas do canal ABF - AstrobioFísica para astonomia, guiam o aluno desde os conceitos básicos da astronomia até demonstrações de fórmulas da astrofísica. É uma excelente opção para os que desejam se aventurar nas oimpíadas de astronomia, em especial a OBA e as seletivas para as olipíadas internacionais de astronomia.', 'Visite o canal', 'https://www.youtube.com/c/ABFAstroBioF%C3%ADsica', 'Canais do YouTube');";
    await db.execute(sql_subind);

    // -> site

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'Sites');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'Sites');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Site da OBA', 'https://www.ifpe.edu.br/campus/caruaru/noticias/participe-da-olimpiada-brasileira-de-astronomia-e-astronautica/oba.png/@@images/image.png', 'O site da OBA é muito importante de ser visitado àqueles que querem entender os detalhes da olimpíada em questão, desde provas até logística. Há também materiais voltados às seletivas de astronomia.', 'Visite o site', 'http://www.oba.org.br/site/', 'Sites');";
    await db.execute(sql_subind);

    // -> livro

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'Livros e materiais diversos');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'Livros e materiais diversos');";
    await db.execute(sql_subind);

    sql_subind =
        "INSERT INTO subpages_indicacoes (tituloCard, imagem, texto, textBotao, link, tipoIndicacao) VALUES ('Guia para seletivas online', 'http://noic.com.br/wp-content/uploads/2014/04/cropped-NOIC-Matheus-c%C3%B3pia.png', 'Este artigo do NOIC mostra indicações gerais para a seletiva, vindas de um grupo de estudantes que tem propriedade de fala.', 'Veja o livro', 'https://noic.com.br/wp-content/uploads/2021/08/Guia_Seletivas_Online.pdf', 'Livros e materiais diversos');";
    await db.execute(sql_subind);

    // -> redes

    String sql_redes =
        "CREATE TABLE redes_indicacoes (nome varchar(200), imagem varchar(100), texto varchar(400), linkInsta varchar(100), linkTel varchar(100), tipoIndicacao varchar(100));";
    await db.execute(sql_redes);

    sql_redes =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'Outras Redes');";
    await db.execute(sql_redes);

    sql_redes =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'Outras Redes');";
    await db.execute(sql_redes);

    sql_redes =
        "INSERT INTO redes_indicacoes (nome, imagem, texto, linkInsta, linkTel, tipoIndicacao) VALUES ('Virgílio', 'https://yt3.ggpht.com/ytc/AMLnZu95CkFKE3pg_bZJwKip8kUhvSaIlk1LeSfKu9GuaA=s900-c-k-c0x00ffffff-no-rj', 'Sim, ele mesmo. O dono do canal ABF! :)', 'https://www.instagram.com/abf_astrobiofisica/', 'https://t.me/s/astronomia_abf', 'Outras Redes');";
    await db.execute(sql_redes);

    /********* NOTICIAS *********/

    String sqlnoticias =
        "CREATE TABLE NOTICIAS (imagem varchar(100), titulo varchar(100) PRIMARY KEY, id varchar(100))";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not1.jpg', 'Brasil lança novo foguete nacional', 'NoticiaI()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not2.jpg', 'SQL funcioou galeraa!!!', 'NoticiaII()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not3.jpg', 'Scott e Chichi promoverão cursos sobre astronomia; saiba como participar', 'NoticiaIII()')";
    await db.execute(sqlnoticias);

    sqlnoticias =
        "INSERT INTO NOTICIAS (imagem, titulo, id) VALUES ('assets/not1.jpg', 'Professor de astronomia de Bauru explica como observar pico de chuva de meteoros visível na região', 'NoticiaIV()')";
    await db.execute(sqlnoticias);

    /******* ASSUNTOS *******/

    //CREATE TABLE

    String sqlassunto =
        "CREATE TABLE assuntos (genero varchar(100), titulo varchar(100), imagem varchar(200), rota varchar(100), conteudo varchar(7500))";
    await db.execute(sqlassunto);

    //INSERT INTO

    //ASTRONAUTICA

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota, conteudo) VALUES ('astronautica', 'Ângulos de Êuler', 'assets/ang_euler.png', 'Angulos_De_Euler()', 'Os Ângulos de Euler foram formulados por Leonard Euler para descreverem a orientação de um corpo rígido girante em um espaço euclidiano tridimensional. Neste caso, é útil fazer-se uso de dois sistemas de coordenadas: um sistema inercial fixo e outro que gira junto ao corpo em rotação. Para especificar a orientação do corpo girante em relação ao sistema inercial faz-se uso de três ângulos independentes. Estes são os ângulos de Euler.\n')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota, conteudo) VALUES ('astronautica', 'Aplicações da Astronáutica', 'assets/apl_astronautica.jpg', 'Aplicacoes_Da_Astronautica()', 'Desde o lançamento do satélite Sputnik em 1957 — o primeiro objeto enviado à órbita da Terra na história —, a tecnologia espacial evoluiu a passos largos, permitindo que a humanidade pisasse na Lua, que existisse uma estação espacial em órbita abrigando turmas periódicas de astronautas, e que sondas científicas estudassem de perto diversos outros mundos do Sistema Solar — com duas delas já tendo alcançado o espaço interestelar, por sinal. Para que missões do tipo sejam possíveis, são precisos muitos anos de desenvolvimento de novas tecnologias, e diversas delas acabam sendo adaptadas para beneficiar a humanidade aqui mesmo na Terra.\n\nHoje, uma variedade fascinante de coisas que fazem parte do nosso dia a dia devem sua existência às tecnologias espaciais. Nesta matéria, você confere algumas tecnologias que você usa e que foram desenvolvidas, na verdade, para a exploração espacial, mas que acabaram beneficiando e até mesmo transformando a nossa vida em sociedade.\n\nTecnologias espaciais que beneficiam a humanidade:\nFiltro de água;\nCâmera de celular;\nTênis de corrida;\nLentes refletoras de raios ultravioleta e resistentes a arranhões;\nEtc.\n')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota, conteudo) VALUES ('astronautica', 'Introdução à Astronáutica', 'assets/int_astronautica.jpg', 'Introducao_Astronautica()', 'Ciência que se dedica à exploração do espaço cósmico, a história da astronáutica no século XX pode ser dividida em três períodos: o das descobertas realizadas até o fim da II Guerra Mundial, o da corrida espacial entre EUA e URSS e o dos projetos pós-Guerra Fria.\n\nEntre as descobertas realizadas até 1945 destacam-se as primeiras tentativas de fazer voar foguetes espaciais. Esses aparelhos experimentais foram criados com base na ideia de atacar adversários com mísseis, como os famosos V-1 e V-2 alemães. É assim que nascem os lançadores de satélites e de naves espaciais de hoje.\n\nDurante a corrida espacial, a longa disputa entre EUA e URSS resulta em grandes avanços científicos e tecnológicos, especialmente nas áreas da aeronáutica, de telecomunicações e de produção de armamentos.\n\nA disputa começa de fato em 1957, ano em que os soviéticos lançam o Sputnik 1, primeiro satélite artificial a entrar em órbita. Um mês depois sobe o primeiro ser vivo, a cadela Laika, a bordo do Sputnik 2.\n\nA reação dos EUA vem em 1958, com a criação da Nasa, responsável pelo programa espacial norte-americano. No mesmo ano ela lança seu primeiro satélite artificial, o Explorer 1.\n\nNos anos seguintes, as duas potências investem em projetos pioneiros de exploração da Lua (pela nave russa Luna) e de reconhecimento dos planetas Vênus (pela russa Venera e pela norte-americana Mariner), Marte e Mercúrio (pela norte-americana Mariner).\n\n')";
    await db.execute(sqlassunto);

    //ASTRONOMIA

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota, conteudo) VALUES ('astronomia', 'Constelações', 'assets/const.jpg', 'Constelacoes()', 'Constelações são agrupamentos de estrelas ligadas por linhas imaginárias usadas para representar objetos, animais, criaturas mitológicas ou deuses. O conceito de constelação surgiu durante a Pré-História, quando as pessoas as usavam para descrever suas crenças ou mitologia, por isso, diferentes civilizações adotaram, ao longo da história, as suas próprias constelações.\n\nAs constelações também desempenharam importante papel durante as navegações, pois eram usadas como orientação, além disso, a palavra constelação tem origem no latim constelattio, cujo significado é agrupamento de estrelas.\n\nPara a Astronomia, as principais constelações são aquelas que foram catalogadas no ano de 1922: as 88 constelações, das quais 48 são oriundas dos estudos de Claudio Ptolomeu e as outras 40 que foram observadas entre os séculos XVII e XVIII.\n\nEntre o grande número de constelações existentes, podemos ressaltar aquelas que são utilizadas para a definição do zodíaco. O zodíaco é a área do céu próxima à eclíptica (plano em que o Sol realiza sua órbita aparente em relação à Terra), ou seja, é o caminho aparente pelo qual o Sol desloca-se durante o período de um ano.\n\nNesse caminho, o Sol passa na frente de 12 constelações: Áries, Touro, Gêmeos, Câncer, Leão, Virgem, Libra, Escorpião, Sagitário, Capricórnio, Aquário e Peixes. Entretanto, no caminho aparente do Sol, ele também passa sobre a constelação de Ophiuccus (Serpentário), que não é reconhecida pelos astrólogos, uma vez que a passagem do Sol por ela é breve, de aproximadamente 19 dias.\n\nAlém das constelações do zodíaco, podemos listar diversas importantes constelações, como:\nUrsa Maior: Uma das constelações mais famosas do hemisfério celestial norte, também é conhecida em outras partes do mundo como O Arado;\nUrsa Menor: É uma constelação de forma similar à Ursa Maior, porém, reduzida;\nÓrion: A constelação de Órion fica no equador celeste, é formada por estrelas muito brilhantes como Betelgeuse;\nCassiopeia: Na mitologia grega, Cassiopeia era uma rainha etíope que comparara sua beleza à beleza das Nereidas e, por isso, fora castigada;\nCão Maior: É uma constelação do hemisfério celestial sul, sua estrela mais brilhante é Sirius: a estrela mais brilhante do céu noturno;\nPegasus: Essa constelação recebeu o seu nome após o mito grego do cavalo alado;\nAndrômeda: Andrômeda era filha da rainha Cassiopeia, de acordo com a mitologia grega;\nAquila: A águia é uma constelação do equador celeste, essa constelação representa a águia que carregava os raios de Zeus na mitologia grega.\n')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota, conteudo) VALUES ('astronomia', 'Planetas', 'assets/planetas.jpg', 'Planetas()', 'Um planeta é um corpo celeste que orbita uma estrela ou um remanescente de estrela, com massa suficiente para se tornar esférico pela sua própria gravidade, mas não ao ponto de causar fusão termonuclear, e que tenha limpado de planetesimais a sua região vizinha (dominância orbital). O termo planeta é antigo, com ligações com a história, astrologia, ciência, mitologia e religião. Os planetas eram vistos por muitas culturas antigas como divinos ou emissários de deuses. À medida que o conhecimento científico evoluiu, a percepção humana sobre os planetas mudou, incorporando diversos tipos de objetos.\n\nOs planetas do Sistema Solar formam um agrupamento de oito corpos celestes que orbitam o Sol: Mercúrio, Vênus Terra, Marte, Júpiter, Saturno, Urano e Netuno. São classificados em planetas rochosos (formados predominantemente por rochas e minerais) e em planetas gasosos (constituídos por gases diversos). Até tempos atrás, mais precisamente 2006, o Sistema Solar era composto por nove planetas, porém Plutão foi reclassificado como planeta-anão no referido ano.\n')";
    await db.execute(sqlassunto);

    sqlassunto =
        "INSERT INTO assuntos (genero, titulo, imagem, rota, conteudo) VALUES ('astronomia', 'Introdução à Astronomia', 'assets/int_astronomia.jpg', 'Introducao_Astronomia()', 'Sendo considerada por muitos estudiosos a mais antiga das ciências e a fonte de conhecimentos e questionamentos para o surgimento dos demais saberes, a Astronomia é a ciência que estuda o Universo, desde a sua origem e formação aos astros que o compõe e os fenômenos que nele ocorrem. Originou-se a partir da observação dos astros e de seu efeito no cotidiano do ser humano, que desde a pré-história vem utilizando o conhecimento astronômico acumulado durante o tempo para desenvolver as atividades humanas.\n\nNo início, o conhecimento astronômico estava baseado essencialmente na observação dos astros e fenômenos visíveis a olho nu (o sol, a lua, o dia, a noite, as marés, as fases da lua etc), e se misturavam ao senso comum, à religião e às lendas, uma vez que vários povos acreditavam que esses astros eram deuses e que os fenômenos originados por eles dependiam do seu humor ou vontade. Assim, chineses, egípcios, assírios e babilônicos já observavam o espaço para determinar a contagem do tempo, utilizavam o sol e a lua para elaborar seus calendários, definir o melhor período para o plantio e colheita e para se localizar no espaço.\n\nNa Grécia Antiga, diversos estudiosos realizaram pesquisas e formularam teorias sobre o Universo, algumas delas foram contestadas e outras são aceitas até hoje como, por exemplo, a teoria da esfericidade da Terra, de Pitágoras; o ano com duração de 365 dias e 6 horas, proposto por Eudóxio de Cnido; as explicações de Aristóteles para as fases da lua e os eclipses solar e lunar.\n\nCom o passar do tempo a astronomia se afastou do senso comum e das religiões, desenvolvendo-se a partir da incorporação de novos conhecimentos obtidos a partir da interação com outras ciências, como por exemplo a Física, a Química a Biologia, a Geografia e das novas tecnologias, que passaram a ter um papel fundamental na observação dos astros e nas investigações dos fenômenos astronômicos.\n\n')";
    await db.execute(sqlassunto);
  }
}
