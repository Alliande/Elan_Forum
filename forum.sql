-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mer. 03 juin 2020 à 22:55
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `forum`
--

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_bin NOT NULL,
  `creationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `subject_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `message`, `creationDate`, `subject_id`, `user_id`) VALUES
(1, 'La bataille d\'Iéna s\'est déroulée le 14 octobre 1806, à Iéna (Allemagne, actuel Land de Thuringe) parallèlement à la bataille d\'Auerstaedt. Les Français commandés par Napoléon et les Prussiens commandés par le général de Hohenlohe, s\'y combattent pendant la campagne de Prusse et de Pologne.\r\n\r\nS\'assurant d\'une position en surplomb dès le début de la bataille, Napoléon y remporte une victoire totale qui, couplée à celle d\'Auerstaedt du maréchal Davout, précipite la fuite de l\'armée prussienne, augurant déjà la fin de la campagne de Prusse. ', '2020-05-29 15:06:31', 1, 1),
(2, 'La bataille du pont d’Arcole s\'est déroulée du 15 au 17 novembre 1796 (25 au 27 brumaire an V) lors de la première campagne d’Italie. Elle opposa les 19 000 Français de l’armée d\'Italie, sous les ordres de Napoléon Bonaparte, aux 24 000 hommes de l\'armée autrichienne, commandée par le général Josef Alvinczy. ', '2020-05-29 15:06:31', 1, 2),
(3, 'La bataille de Rivoli a eu lieu les 13 et 14 janvier 1797 (24 et 25 nivôse an V) aux environs de Rivoli Veronese dans le nord de l\'Italie, entre l\'armée française et l\'armée autrichienne. Elle s’inscrit dans la suite de batailles livrées pendant le siège de Mantoue, mené par l’armée d\'Italie du général français Bonaparte et les armées autrichiennes envoyées pour y mettre fin. ', '2020-05-29 15:08:08', 1, 1),
(4, 'Germinal est un roman d\'Émile Zola publié en 1885. Il s\'agit du treizième roman de la série des Rougon-Macquart. Écrit d\'avril 1884 à janvier 1885, le roman paraît d\'abord en feuilleton entre novembre 1884 et février 1885 dans le Gil Blas. Il connaît sa première édition en mars 1885. Depuis, il a été publié dans plus d\'une centaine de pays. ', '2020-05-29 15:08:08', 2, 2),
(5, 'Nana est un roman d’Émile Zola publié par Georges Charpentier en février 1880, le neuvième de la série Les Rougon-Macquart, traitant du thème de la prostitution féminine à travers le parcours d’une lorette puis cocotte dont les charmes ont affolé les plus hauts dignitaires du Second Empire. Le récit, présenté comme la suite de L\'Assommoir, est d\'abord publié sous forme de feuilleton dans Le Voltaire du 16 octobre 1879 au 5 février 1880, puis en volume chez Charpentier, le 14 février 18801.\r\n\r\nL’histoire commence en 1867, peu avant la deuxième exposition universelle2, et dépeint deux catégories sociales symboliques, celle des courtisanes et celle des noceurs. Zola, chef de file du mouvement naturaliste, prétend montrer la société telle qu’elle était mais choisit aussi ce sujet scandaleux car il fait vendre, 55 000 exemplaires du texte de Charpentier étant achetés dès le premier jour de sa publication3. Le personnage de Nana a surtout été inspiré à Zola par Blanche D\'Antigny et par Berthe son premier amour, mais le romancier y a aussi mis des éléments de Valtesse de La Bigne, Delphine de Lizy4, Anna Deslions, Hortense Schneider et Cora Pearl dont il a étudié la vie5. Zola fait coïncider la mort de Nana avec le début de la guerre franco-allemande de 1870 qui marquera la fin du Second Empire, chute qu\'il ne pouvait prévoir au moment de la rédaction de ses fiches préparatoires en 18686. ', '2020-05-29 15:09:22', 2, 2),
(6, 'Au Bonheur des Dames est un roman d’Émile Zola publié en 1883, prépublié dès décembre 1882 dans Gil Blas, onzième volume de la suite romanesque Les Rougon-Macquart. À travers une histoire sentimentale, le roman entraîne le lecteur dans le monde des grands magasins, l’une des innovations du Second Empire (1852-1870). ', '2020-05-29 15:09:22', 2, 1),
(7, '  Lettre à M. Félix Faure,  Président de la République  Monsieur le Président,  Me permettez-vous, dans ma gratitude pour le bienveillant accueil que vous m’avez fait un jour, d’avoir le souci de votre juste gloire et de vous dire que votre étoile, si heureuse jusqu’ici, est menacée de la plus honteuse, de la plus ineffaçable des taches ?  Vous êtes sorti sain et sauf des basses calomnies, vous avez conquis les cœurs. Vous apparaissez rayonnant dans l’apothéose de cette fête patriotique que l’alliance russe a été pour la France, et vous vous préparez à présider au solennel triomphe de notre Exposition Universelle, qui couronnera notre grand siècle de travail, de vérité et de liberté. Mais quelle tache de boue sur votre nom — j’allais dire sur votre règne — que cette abominable affaire Dreyfus ! Un conseil de guerre vient, par ordre, d’oser acquitter un Esterhazy, soufflet suprême à toute vérité, à toute justice. Et c’est fini, la France a sur la joue cette souillure, l’histoire écrira que c’est sous votre présidence qu’un tel crime social a pu être commis.  Puisqu’ils ont osé, j’oserai aussi, moi. La vérité, je la dirai, car j’ai promis de la dire, si la justice, régulièrement saisie, ne la faisait pas, pleine et entière. Mon devoir est de parler, je ne veux pas être complice. Mes nuits seraient hantées par le spectre de l’innocent qui expie là-bas, dans la plus affreuse des tortures, un crime qu’il n’a pas commis.  Et c’est à vous, monsieur le Président, que je la crierai, cette vérité, de toute la force de ma révolte d’honnête homme. Pour votre honneur, je suis convaincu que vous l’ignorez. Et à qui donc dénoncerai-je la tourbe malfaisante des vrais coupables, si ce n’est à vous, le premier magistrat du pays ? ', '2020-06-03 13:26:49', 3, 2),
(8, 'La vérité d’abord sur le procès et sur la condamnation de Dreyfus.  Un homme néfaste a tout mené, a tout fait, c’est le lieutenant-colonel du Paty de Clam, alors simple commandant. Il est l’affaire Dreyfus tout entière ; on ne la connaîtra que lorsqu’une enquête loyale aura établi nettement ses actes et ses responsabilités. Il apparaît comme l’esprit le plus fumeux, le plus compliqué, hanté d’intrigues romanesques, se complaisant aux moyens des romans-feuilletons, les papiers volés, les lettres anonymes, les rendez-vous dans les endroits déserts, les femmes mystérieuses qui colportent, de nuit, des preuves accablantes. C’est lui qui imagina de dicter le bordereau à Dreyfus ; c’est lui qui rêva de l’étudier dans une pièce entièrement revêtue de glaces ; c’est lui que le commandant Forzinetti nous représente armé d’une lanterne sourde, voulant se faire introduire près de l’accusé endormi, pour projeter sur son visage un brusque flot de lumière et surprendre ainsi son crime, dans l’émoi du réveil. Et je n’ai pas à tout dire, qu’on cherche, on trouvera. Je déclare simplement que le commandant du Paty de Clam, chargé d’instruire l’affaire Dreyfus, comme officier judiciaire, est, dans l’ordre des dates et des responsabilités, le premier coupable de l’effroyable erreur judiciaire qui a été commise.  Le bordereau était depuis quelque temps déjà entre les mains du colonel Sandherr, directeur du bureau des renseignements, mort depuis de paralysie générale. Des « fuites » avaient lieu, des papiers disparaissaient, comme il en disparaît aujourd’hui encore ; et l’auteur du bordereau était recherché, lorsqu’un a priori se fit peu à peu que cet auteur ne pouvait être qu’un officier de l’état-major, et un officier d’artillerie : double erreur manifeste, qui montre avec quel esprit superficiel on avait étudié ce bordereau, car un examen raisonné démontre qu’il ne pouvait s’agir que d’un officier de troupe. On cherchait donc dans la maison, on examinait les écritures, c’était comme une affaire de famille, un traître à surprendre dans les bureaux mêmes, pour l’en expulser. Et, sans que je veuille refaire ici une histoire connue en partie, le commandant du Paty de Clam entre en scène, dès qu’un premier soupçon tombe sur Dreyfus. À partir de ce moment, c’est lui qui a inventé Dreyfus, l’affaire devient son affaire, il se fait fort de confondre le traître, de l’amener à des aveux complets. Il y a bien le ministre de la Guerre, le général Mercier, dont l’intelligence semble médiocre ; il y a bien le chef de l’état-major, le général de Boisdeffre, qui paraît avoir cédé à sa passion cléricale, et le sous-chef de l’état-major, le général Gonse, dont la conscience a pu s’accommoder de beaucoup de choses. Mais, au fond, il n’y a d’abord que le commandant du Paty de Clam, qui les mène tous, qui les hypnotise, car il s’occupe aussi de spiritisme, d’occultisme, il converse avec les esprits. On ne saurait concevoir les expériences auxquelles il a soumis le malheureux Dreyfus, les pièges dans lesquels il a voulu le faire tomber, les enquêtes folles, les imaginations monstrueuses, toute une démence torturante.  Ah ! cette première affaire, elle est un cauchemar, pour qui la connaît dans ses détails vrais ! Le commandant du Paty de Clam arrête Dreyfus, le met au secret. Il court chez madame Dreyfus, la terrorise, lui dit que, si elle parle, son mari est perdu. Pendant ce temps, le malheureux s’arrachait la chair, hurlait son innocence. Et l’instruction a été faite ainsi, comme dans une chronique du XVe siècle, au milieu du mystère, avec une complication d’expédients farouches, tout cela basé sur une seule charge enfantine, ce bordereau imbécile, qui n’était pas seulement une trahison vulgaire, qui était aussi la plus impudente des escroqueries, car les fameux secrets livrés se trouvaient presque tous sans valeur. Si j’insiste, c’est que l’œuf est ici, d’où va sortir plus tard le vrai crime, l’épouvantable déni de justice dont la France est malade. Je voudrais faire toucher du doigt comment l’erreur judiciaire a pu être possible, comment elle est née des machinations du commandant du Paty de Clam, comment le général Mercier, les généraux de Boisdeffre et Gonse ont pu s’y laisser prendre, engager peu à peu leur responsabilité dans cette erreur, qu’ils ont cru devoir, plus tard, imposer comme la vérité sainte, une vérité qui ne se discute même pas. Au début, il n’y a donc, de leur part, que de l’incurie et de l’inintelligence. Tout au plus, les sent-on céder aux passions religieuses du milieu et aux préjugés de l’esprit de corps. Ils ont laissé faire la sottise.  Mais voici Dreyfus devant le conseil de guerre. Le huis clos le plus absolu est exigé. Un traître aurait ouvert la frontière à l’ennemi pour conduire l’empereur allemand jusqu’à Notre-Dame, qu’on ne prendrait pas des mesures de silence et de mystère plus étroites. La nation est frappée de stupeur, on chuchote des faits terribles, de ces trahisons monstrueuses qui indignent l’Histoire ; et naturellement la nation s’incline. Il n’y a pas de châtiment assez sévère, elle applaudira à la dégradation publique, elle voudra que le coupable reste sur son rocher d’infamie, dévoré par le remords. Est-ce donc vrai, les choses indicibles, les choses dangereuses, capables de mettre l’Europe en flammes, qu’on a dû enterrer soigneusement derrière ce huis clos ? Non ! il n’y a eu, derrière, que les imaginations romanesques et démentes du commandant du Paty de Clam. Tout cela n’a été fait que pour cacher le plus saugrenu des romans-feuilletons. Et il suffit, pour s’en assurer, d’étudier attentivement l’acte d’accusation, lu devant le conseil de guerre. ', '2020-06-03 13:27:09', 3, 2),
(9, 'La Corse (Corsica en corse et en italien ; Còrsega en ligure) est une île située en mer Méditerranée et une collectivité territoriale unique française.  Quatrième île de la mer Méditerranée par sa superficie, la Corse a été rattachée durant près de quatre siècles à la République de Gênes avant une brève indépendance comme Royaume de Corse du 15 avril 1736 au mois de décembre 1740. En 1755, elle adopte la première constitution démocratique de l&#39;histoire moderne et donne pour la première fois en partie le droit de vote aux femmes. Le 15 mai 1768, elle est cédée par la République de Gênes à la France, bien que Gênes n&#39;ait qu&#39;une emprise limitée sur l&#39;île depuis la déclaration d&#39;indépendance de la République Corse en 1755. Elle est conquise militairement par le Royaume de France lors de la bataille de Ponte-Novo, le 9 mai 1769.  Département unique à la création des départements en 1790, la Corse est divisée en deux en 1793 avec la création des départements du Golo et du Liamone. Elle redevient partiellement indépendante sous protectorat britannique de 1794 à 1796 avec la création du Royaume anglo-corse. En 1796 la Corse est définitivement française puis réunifiée en 1811 en un unique département, puis de nouveau divisée en 1975 avec la création des départements de Haute-Corse et de Corse-du-Sud. La région Corse est créée en 1982 (en tant que collectivité) et acquiert en 1991, à la suite des revendications locales, un statut de collectivité à statut particulier dénommée « collectivité territoriale de Corse ». Enfin, depuis le 1er janvier 2018, en application de la loi portant sur la nouvelle organisation territoriale de la République du 7 août 2015, la Corse est devenue une collectivité à statut particulier au sens de l’article 72 de la Constitution, de type collectivité territoriale unique, dénommée « collectivité de Corse », en lieu et place de la collectivité territoriale de Corse et des départements de Corse-du-Sud et de Haute-Corse (en tant que collectivités). Les circonscriptions administratives départementales de Corse-du-Sud et de Haute-Corse, territoires d&#39;exercice des compétences de l&#39;État, restent inchangées, avec les préfectures respectivement à Ajaccio et Bastia.  La Corse compte 344 178 habitants en 2020 d&#39;après les estimations de l&#39;Insee bien que le dernier nombre officiel soit de 334 938 habitants en date du 1er janvier 2017. Cette faible démographie fait de l&#39;île le territoire le moins peuplé de France métropolitaine. ', '2020-06-03 13:45:02', 4, 1),
(10, 'N&eacute; au 8, Foss&eacute;-des-Tanneurs &agrave; Strasbourg, baptis&eacute; en l&#39;&eacute;glise Saint-Pierre-le-Vieux, Kl&eacute;ber est fils de Jean-Nicolas Kl&eacute;ber, &laquo;&nbsp;einspanniger&nbsp;&raquo; (sergent des portes de la ville) de Strasbourg et de confession catholique, qui meurt trois ans apr&egrave;s sa naissance, et de Reine Bogart. Il est &eacute;lev&eacute; par son beau-p&egrave;re, le ma&icirc;tre-charpentier Jean-Martin Burger, entrepreneur et bourgeois de la ville, et fait des &eacute;tudes au gymnase Jean-Sturm de Strasbourg. Kl&eacute;ber s&#39;engage une premi&egrave;re fois dans l&#39;arm&eacute;e &agrave; l&#39;&acirc;ge de 16&nbsp;ans en 1769, dans le 1er&nbsp;r&eacute;giment de hussards. Engagement de courte dur&eacute;e car il est tr&egrave;s vite rappel&eacute; &agrave; Strasbourg par sa m&egrave;re, pour reprendre ses &eacute;tudes. De 1770 &agrave; 1771, il est &eacute;tudiant &agrave; l&#39;&eacute;cole de dessin pour les arts et m&eacute;tiers, install&eacute;e au Po&ecirc;le de la Tribu, tout pr&egrave;s du logement de Goethe qui y habitait &agrave; la m&ecirc;me &eacute;poque. Kl&eacute;ber int&egrave;gre ensuite l&#39;atelier de l&#39;architecte Chalgrin &agrave; Paris, de 1772 &agrave; 1774. Kl&eacute;ber, dont la nomination est conserv&eacute;e aux archives de Colmar, a &eacute;t&eacute; architecte des b&acirc;timents publics dans le Haut-Rhin jusqu&#39;&agrave; 39&nbsp;ans. En 1777 Kl&eacute;ber s&#39;engage &agrave; nouveau, cette fois comme cadet &agrave; l&#39;acad&eacute;mie militaire de Munich (arm&eacute;e bavaroise) o&ugrave; il reste environ huit mois, avant de rejoindre le fameux r&eacute;giment d&#39;infanterie de Kaunitz&nbsp;(de) (arm&eacute;e autrichienne), le 1er octobre 1777 avec le grade de privat-cadet. Il est nomm&eacute; porte-enseigne le 19 novembre suivant. Le 1er avril 1779, il est nomm&eacute; sous-lieutenant&nbsp;: c&#39;est sa derni&egrave;re promotion dans l&#39;arm&eacute;e autrichienne. Il quitte le r&eacute;giment de Kaunitz en 1783, n&#39;y esp&eacute;rant plus aucune promotion et renon&ccedil;ant pour un temps &agrave; la carri&egrave;re militaire. Trois raisons ont &eacute;t&eacute; avanc&eacute;es pour expliquer cet &eacute;chec&nbsp;: d&#39;une part Kl&eacute;ber n&#39;est pas noble, &agrave; une &eacute;poque o&ugrave; cette qualit&eacute; est indispensable pour avancer rapidement dans le m&eacute;tier des armes, d&#39;autre part il avait mauvais caract&egrave;re et s&#39;emportait facilement, et enfin il a jou&eacute; de malchance pendant son temps de service&nbsp;: il n&#39;a particip&eacute; &agrave; aucun v&eacute;ritable conflit, &agrave; l&#39;exception de la guerre des pommes de terre, suite de petites op&eacute;rations contre la Prusse. Sa vie est partag&eacute;e entre les garnisons de Mons, Malines et Luxembourg. En 1787 Jean-Baptiste Kl&eacute;ber fournit les plans du nouvel h&ocirc;pital Saint-Erhard de Thann, l&#39;ancien &eacute;tant jug&eacute; v&eacute;tuste. La construction commence en 1788. Avant la fin de la construction, on d&eacute;cide d&#39;en faire l&#39;h&ocirc;tel de ville de Thann. Son gros &oelig;uvre est termin&eacute; en 1793. Son am&eacute;nagement est confi&eacute; &agrave; G.I. Ritter en 1795. De 1788 &agrave; 1792, Jean-Baptiste Kl&eacute;ber est l&#39;architecte officiel de la ville de Belfort. Ses premiers signes d&#39;engagement r&eacute;volutionnaire naissent dans cette ville notamment quand il disperse les royalistes lors de l&#39;Affaire de Belfort le 21 octobre 17901. &nbsp; Lors de la d&eacute;claration de guerre de 1792, Kl&eacute;ber s&#39;engage dans 4e&nbsp;bataillon de volontaires du Haut-Rhin dans lequel il est &eacute;lu lieutenant-colonel en second. Affect&eacute; dans l&#39;arm&eacute;e du Rhin, il s&#39;illustre dans la d&eacute;fense de la forteresse de Mayence assi&eacute;g&eacute;e en 1793. Il est promu adjudant-g&eacute;n&eacute;ral chef de brigade le 1er avril 1793&nbsp;; puis g&eacute;n&eacute;ral de brigade le 17 ao&ucirc;t 1793. Il est envoy&eacute; en Vend&eacute;e &agrave; la t&ecirc;te de la provisoire arm&eacute;e de Mayence pour y &eacute;craser le soul&egrave;vement sous la direction du g&eacute;n&eacute;ral en chef L&eacute;chelle2. Battu &agrave; la bataille de Tiffauges3, il remporte la victoire &agrave; Montaigu. Il participe &agrave; la deuxi&egrave;me bataille de Cholet qui repousse les Vend&eacute;ens au nord de la Loire. La d&eacute;route d&#39;Entrammes o&ugrave; l&#39;arm&eacute;e r&eacute;publicaine perd 4&nbsp;000 hommes et toute son artillerie marque le sommet de son conflit avec le g&eacute;n&eacute;ral L&eacute;chelle. Kl&eacute;ber n&#39;&eacute;tait pas irr&eacute;prochable, mais c&#39;est le g&eacute;n&eacute;ral L&eacute;chelle qui est d&eacute;clar&eacute; responsable de la d&eacute;faite. Il est destitu&eacute;. R&eacute;organis&eacute;e, l&#39;arm&eacute;e r&eacute;publicaine est plac&eacute;e quelque temps plus tard sous l&#39;autorit&eacute; du g&eacute;n&eacute;ral Rossignol, sans culotte comme L&eacute;chelle. Le 17 octobre 1793, il est promu g&eacute;n&eacute;ral de division. L&#39;incomp&eacute;tence du g&eacute;n&eacute;ral Rossignol et l&#39;inertie de Kl&eacute;ber provoquent deux nouvelles d&eacute;routes &agrave; Dol les 20, 21 et 22 novembre et Antrain le 21 novembre. Les Vend&eacute;ens peuvent poursuivre leur route en direction d&#39;Angers o&ugrave; ils &eacute;chouent et perdent beaucoup de leurs meilleurs combattants. Refoul&eacute;s vers le nord, ils s&#39;emparent du Mans. Entretemps, l&#39;arm&eacute;e r&eacute;publicaine a &eacute;t&eacute; reform&eacute;e et plac&eacute;e sous l&#39;autorit&eacute; officieuse de Kl&eacute;ber et Marceau. &Agrave; la bataille du Mans, ils d&eacute;logent l&#39;arm&eacute;e rebelle et la mettent en d&eacute;route. Ils terminent la besogne quelques jours plus tard &agrave; la bataille de Savenay4 (d&eacute;cembre 1793) mettant ainsi un terme &agrave; la &laquo;&nbsp;grande guerre&nbsp;&raquo; vend&eacute;enne. Au Mans et &agrave; Savenay, Marceau et Kl&eacute;ber auront tent&eacute; sans succ&egrave;s de s&#39;opposer &agrave; la folie meurtri&egrave;re des Bleus, et en resteront outr&eacute;s. Kl&eacute;ber &eacute;crira, dans ses M&eacute;moires&nbsp;: &laquo;&nbsp;On traverse Savenay, chaque colonne prend une direction diff&eacute;rente &agrave; la poursuite des rebelles. Le carnage devient horrible. On ne voit partout que des piles de cadavres. Une grande partie va se noyer dans le marais de Montoir, le reste se jette dans les bois o&ugrave; bient&ocirc;t, ils sont d&eacute;couverts, tu&eacute;s ou faits prisonniers. &Eacute;quipages, canons, ornements d&#39;&eacute;glises, papiers relatifs &agrave; leur administration, tout tombe en notre pouvoir et, pour cette fois, la d&eacute;faite de l&#39;ennemi rend sa destruction certaine. On envoie alors des patrouilles d&rsquo;infanterie ou de cavalerie dans tous les villages des environs. Quelques-uns sont occup&eacute;s par des brigands, on veut parlementer avec eux, mais ils r&eacute;pondent par des coups de fusil, et un adjoint de l&#39;&eacute;tat-major, en leur portant des paroles de paix, en fut bless&eacute;. Aussit&ocirc;t on fait un feu roulant sur eux et tous y p&eacute;rirent. Des milliers de prisonniers de tout &acirc;ge et de tout sexe sont successivement arr&ecirc;t&eacute;s et conduits sur les derri&egrave;res. Les repr&eacute;sentants du peuple les firent juger par des tribunaux r&eacute;volutionnaires, et la France, l&rsquo;Europe enti&egrave;re, connaissent toutes les atrocit&eacute;s qu&rsquo;on a exerc&eacute;es sur ces mis&eacute;rables. La ville de Nantes a particuli&egrave;rement servi de th&eacute;&acirc;tre &agrave; ces sc&egrave;nes sanglantes et inou&iuml;es, que ma plume se refuse de d&eacute;crire&hellip;&nbsp;&raquo; (pages 341-342) &laquo;&nbsp;On ne saurait se figurer l&#39;horrible carnage qui se fit ce jour-l&agrave;, sans parler du grand nombre de prisonniers de tout sexe, de tout &acirc;ge et de tout &eacute;tat qui tomb&egrave;rent en notre pouvoir.&nbsp;&raquo; (page 330) Il d&eacute;clare&nbsp;: Les rebelles combattaient comme des tigres et nos soldats comme des lions. Apr&egrave;s Savenay, et le d&eacute;part de Marceau, Kl&eacute;ber devient g&eacute;n&eacute;ral en chef par int&eacute;rim jusqu&#39;&agrave; son remplacement, d&eacute;but janvier par Louis-Marie Turreau. Kl&eacute;ber tente de s&#39;opposer aux colonnes infernales en pr&eacute;conisant un plan d&#39;occupation militaire stricte de la Vend&eacute;e qui est rejet&eacute;. Cependant, Kl&eacute;ber reste dans l&#39;Arm&eacute;e de l&#39;Ouest et combat les chouans de Bretagne jusqu&#39;en mai 1794, date &agrave; laquelle il quitte d&eacute;finitivement l&#39;Ouest et passe dans l&#39;arm&eacute;e du Nord. &nbsp; R&ocirc;le durant les batailles de Fleurus Bataille du 16 juin 1794&nbsp;: Kl&eacute;ber a la charge de l&#39;aile gauche de la future arm&eacute;e de Sambre-et-Meuse dont le commandant en chef est Jean-Baptiste Jourdan. Cette premi&egrave;re bataille de Fleurus est une d&eacute;faite pour les Fran&ccedil;ais face au mar&eacute;chal Fr&eacute;d&eacute;ric de Saxe-Cobourg, un remarquable tacticien. Malgr&eacute; tout, les dispositions de Kl&eacute;ber pour l&#39;aile gauche ont permis, dans un premier temps, de repousser et de d&eacute;faire la colonne de Wartensleben&nbsp;(de) ce qui aurait pu lui permettre d&#39;arriver en renfort au centre ou sur la droite en difficult&eacute;, trop tard cependant. Kleber est charg&eacute; de couvrir la retraite ce qui permet &agrave; l&#39;arm&eacute;e fran&ccedil;aise de repasser la Sambre en bon ordre et de reprendre l&#39;offensive qui conduit &agrave; la victoire de Fleurus le 26 juin suivant. Bataille du 26 juin 1794&nbsp;: Cette fois-ci, Kl&eacute;ber a le commandement de la r&eacute;serve. Malgr&eacute; cela, il peut influencer le cours de la bataille. Voyant le g&eacute;n&eacute;ral Montaigu forc&eacute; &agrave; la retraite par le g&eacute;n&eacute;ral Latour, Kl&eacute;ber envoie imm&eacute;diatement une division en renfort. Mais celle-ci, arrivant trop tard, se trouve oblig&eacute;e de battre en retraite &eacute;galement. Kl&eacute;ber r&eacute;agit alors en faisant placer des batteries sur des hauteurs pour soutenir Montaigu et envoie la division Bernadotte en diversion, de mani&egrave;re &agrave; sauver un poste important&nbsp;: Marchiennes. Devant cette r&eacute;action de la part des R&eacute;publicains (et la retraite d&#39;une autre des colonnes autrichiennes, command&eacute;e par le Prince d&#39;Orange), les Autrichiens h&eacute;sitent, ce dont profite imm&eacute;diatement Kl&eacute;ber en se mettant &agrave; la t&ecirc;te d&#39;une colonne et en attaquant la gauche de la colonne Latour. Enfin, il envoie la brigade Duhesme pour contourner les Autrichiens et les attaquer par derri&egrave;re. Cette man&oelig;uvre r&eacute;ussit. Latour, apprenant la perte de Charleroi, donne l&#39;ordre de battre en retraite. Tomb&eacute; dans la disgr&acirc;ce du Directoire malgr&eacute; son succ&egrave;s devant Mayence, Kl&eacute;ber vivait obscur&eacute;ment &agrave; Chaillot quand Napol&eacute;on, en novembre 1797, arrive de Rastadt, apr&egrave;s avoir conquis l&#39;Italie, dict&eacute; la paix sous Vienne et rattach&eacute; d&eacute;finitivement Mayence &agrave; la France. Kl&eacute;ber s&#39;attache &agrave; Bonaparte et le suit pour pr&eacute;parer la campagne d&#39;&Eacute;gypte.\r\n&nbsp;\r\nLa campagne d&#39;&Eacute;gypte\r\nKl&eacute;ber commande l&#39;une des colonnes d&#39;assaut lors de la prise d&#39;Alexandrie le 2 juillet 1798 et y est bless&eacute; au front par une balle. Convalescent, il se voit confier le commandement de la garnison laiss&eacute;e sur place par Bonaparte. Le 18 octobre, il rejoint le Caire et y reste trois mois avant de partir pour l&#39;exp&eacute;dition en Syrie. La division Kl&eacute;ber est au centre des combats de la bataille d&#39;El-Arich puis de la bataille du Mont-Thabor, avant de proc&eacute;der au dernier assaut infructueux sur la forteresse de Saint-Jean-d&#39;Acre.\r\nNapol&eacute;on Bonaparte qui s&#39;appr&ecirc;te &agrave; regagner la France, confie le 22 ao&ucirc;t 1799 &agrave; Kl&eacute;ber le commandement supr&ecirc;me de l&#39;arm&eacute;e d&#39;&Eacute;gypte. Kl&eacute;ber conclut alors avec l&#39;amiral britannique Sidney Smith la convention d&#39;El Arich le 24 janvier 1800 pour une &eacute;vacuation honorable de l&#39;&Eacute;gypte par l&#39;arm&eacute;e fran&ccedil;aise.\r\n\r\n\r\n\r\n\r\n\r\nAssassinat de Kl&eacute;ber (huile sur toile, atelier d&#39;Antoine-Jean Gros, vers 1820, Mus&eacute;e historique de Strasbourg).\r\n\r\n\r\nMais l&#39;amiral Keith ne respecte pas ces clauses et demande aux Fran&ccedil;ais de mettre bas les armes et de se constituer prisonniers5. Kl&eacute;ber d&eacute;clare &agrave; ses soldats&nbsp;: &laquo;&nbsp;On ne r&eacute;pond &agrave; une telle insolence que par des victoires&nbsp;; soldats, pr&eacute;parez-vous &agrave; combattre&nbsp;&raquo; (d&eacute;claration inscrite au bas de son monument Place Kl&eacute;ber &agrave; Strasbourg). Kl&eacute;ber reprend alors les hostilit&eacute;s et remporte une ultime victoire &agrave; H&eacute;liopolis contre les 60&nbsp;000 Turcs que les Britanniques ont dispos&eacute;s en face des troupes fran&ccedil;aises le 20 mars 18006. Il reconquiert alors la Haute-&Eacute;gypte et mate avec l&#39;artillerie fran&ccedil;aise une r&eacute;volte au Caire, qui a pris pour cible les Coptes[r&eacute;f.&nbsp;n&eacute;cessaire].\r\nKl&eacute;ber semble enfin en mesure de tenir le pays, malgr&eacute; les exactions commises &agrave; l&#39;&eacute;gard de la population, l&#39;ex&eacute;cution des prisonniers turcs eux-m&ecirc;mes bourreaux d&#39;innombrables victimes coptes, quand il est assassin&eacute; par un &eacute;tudiant syrien, nomm&eacute; Soleyman el-Halaby, d&#39;un coup de poignard dans le c&oelig;ur le 14 juin 18007. Celui-ci est condamn&eacute; au supplice du pal.\r\nL&#39;homme est condamn&eacute;, par le conseil de guerre fran&ccedil;ais, &agrave; avoir les poings br&ucirc;l&eacute;s puis &agrave; &ecirc;tre empal&eacute; vif. Le bourreau Barth&eacute;lemy couche sur le ventre Soliman, tire un couteau de sa poche, lui fait au fondement une large incision, en approche le bout de son pal et l&#39;enfonce &agrave; coups de maillet. Puis il lie les bras et les jambes du patient, l&#39;&eacute;l&egrave;ve en l&#39;air et fixe le pal dans un trou pr&eacute;par&eacute;. Soliman v&eacute;cut encore durant quatre heures, et il eut v&eacute;cu plus, si durant l&#39;absence de Barth&eacute;lemy un soldat ne lui eut donn&eacute; &agrave; boire&nbsp;: &agrave; l&#39;instant m&ecirc;me il expire.\r\nLe commandement est alors repris par le g&eacute;n&eacute;ral Menou, rival de Kl&eacute;ber. Converti &agrave; l&#39;islam et mari&eacute; &agrave; une &Eacute;gyptienne, il se fait appeler Abdallah-Jacques. Il lui appartient de liquider l&#39;exp&eacute;dition d&#39;&Eacute;gypte, au bord de l&#39;&eacute;puisement.', '2020-06-03 13:46:00', 5, 1),
(11, 'Louis Charles Antoine Desaix, n&eacute; le 17 ao&ucirc;t 1768 au ch&acirc;teau d&#39;Ayat &agrave; Ayat-sur-Sioule (Puy-de-D&ocirc;me), mort le 14 juin 1800 &agrave; Marengo (Italie), est un g&eacute;n&eacute;ral fran&ccedil;ais qui s&#39;est illustr&eacute; lors des guerres r&eacute;volutionnaires et sous les ordres de Bonaparte, notamment en &Eacute;gypte et en Italie. Selon l&#39;usage de l&#39;&eacute;poque, afin de se distinguer de son fr&egrave;re, il a ajout&eacute; &agrave; son nom celui du fief de sa famille et a pris pour nom Desaix de Veygoux Desaix est surnomm&eacute; le &laquo;&nbsp;Sultan juste &raquo;. &nbsp; Origines familiales Louis Charles Antoine Desaix est issu d&#39;une famille noble, la famille de Beaufranchet, &eacute;tablie en Auvergne, dont plusieurs membres se sont fait conna&icirc;tre au XVIIIe&nbsp;si&egrave;cle. Desaix est le troisi&egrave;me fils de Gilbert Antoine de Beaufranchet d&#39;Ayat de Boucherol Desaix et d&#39;Amable de Beaufranchet8,9.La m&egrave;re du g&eacute;n&eacute;ral Desaix est la s&oelig;ur de Jacques de Beaufranchet seigneur d&#39;Ayat qui &eacute;pouse le 25 novembre 1755 Marie Louise O&#39;Murphy ancienne ma&icirc;tresse de Louis XV et mod&egrave;le du peintre Fran&ccedil;ois Boucher (le colonel Jacques de Beaufranchet trouva la mort &agrave; Rossbach en Saxe). Une formation militaire En 177610, &agrave; l&#39;&acirc;ge de huit ans, Desaix entre &agrave; l&#39;&Eacute;cole royale militaire d&#39;Effiat, dirig&eacute;e par des pr&ecirc;tres s&eacute;culiers (les oratoriens). &Agrave; quinze ans, en 1783, il est nomm&eacute; sous-lieutenant dans le r&eacute;giment de Bretagne (infanterie)11.\r\n&nbsp;\r\nLe choix de la R&eacute;publique\r\n\r\n\r\n\r\nLouis-Charles-Antoine Desaix en uniforme de capitaine au 46e&nbsp;r&eacute;giment d&#39;infanterie de ligne en 1792 par Charles de Steuben (1835)\r\n\r\n\r\nEn 1791, il quitte le r&eacute;giment de Bretagne car il est nomm&eacute; commissaire ordinaire des guerres &agrave; Clermont-Ferrand.\r\nEn 1792, la majeure partie de sa famille &eacute;migre, effray&eacute;e par la R&eacute;volution. Il se refuse &agrave; la suivre et part servir contre les forces de la coalition dans l&#39;arm&eacute;e du Rhin. Il y est nomm&eacute; aide de camp du commandant en chef Victor de Broglie. Alors qu&#39;il est charg&eacute; de porter des courriers &agrave; Bourbonne-les-Bains et voulant &eacute;viter les contr&ocirc;les au bourg de Xertigny, il se fait arr&ecirc;ter et conduire &agrave; la prison d&#39;Epinal o&ugrave; il sera interrog&eacute; puis remis en libert&eacute; gr&acirc;ce &agrave; une intervention de Poullain Grandprey12.\r\nAyant montr&eacute; une rare bravoure et une grande pr&eacute;sence d&#39;esprit au combat de Lauterbourg, il est nomm&eacute; g&eacute;n&eacute;ral de brigade &agrave; titre provisoire le 20 ao&ucirc;t 1793, &agrave; 25 ans, confirm&eacute; dans ce grade le 11 septembre 1793, nomm&eacute; provisoirement au grade de g&eacute;n&eacute;ral de division le 20 octobre 1793.\r\nConfirm&eacute; dans son grade de g&eacute;n&eacute;ral de division par le comit&eacute; de Salut Public, dans l&#39;arm&eacute;e du Rhin le 2 septembre 1794, Desaix prend la plus grande part aux victoires de cette campagne de l&#39;an IV, et participe, entre autres, au blocus de Mayence13,14.\r\nSes succ&egrave;s militaires en 1794 et 1795 conduisent &agrave; sa nomination comme commandant en chef par int&eacute;rim de l&#39;arm&eacute;e du Rhin du 5 mars au 20 avril 1796, puis du 31 janvier au 19 avril 1797. Du 26 octobre 1797 au 27 mars 1798, le g&eacute;n&eacute;ral Desaix est commandant en chef de l&#39;arm&eacute;e d&#39;Angleterre.', '2020-06-03 14:25:41', 5, 1),
(12, 'La campagne d&rsquo;&Eacute;gypte est l&#39;exp&eacute;dition militaire en &Eacute;gypte men&eacute;e par le g&eacute;n&eacute;ral Bonaparte et ses successeurs de 1798 &agrave; 1801, afin de s&#39;emparer de l&#39;&Eacute;gypte et de l&#39;Orient, et ainsi bloquer la route des Indes &agrave; la Grande-Bretagne dans le cadre de la lutte contre cette derni&egrave;re. Elle &eacute;tait en effet l&#39;une des puissances &agrave; maintenir les hostilit&eacute;s contre la France r&eacute;volutionnaire.\r\nElle se double d&#39;une exp&eacute;dition scientifique, de nombreux historiens, botanistes, dessinateurs accompagnant l&#39;arm&eacute;e afin de red&eacute;couvrir les richesses de l&#39;&Eacute;gypte. Elle est donc parfois aussi appel&eacute;e &laquo;&nbsp;exp&eacute;dition d&rsquo;&Eacute;gypte&nbsp;&raquo;, lorsque son c&ocirc;t&eacute; scientifique, moins martial, est consid&eacute;r&eacute;.\r\nLe 19 mai 1798 (30 flor&eacute;al an VI), aussit&ocirc;t apr&egrave;s l&#39;arriv&eacute;e du tr&eacute;sor mon&eacute;taire pill&eacute; &agrave; Berne2, le corps exp&eacute;ditionnaire fran&ccedil;ais quitte Toulon, mais des navires les accompagnent de Marseille, G&ecirc;nes, Ajaccio, Civitavecchia. Au total plus de 400&nbsp;navires prennent part &agrave; cette flotte, ainsi que 40&nbsp;000&nbsp;hommes et 10&nbsp;000&nbsp;marins. La flotte s&#39;empare tout d&#39;abord de Malte le 11 juin, puis d&eacute;barque &agrave; Alexandrie le 1er juillet.\r\nUne des plus c&eacute;l&egrave;bres batailles de cette campagne est la bataille des Pyramides qui a lieu le 21 juillet 1798.\r\nLes troupes r&eacute;volutionnaires sont finalement vaincues et doivent abandonner l&#39;&Eacute;gypte mi-1801.', '2020-06-03 14:26:59', 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `creationDate` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `subject`
--

INSERT INTO `subject` (`id`, `title`, `status`, `creationDate`, `user_id`) VALUES
(1, 'Mes victoires', 1, '2020-05-29 12:17:37', 1),
(2, 'Mes livres', 1, '2020-05-29 12:17:37', 2),
(3, 'J\'accuse!', 1, '2020-06-03 13:25:16', 2),
(4, 'La Corse, c\'est bô', 1, '2020-06-03 13:42:16', 1),
(5, 'Mes généraux', 1, '2020-06-03 13:45:50', 1),
(6, 'Mon voyage en Egypte', 1, '2020-06-03 14:26:25', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `role` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'role_user',
  `creationDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `creationDate`) VALUES
(1, 'Napoléon', 'napoleon@bonaparte.com', '$2y$10$KhtvpOwuANBgejhKk8wkxOLGPQi7Cur.ja0gBQ4u/tusf2FHTVHl6', '\'role_user\'', '2020-05-28 20:11:35'),
(2, 'Emile', 'emile@zola.fr', '$2y$10$H4b3MA1pHdSCI2X7fthue.S0aiZGQpInLvU9mfODwXBtHNQJgG2tS', 'role_user', '2020-05-29 09:47:09');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `visitor_id` (`user_id`);

--
-- Index pour la table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitor_id` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
