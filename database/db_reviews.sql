-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2020 a las 21:29:51
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_reviews`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Aventura', 'Resaltan características cómo: el riesgo, la sorpresa y el misterio. La trama tiene mucha importancia, no tanto el aspecto psicológico de los personajes.'),
(2, 'Isekai', 'Gira en torno a una persona normal de la Tierra que es transportada, renacida o atrapado en un universo paralelo o un mundo de fantasía.'),
(3, 'Magia', 'La magia dota a los personajes con poderes que no ocurren naturalmente en el mundo real, se manifiesta frecuentemente en la transformación de un personaje, si no en la transformación del mundo ficticio.'),
(4, 'Shounen', 'Series con grandes dosis de acción,​ a menudo situaciones humorísticas con protagonistas masculinos. El compañerismo entre adolescentes o adultos de un equipo de combate, también suele subrayarse en un shounen.'),
(5, 'Deportes', 'En estos animes la trama gira en torno a un equipo deportivo y al desarrollo de sus personajes, durante varias etapas competitivas.'),
(7, 'SSAASAGEO', 'SASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `score` int(11) NOT NULL,
  `id_review` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `comment`, `score`, `id_review`, `id_user`) VALUES
(2, 'ta buenardo', 5, 1, 6),
(3, 'flojo', 2, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `review` text NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `author`, `review`, `id_category`) VALUES
(1, 'Re: Zero kara Hajimeru Isekai Seikatsu', 'Tappei Nagatsuki', 'Cuando Subaru Natsuki sale de la tienda, lo último que espera es ser arrancado de su vida cotidiana y caer en un mundo de fantasía. Las cosas no pintan bien para el adolescente desconcertado; sin embargo, poco después de su llegada, es atacado por unos matones. Armado con solo una bolsa de víveres y un teléfono celular ahora inútil, rápidamente lo reducen a palos. Afortunadamente, una misteriosa belleza llamada Satella, que persigue a quien le robó su insignia, se encuentra con Subaru y lo salva. Para agradecer a la chica honesta y de buen corazón, Subaru se ofrece a ayudar en su búsqueda, y más tarde esa noche, incluso encuentra el paradero de lo que ella busca. Pero sin que ellos lo sepan, una fuerza mucho más oscura acecha a la pareja desde las sombras, y pocos minutos después de localizar la insignia, Subaru y Satella son brutalmente asesinados.\r\nSin embargo, Subaru se despierta de inmediato a una escena familiar, confrontado por el mismo grupo de matones, encontrándose con Satella de nuevo, el enigma se profundiza a medida que la historia se repite inexplicablemente.', 2),
(3, 'One Piece', 'Eiichirō Oda', 'Gol D. Roger era conocido como el \"Rey Pirata\", el ser más fuerte e infame que navegó en Grand Line. La captura y ejecución de Roger por el Gobierno Mundial trajo un cambio en todo el mundo. Sus últimas palabras antes de su muerte revelaron la existencia del mayor tesoro del mundo, One Piece. Fue esta revelación la que provocó la Gran Era de los Piratas, hombres que soñaban con encontrar One Piece, que promete una cantidad ilimitada de riquezas y fama, y ​​muy posiblemente el pináculo de la gloria y el título de Rey Pirata.\r\nIngresa Monkey D. Luffy, un chico de 17 años que desafía tu definición estándar de pirata. En lugar de la personalidad popular de un pirata malvado, endurecido y desdentado que saquea pueblos por diversión, la razón de Luffy para ser pirata es pura maravilla: la idea de una aventura emocionante que lo lleva a personas intrigantes y, en última instancia, al tesoro prometido. Siguiendo los pasos de su héroe de la infancia, Luffy y su tripulación viajan a través de Grand Line, experimentando locas aventuras, desvelando oscuros misterios y luchando contra enemigos poderosos, todo para alcanzar la más codiciada de todas las fortunas: One Piece.', 1),
(4, 'Black Clover', 'Yūki Tabata', 'En un mundo lleno de magia, Asta, un huérfano que es demasiado ruidoso y enérgico, no posee nada en absoluto. A pesar de esto, sueña con convertirse en el Rey Mago, un título otorgado al mago más fuerte del Reino Clover. Con la misma aspiración, el amigo y rival de la infancia de Asta, Yuno, ha sido bendecido con la capacidad de controlar la poderosa magia del viento. Incluso con esta abrumadora brecha entre ellos, con la esperanza de despertar de alguna manera sus habilidades mágicas y alcanzar a Yuno, Asta entrena su cuerpo sin descanso todos los días.\r\nEn el Reino del Trébol, una vez que una persona cumple 15 años, es hora de que reciba su Grimorio, un objeto que permite a su portador usar su magia al máximo de su capacidad. En la ceremonia, Yuno obtiene un grimorio con un legendario trébol de cuatro hojas, lo que indica la fuerza excepcional de su portador, mientras Asta espera inútilmente el suyo. Sintiéndose abatido, pero no dispuesto a darse por vencido, Asta ve a Yuno atrapado por un mago que está tratando de robar el grimorio especial de Yuno. A pesar de estar completamente dominado por el captor de Yuno, la voluntad de Asta de seguir luchando lo recompensa con su propio Grimorio, uno con un trébol negro de cinco hojas inaudito.', 3),
(6, 'Fullmetal Alchemist: Brotherhood', 'Hiromu Arakawa', 'Los hermanos Edward y Alphonse Elric son criados por su madre Trisha Elric en la remota aldea de Resembool en el país de Amestris. Su padre Hohenheim, un alquimista notable y muy talentoso, abandonó a su familia cuando los niños aún eran pequeños, y mientras estaban al cuidado de Trisha comenzaron a mostrar afinidad por la alquimia y sintieron curiosidad por sus secretos. Sin embargo, Trisha murió de una enfermedad persistente.\r\nLos chicos viajaron por el mundo para avanzar en su entrenamiento alquímico con Izumi Curtis. Al regresar a casa, los dos deciden intentar devolverle la vida a su madre con alquimia. Sin embargo, la transmutación humana es un tabú, ya que es imposible hacerlo correctamente. En la transmutación fallida que resulta, el cuerpo de Al queda completamente borrado y Ed pierde su pierna izquierda. En un último intento desesperado por mantener vivo a su hermano, Ed sacrifica su brazo derecho para recuperar el alma de Al y la guarda en una armadura cercana. Después de que Edward recibe prótesis de automail. , los hermanos deciden incendiar la casa de su infancia (que simboliza su determinación y decisión de \"no volver atrás\") y se dirigen a la ciudad capital para convertirse en alquimistas estatales sancionados por el gobierno. Bajo la dirección del Coronel Roy Mustang, en el camino, descubren una profunda conspiración del gobierno para ocultar la verdadera naturaleza de la Piedra Filosofal que involucra a los homúnculos , los alquimistas de la nación vecina de Xing, el hombre con cicatrices de la nación devastada por la guerra de Ishval y el pasado de su propio padre.', 3),
(7, 'Hunter x Hunter (2011)', 'Yoshihiro Togashi', 'Doce años antes del inicio de la historia, Ging Freecss abandonó a su hijo Gon y lo dejó bajo el cuidado de su prima Mito en Isla Ballena. Al crecer Gon, descubre que su padre (el cual supuestamente había muerto) lo había abandonado para convertirse en uno de los mejores Cazadores. Motivado por esto, Gon decide marcharse de su hogar y presentarse para el Examen de Cazador, el cual consiste en superar una serie de desafíos que buscan probar las habilidades, supervivencia y trabajo en equipo de sus participantes.\r\n\r\nDurante el examen, Gon conoce y se hace amigo de otros tres participantes: Kurapika, el último miembro del Clan Kurta, que desea convertirse en Cazador con el fin de vengar a su familia y recuperar los ojos escarlata que fueron robados de sus cuerpos por un grupo de mercenarios llamados Gen\'ei Ryodan; Leorio, que tan solo quiere ser Cazador para poder pagar sus estudios de medicina; y Killua, un joven que abandonó su anterior vida como miembro de la más famosa familia de asesinos. Así, Gon en compañía de sus amigos vivirán una serie de aventuras mientras cada uno intenta cumplir con su deseo.', 1),
(8, 'Shingeki no KyojinSASAAAAAAGEOOOOOOOOOOOOSASAAAAAA', 'Hajime IsayamaSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOO', 'Shingeki no Kyojin comienza su historia declarando a la humanidad como una especie en peligro de extinción. Por más de cien años, han vivido temiéndole a los Titanes, una raza de seres humanoides con características de depredadores, quienes recorren este universo buscando personas a las cuales devorar.\r\nSASAAAAAAGEOOOOOOOOOOOO\r\nSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOOSASAAAAAAGEOOOOOOOOOOOO\r\nNingún ser humano parece saber mucho más de los titanes ni de sus orígenes, y la humanidad que los ha sobrevivido se han atrincherado dentro de gigantescos muros, creando pequeñas metrópolis resguardadas de estos seres.\r\n\r\nLa vida dentro de estos muros parece ser pacífica, pero para Eren Jaeger, nuestro protagonista, es aburrida. Eren desea luchar por la humanidad, vivir una aventura sin igual que le otorgue la libertad que tanto anhela. Por esto, desea unirse al cuerpo de la milicia que se dedica a salir de los muros y exterminar titanes para estudiarlos y aprender más de ellos.', 7),
(10, 'KonoSuba!', 'Natsume Akatsuki', 'Después de sufrir una muerte ridícula y patética en su camino de regreso de comprar un juego, el estudiante de secundaria y recluso Kazuma Satou se encuentra sentado ante una hermosa pero desagradable diosa llamada Aqua. Ella le brinda al NEET dos opciones: continuar hacia el cielo o reencarnarse en el sueño de todo jugador: ¡un mundo de fantasía real! Al elegir comenzar una nueva vida, Kazuma tiene rápidamente la tarea de derrotar a un Rey Demonio que está aterrorizando a las aldeas. Pero antes de irse, puede elegir un elemento de cualquier tipo para ayudarlo en su búsqueda, y el futuro héroe selecciona a Aqua. Pero Kazuma ha cometido un grave error: ¡Aqua es completamente inútil!\r\n\r\nDesafortunadamente, sus problemas no terminan aquí; resulta que vivir en un mundo así es muy diferente de cómo se desarrolla en un juego. En lugar de emprender una aventura emocionante, el dúo primero debe trabajar para pagar sus gastos de vida. De hecho, ¡sus desgracias apenas han comenzado!', 2),
(13, 'Dragon Ball', 'Akira Toriyama', 'Gokuu Son es un niño que vive solo en el bosque, es decir, hasta que una niña llamada Bulma se encuentra con él en su búsqueda de un conjunto de objetos mágicos llamados \"Dragon Balls\". Dado que se dice que los artefactos conceden un deseo a quienquiera que reúna los siete, Bulma espera reunirlos y desear un novio perfecto. Gokuu está en posesión de una bola de dragón, pero desafortunadamente para Bulma, él se niega a separarse de ella, por lo que ella le hace un trato: él puede acompañarlo en su viaje si le permite tomar prestado el poder de la bola de dragón. Con eso, los dos emprendieron el viaje de su vida.\r\n\r\nNo emprenden el viaje solos. En el camino, se encuentran con el viejo Muten-Roshi y el aspirante a discípulo Kuririn, con quien Gokuu entrena para convertirse en un artista marcial más fuerte para el próximo Torneo Mundial de Artes Marciales. Sin embargo, no todo es diversión y juegos; la capacidad de hacer realidad cualquier deseo es poderosa, y hay otros que lo harían mucho peor que simplemente desear un novio. Para detener a aquellos que intentarían abusar del poder legendario, entrenan para convertirse en luchadores más fuertes, usando su nueva fuerza para ayudar a las personas que los rodean en el camino.', 1),
(15, 'dsd', 'sdsd', 'sdasd', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`) VALUES
(1, 'soyadmin@demo.com', '$2y$12$awEwkQDPG5IJwQCynWUEEuWQhF6FV8B2fXfe/p0wDSEgwBHXOOOhi', 1),
(6, 'nosoyadmin@demo.com', '$2y$10$YWvvRwbfE5lND2b5K4ZXue.pfO.UBnyEmrcA7dAQzzTIPdvzANXUq', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_review` (`id_review`),
  ADD KEY `id_user` (`id_user`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_review`) REFERENCES `reviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
