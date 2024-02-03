-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 11:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neptune_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments_table`
--

CREATE TABLE `comments_table` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `parent_comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers_table`
--

CREATE TABLE `followers_table` (
  `follow_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `followed_id` int(11) NOT NULL,
  `followed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `followers_table`
--

INSERT INTO `followers_table` (`follow_id`, `follower_id`, `followed_id`, `followed_at`) VALUES
(1, 487, 463, '2024-02-02 05:44:30'),
(2, 489, 488, '2024-02-03 15:22:57'),
(3, 494, 491, '2024-02-03 17:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `likes_table`
--

CREATE TABLE `likes_table` (
  `like_id` int(11) NOT NULL,
  `liker_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes_table`
--

INSERT INTO `likes_table` (`like_id`, `liker_id`, `post_id`, `liked_at`) VALUES
(267, 470, 139, '2023-06-18 15:53:02'),
(268, 470, 137, '2023-06-18 15:53:02'),
(273, 465, 134, '2023-06-18 15:53:02'),
(277, 464, 131, '2023-06-18 15:53:02'),
(290, 464, 139, '2023-06-18 15:53:02'),
(291, 464, 137, '2023-06-18 15:53:02'),
(293, 465, 131, '2023-06-18 15:53:02'),
(300, 465, 137, '2023-06-18 15:53:02'),
(301, 465, 136, '2023-06-18 15:53:02'),
(303, 465, 135, '2023-06-18 15:53:02'),
(306, 465, 132, '2023-06-18 15:53:02'),
(307, 465, 139, '2023-06-18 15:53:02'),
(309, 465, 128, '2023-06-18 15:53:02'),
(310, 465, 123, '2023-06-18 15:53:02'),
(311, 462, 139, '2023-06-18 15:53:02'),
(312, 464, 134, '2023-06-18 15:53:02'),
(313, 464, 136, '2023-06-18 15:53:02'),
(314, 464, 133, '2023-06-18 15:53:02'),
(315, 464, 122, '2023-06-18 15:53:02'),
(316, 464, 121, '2023-06-18 15:53:02'),
(317, 465, 116, '2023-06-18 15:53:02'),
(318, 465, 125, '2023-06-18 15:53:02'),
(319, 465, 127, '2023-06-18 15:53:02'),
(320, 463, 139, '2023-06-18 15:53:02'),
(321, 463, 126, '2023-06-18 15:53:02'),
(322, 463, 133, '2023-06-18 15:53:02'),
(323, 463, 119, '2023-06-18 15:53:02'),
(324, 463, 114, '2023-06-18 15:53:02'),
(325, 463, 136, '2023-06-18 15:53:02'),
(326, 463, 134, '2023-06-18 15:53:02'),
(327, 463, 129, '2023-06-18 15:53:02'),
(328, 463, 127, '2023-06-18 15:53:02'),
(329, 463, 137, '2023-06-18 15:53:02'),
(330, 463, 135, '2023-06-18 15:53:02'),
(331, 463, 124, '2023-06-18 15:53:02'),
(332, 463, 123, '2023-06-18 15:53:02'),
(333, 463, 122, '2023-06-18 15:53:02'),
(334, 463, 121, '2023-06-18 15:53:02'),
(335, 463, 118, '2023-06-18 15:53:02'),
(336, 463, 116, '2023-06-18 15:53:02'),
(337, 463, 113, '2023-06-18 15:53:02'),
(338, 469, 139, '2023-06-18 15:53:02'),
(339, 469, 136, '2023-06-18 15:53:02'),
(340, 469, 134, '2023-06-18 15:53:02'),
(341, 469, 133, '2023-06-18 15:53:02'),
(342, 469, 131, '2023-06-18 15:53:02'),
(343, 469, 129, '2023-06-18 15:53:02'),
(344, 469, 128, '2023-06-18 15:53:02'),
(345, 469, 127, '2023-06-18 15:53:02'),
(346, 469, 126, '2023-06-18 15:53:02'),
(347, 469, 125, '2023-06-18 15:53:02'),
(348, 469, 123, '2023-06-18 15:53:02'),
(349, 469, 121, '2023-06-18 15:53:02'),
(350, 469, 119, '2023-06-18 15:53:02'),
(351, 469, 117, '2023-06-18 15:53:02'),
(352, 469, 116, '2023-06-18 15:53:02'),
(353, 469, 115, '2023-06-18 15:53:02'),
(354, 469, 114, '2023-06-18 15:53:02'),
(355, 469, 113, '2023-06-18 15:53:02'),
(356, 469, 135, '2023-06-18 15:53:02'),
(357, 469, 124, '2023-06-18 15:53:02'),
(358, 469, 118, '2023-06-18 15:53:02'),
(359, 469, 137, '2023-06-18 15:53:02'),
(360, 469, 132, '2023-06-18 15:53:02'),
(361, 465, 122, '2023-06-18 15:53:02'),
(362, 465, 115, '2023-06-18 15:53:02'),
(363, 465, 133, '2023-06-18 15:53:02'),
(364, 465, 124, '2023-06-18 15:53:02'),
(365, 465, 113, '2023-06-18 15:53:02'),
(366, 465, 129, '2023-06-18 15:53:02'),
(367, 465, 114, '2023-06-18 15:53:02'),
(368, 465, 126, '2023-06-18 15:53:02'),
(369, 470, 134, '2023-06-18 15:53:02'),
(370, 470, 127, '2023-06-18 15:53:02'),
(371, 470, 133, '2023-06-18 15:53:02'),
(372, 470, 126, '2023-06-18 15:53:02'),
(373, 487, 139, '2024-02-02 05:40:05'),
(374, 487, 191, '2024-02-02 05:43:57'),
(375, 487, 137, '2024-02-02 05:44:35'),
(376, 487, 126, '2024-02-02 06:04:20'),
(377, 487, 125, '2024-02-02 06:06:56'),
(378, 488, 191, '2024-02-02 18:31:28'),
(380, 488, 131, '2024-02-03 14:09:37'),
(381, 488, 192, '2024-02-03 14:57:55'),
(385, 489, 192, '2024-02-03 15:20:03'),
(386, 494, 192, '2024-02-03 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `posts_table`
--

CREATE TABLE `posts_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_dir` varchar(255) DEFAULT NULL,
  `image_public_id` varchar(255) DEFAULT NULL,
  `caption` varchar(2200) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts_table`
--

INSERT INTO `posts_table` (`id`, `user_id`, `image_dir`, `image_public_id`, `caption`, `created_at`, `updated_at`) VALUES
(113, 464, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032837/momento/posts/6476ce0208acf_64736461c0826_647227bf5500f_andres-prieto-molina-ytLljskLEQc-unsplash_gxjz3p.jpg', NULL, 'Just completed building my new drone! It\'s all set and ready! Any recommendations on breathtaking locations for capturing amazing shots? 🌍📸 #DronePhotography #AdventureAwaits', '2023-05-28 14:25:37', '2023-05-31 06:33:06'),
(114, 470, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032842/momento/posts/6476d04665426_6473659ed9e67_nong-9pw4TKvT3po-unsplash_kc1pma.jpg', NULL, 'Unlocking the mysteries of the night with words, now I can read in the dark! 🌙📚', '2023-05-28 14:30:54', '2023-05-31 06:42:46'),
(115, 465, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032839/momento/posts/6476cfc93a46d_647366e9dfa33_ellicia-4xNDhf0nA-Y-unsplash_afx4bf.jpg', NULL, 'A delightful encounter with nature\'s cuddliest ambassador at the zoo! 🐨✨ #KoalaCuteness', '2023-05-28 14:36:25', '2023-05-31 06:40:41'),
(116, 462, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032838/momento/posts/6476ced7a96d7_647367b82ec25_jason-leung-3yllkHDQkus-unsplash_mbk9xy.jpg', NULL, 'Cruisin\' through the car show in Manhattan 🚗📸 #CarEnthusiast #AutoShowcase', '2023-05-28 14:39:52', '2023-05-31 06:36:39'),
(117, 463, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032841/momento/posts/6476d0a862310_6473694163d7f_marc-chong-FwOok-7ao8Y-unsplash_atwhui.jpg', NULL, 'Immersed in the city\'s energy, enjoying the vibrant NYC vibes! 🌆🌟 #CityLife #NewYorkCity', '2023-05-28 14:43:07', '2023-05-31 06:44:24'),
(118, 469, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032840/momento/posts/6476cf2c93262_64731f2d0a208_parker-coffman-GgsG8aNLgjQ-unsplash_vrfa9o.jpg', NULL, 'Playing my guitar, filling the air with music. 🎶🎸', '2023-05-28 14:49:32', '2023-05-31 06:38:04'),
(119, 470, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032840/momento/posts/6476cfff079d5_64736b1c65629_kevin-schmid_-_kTgps7o15g-unsplash_w0sbck.jpg', NULL, 'Embracing the snowy charm of Zermatt from inside the iconic red train ❄️🚂❄️', '2023-05-28 14:54:20', '2023-05-31 06:41:35'),
(121, 464, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032837/momento/posts/6476cdd054236_6473701ee7590_rumman-amin-GA1g1FVzaes-unsplash_njqoz4.jpg', NULL, 'Lost in the colors of Positano, where every corner tells a story of beauty and charm. 🇮🇹💙☀️ #PositanoDreams #ItalianEscape', '2023-05-28 15:15:03', '2023-05-31 06:32:16'),
(122, 462, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032837/momento/posts/6476cec045241_647371a58cea0_morgan-rovang-t38nvd1DF3o-unsplash_sd0wew.jpg', NULL, 'Unleashing the spirit of adventure amidst the majestic mountains of Silverton.', '2023-05-28 15:22:13', '2023-05-31 06:36:16'),
(123, 465, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032839/momento/posts/6476cfb0df5e0_64737335c608e_646dd1e6b3728_adam-freeman-r-1fwyoCcZI-unsplash_tkebbc.jpg', NULL, 'Exploring the great outdoors on an epic trekking adventure. Every step reveals new wonders and unforgettable experiences. #TrekkingLife #NatureExploration', '2023-05-28 15:28:53', '2023-06-18 14:23:07'),
(124, 469, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032839/momento/posts/6476cf1e9f4f1_6473245e6fa5b_colin-lloyd-SplXzxtv6AI-unsplash_sm02e4.jpg', NULL, 'Immersed in the music, surrounded by joy! 🎶🎉 #MusicFestivalVibes', '2023-05-28 15:29:52', '2023-05-31 06:37:50'),
(125, 463, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032842/momento/posts/6476d0994e0a0_6473742bdf012_kayleigh-harrington-yhn4okt6ci0-unsplash_kwaymc.jpg', NULL, 'Indulging in a delightful dining experience at my favorite restaurant. Bon appétit! 🍽️✨ #CulinaryDelights #FoodieAdventures\"', '2023-05-28 15:32:59', '2023-05-31 06:44:09'),
(126, 470, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032841/momento/posts/6476cff2b1309_64731f5a97b33_toms-rits-ryfptJi3fAM-unsplash_siyf5x.jpg', NULL, 'Embarking on an Adventure: Our Caravan Getaway Begins! 🚐✨', '2023-05-28 15:34:19', '2023-05-31 06:41:22'),
(127, 464, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032836/momento/posts/6476cd9604bfa_64737618eb234_ashim-d-silva-h8b1T39sm2w-unsplash_cnumld.jpg', NULL, 'Throwing it back to the wild and untamed beauty of Africa, where breathtaking landscapes and unforgettable memories were captured along the open road. 🌍🚐', '2023-05-28 15:41:12', '2023-05-31 06:31:18'),
(128, 469, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032838/momento/posts/6476cefca5f41_6475da1e3fc9c_64731ea897fbe_fancy-crave-qowyMze7jqg-unsplash_eweun7.jpg', NULL, 'Spectating tonight\'s match in England! Who\'s your team? ⚽', '2023-05-28 15:42:04', '2023-05-31 06:37:16'),
(129, 462, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032837/momento/posts/6476cea76a5f6_647376f172804_guillaume-briard-l2hEOM38Hts-unsplash_e74440.jpg', NULL, 'Balancing on the edge of possibility, conquering mountains and pushing beyond limits. Embrace the thrill of reaching new heights with me. 🏔️✨ #MountainAdventures #LimitlessJourney', '2023-05-28 15:44:49', '2023-05-31 06:35:51'),
(131, 465, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032839/momento/posts/6476cf6a4383e_64737d097e7b1_nicole-herrero-rWWLpxSefp8-unsplash_av5z6p.jpg', NULL, 'Gathering around a bountiful feast with cherished friends. Laughter, stories, and delicious moments shared. Grateful for these beautiful connections. 🍽️❤️🥂', '2023-05-28 16:01:40', '2023-05-31 06:39:06'),
(132, 463, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032843/momento/posts/6476d0893dcc3_64737cd0ba37f_annie-spratt-CWOA-njJBjE-unsplash_gk89oa.jpg', NULL, 'Captivated by the lively Berber market, where vibrant colors and rich culture come alive. Cherishing the memories and treasures found in every corner. 🌺🇲🇦 #BerberMarket #MoroccanVibes', '2023-05-28 16:07:17', '2023-05-31 06:43:53'),
(133, 470, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032840/momento/posts/6476cfe3c8b17_64737d4d86c2a_adriana-apostol-JhwwPzzh100-unsplash_ljcont.jpg', NULL, 'Lost in the enchanting world of Cărturești Carusel, where imagination takes flight. A mesmerizing encounter with the giant blue ball, a symbol of our vast and beautiful planet. 🌍💙 #CărtureștiCarusel #BucharestAdventures', '2023-05-28 16:11:57', '2023-06-18 15:52:01'),
(134, 464, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032836/momento/posts/6476cd7f88a7d_64737eee43f7b_jake-irish-NZBIaOMYJbY-unsplash_nxjhyk.jpg', NULL, 'Missing the unforgettable night we spent camping in an Airstream at the stunning Salar de Uyuni, Bolivia. Reminiscing about the surreal beauty of the salt flats and the joy of starry nights. 🏕️✨ #ThrowbackMemories #BolivianAdventures', '2023-05-28 16:18:54', '2023-05-31 06:30:55'),
(135, 469, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032838/momento/posts/6476cef40502b_64737fb90646a_kenny-eliason-PpXcJ9tDBBY-unsplash_dhwnr0.jpg', NULL, 'Last weekend, my band and I took the stage by storm, filling the air with electrifying guitar solos and pulsating beats. The energy was contagious, creating an unforgettable musical journey. 🎸🎶 #BandLife #WeekendVibes', '2023-05-28 16:22:17', '2023-05-31 06:37:08'),
(136, 465, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032837/momento/posts/647fbbe336b6c_6476cf4aac45b_647382ff5e1f8_alora-griffiths-mTJx6HeORCI-unsplash_xasfgn.jpg', NULL, 'Couldn\'t resist capturing the charm of Toronto\'s urban vibe. Just had to stop and take in the cityscape before diving into the day. 📸', '2023-05-28 16:33:33', '2023-06-18 14:23:00'),
(137, 463, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032841/momento/posts/6476d07a4bb96_647384231bf80_tom-ritson-14-jJXWXUys-unsplash-min_jivejp.jpg', NULL, 'Love the vibrant chaos of NYC streets 🌃', '2023-05-28 16:41:07', '2023-05-31 06:43:38'),
(139, 462, 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032837/momento/posts/6476ce1b16f17_6473cd1189858_tim-trad-Ur5VN_92g-k-unsplash_xjbzqi.jpg', NULL, 'Capturing the excitement of the Daytona 500! 🏁🔥 #Daytona500 #MemorableMoments', '2023-05-28 16:46:46', '2023-05-31 06:33:31'),
(191, 487, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706827429/momento/posts/xgh2ezpvmwe7zpxqfkdr.jpg', 'momento/posts/xgh2ezpvmwe7zpxqfkdr', 'Aldi Shops', '2024-02-02 05:43:52', NULL),
(192, 488, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706873698/momento/posts/i4p4yscdoyqp017iiyue.jpg', 'momento/posts/i4p4yscdoyqp017iiyue', 'Kampus ku', '2024-02-02 18:35:01', NULL),
(193, 489, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706948546/momento/posts/geccyanywgm7ryhnkwd2.jpg', 'momento/posts/geccyanywgm7ryhnkwd2', 'Kelompok 2', '2024-02-03 15:22:27', NULL),
(194, 490, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706948967/momento/posts/cnb7txn1rsdzdcaf1w1w.jpg', 'momento/posts/cnb7txn1rsdzdcaf1w1w', 'a New Movie', '2024-02-03 15:29:27', NULL),
(195, 491, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706949405/momento/posts/w5bp6nzb9tknvumamvze.jpg', 'momento/posts/w5bp6nzb9tknvumamvze', ';v', '2024-02-03 15:36:45', NULL),
(196, 492, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706949728/momento/posts/s9nlto0wtrfvpvfpbmpl.jpg', 'momento/posts/s9nlto0wtrfvpvfpbmpl', 'the movie', '2024-02-03 15:42:09', NULL),
(197, 493, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706950512/momento/posts/kuqxv1f2ljpm1swbskwu.jpg', 'momento/posts/kuqxv1f2ljpm1swbskwu', 'My favorite!!', '2024-02-03 15:55:12', NULL),
(198, 494, 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706954814/momento/posts/fqx4vckxajxsciixmsga.jpg', 'momento/posts/fqx4vckxajxsciixmsga', 'kelompok 2 desain kreatif', '2024-02-03 17:06:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_picture_path` varchar(255) NOT NULL,
  `image_public_id` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`id`, `username`, `full_name`, `email`, `phone_number`, `password`, `profile_picture_path`, `image_public_id`, `display_name`, `bio`, `created_at`) VALUES
(462, 'alexrodriguez', 'Alex Rodriguez', 'alexrodriguez@example.com', '716738183', '$2y$10$sNIp7/QUGoxQnybP/AO/8.Eclx1fN/uxJwpNqrKuD.lf7dGLF3zEe', 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032647/momento/profile-pictures/6476cbf3de953_6473372d1ee85_stephan-louis-MBTU3KoDZ94-unsplash_qdv6kg.jpg', NULL, 'Alex Rodriguez', '- Fitness & Car Lover\r\n- Passionate about health and horsepower \r\n- Join me on the ride! #FitnessCars', '2023-06-18 15:54:02'),
(463, 'oliviathompson', 'Olivia Thompson', 'oliviathompson@example.com', '77643819', '$2y$10$pQAbdDoESs10UbzAsNKEIOUlDqXXip8Ab9cIBGw/e5HfeUPyg.zw.', 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032647/momento/profile-pictures/6476cc4f297c4_6475e8eb14ab4_647339895169b_646e3e94c93a4_raul-angel-x8Ac6jee_3s-unsplash_ts8vht.jpg', NULL, 'Olivia Thompson', 'Music lover | Foodie | Fashion enthusiast | NYC 🎧🍕👗', '2023-06-18 15:54:02'),
(464, 'mikeanderson', 'Mike Anderson', 'mikeanderson@example.com', '946257812', '$2y$10$r00YkOSJuQC.OeeISIBZjO1cefHttqQGtpgEeL2EvXDCVnnuydGBO', 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032647/momento/profile-pictures/6476cc059acd8_64733c35a70ef_ashton-bingham-EQFtEzJGERg-unsplash_iipwrc.jpg', NULL, 'Mike Anderson', 'Capturing life\'s vibrant moments. Art, travel, and coffee fuel my adventures. #Photographer #Painter #Traveler', '2023-06-18 15:54:02'),
(465, 'emilywilson', 'Emily Wilson', 'emilywilson@example.com', '6784186461', '$2y$10$67OsumNDldspfYnirtOnpOKfGlSV2JRveJvbAVkJk4q/WfqbYH8fm', 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032647/momento/profile-pictures/6476cbd89323e_6475d9fd5557a_64733cdeed898_646d4e69d801f_andi-rieger-NRA1637A4Tc-unsplash_g1ewif.jpg', NULL, 'Emily Wilson', 'Passionate about cultivating a healthy lifestyle and inner balance. Embarking on thrilling treks and inspiring others to embrace wellness.', '2023-06-18 15:54:02'),
(469, 'davidcooper', 'David Cooper', 'davidcooper@example.com', '998164513', '$2y$10$0jdJLaDhsBMr.03bmNS58OL/DeLeuTzzX/PdL1g4d36/f2AbIePj6', 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032647/momento/profile-pictures/6476cc191e8f5_647369b0e1499_manas-taneja-e6mfL8_i9aQ-unsplash_v4fzfn.jpg', NULL, 'David Cooper', 'Guitarist and football lover. Sharing my passion for music and the beautiful game. Let\'s connect and create amazing moments! 🎸⚽', '2023-06-18 15:54:02'),
(470, 'sophiaadams', 'Sophia Adams', 'sophiaadams@example.com', '778164511', '$2y$10$2.NdctRewJkxaGDs9R8r.O1O7Jr/N9/1v0647urFv0/w5wTYZlRwe', 'https://res.cloudinary.com/dp4vwqhol/image/upload/v1687032646/momento/profile-pictures/6476cc2be1db6_6473638f48bd6_646e6f0f4aadf_aiony-haust-f2ar0ltTvaI-unsplash_ihopvo.jpg', NULL, 'Sophia Adams', '📸 Capturing moments | 🌍 Exploring the world | 📚 One book at a time', '2023-06-18 15:54:02'),
(486, 'aldip', 'aldip', 'aldi@gmail.com', '23523624', 'Dellan077', '', NULL, 'aldi', '', '2024-01-23 04:38:06'),
(487, 'sgsdgsdg', 'sdgsdg', 'sdg@gfhf.fdh', '35235', '$2y$10$MDs4Mdww3XK4CQ9UfwlndO6Lo2t3YBZxDzHw7/MHXI4oi.uGeOB6i', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706827192/momento/profile-pictures/dk5eq9ikux1rqsbxkgea.jpg', 'momento/profile-pictures/dk5eq9ikux1rqsbxkgea', 'Aldi Permana Kusuma', 'Hi I\'m Aldi', '2024-02-02 05:39:55'),
(488, 'aldipermana', 'Aldi Permana', 'aldi42@gmail.com', '0892323', '$2y$10$fkj.HoYoc6uzjk7DaVApwOxqEkXhUBIFEllna9ibT5tgaNP3pCGtm', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706873479/momento/profile-pictures/q4hv4me9xwxfio5tujld.jpg', 'momento/profile-pictures/q4hv4me9xwxfio5tujld', 'Aldi Permana', 'Hi I\'m Aldi!', '2024-02-02 18:31:23'),
(489, 'maulanakel2', 'Firman Maulana', 'firmanmaulana.v1@gmail.com', '08777777777', '$2y$10$pBMVSAj416McyEKVfPoLrO30I6WotRERLzjfZ.ekA11PLs4gEyJdO', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706948296/momento/profile-pictures/tivhata6ri9myuxvvljh.jpg', 'momento/profile-pictures/tivhata6ri9myuxvvljh', 'Firman Maulana', 'Hi Saya Firman Maulana dari Kelompok 2, Salam kenal', '2024-02-03 15:18:17'),
(490, 'mas_dew', 'Thiansyah Dewa', 'muhammadthiansyahdewa@gmail.com', '082321414141', '$2y$10$9LJ/rbN23IFgEpYYzFtVN.715H8AjLis6ZRn3k4XxPsRzK4a95eHy', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706948877/momento/profile-pictures/qfe1zddiolkyb7ydw6l7.jpg', 'momento/profile-pictures/qfe1zddiolkyb7ydw6l7', 'Thiansyah Dewa', 'Hi I\'m Thiansyah!', '2024-02-03 15:27:57'),
(491, 'syifareviana', 'Syifa Reviana', 'syifa.revianaputri@gmail.com', '082246498246', '$2y$10$t62jbVYHjUgCQfqYSeqzE.FDNxMe0OZzprUhXyyNFYMu/9ERlmIAy', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706949218/momento/profile-pictures/ovnqts9om5aown1lwseh.jpg', 'momento/profile-pictures/ovnqts9om5aown1lwseh', 'Syifa Reviana', 'Hi I\'m Syifa!', '2024-02-03 15:33:39'),
(492, 'ujanghendar', 'Ujang Hendar', 'ujangh@gmail.com', '0855223467', '$2y$10$VhS8iFU22W.PDBMTaU7mMuH1OttXqrvMFJWQYnct2dsGf/QdpBiOC', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706949612/momento/profile-pictures/y314asbkics88b4o2gna.jpg', 'momento/profile-pictures/y314asbkics88b4o2gna', 'Ujang Hendar', 'Hi I\'m Ujang!', '2024-02-03 15:40:12'),
(493, 'sricahya', 'sri cahya', 'sricahya@gmail.com', '0834349834', '$2y$10$NhKwpIN3I7W3DcMC7TQ2yep27ulvYO0eAU2U4BGAuqqOsWmr7n4Vi', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706950403/momento/profile-pictures/gdotj32bh6y7rj0mduj3.png', 'momento/profile-pictures/gdotj32bh6y7rj0mduj3', 'sri cahya', 'Hi I\'m sri!', '2024-02-03 15:53:23'),
(494, 'kelompok2', 'Kelompok2 Dekre', 'kelompok2@gmail.com', '08787667883', '$2y$10$BlUOyCn1roDbAus9GbofGejpFf2912wjqQHY1.gLaR4OgNtkupwhy', 'https://res.cloudinary.com/dm8y2mzg4/image/upload/v1706954644/momento/profile-pictures/d9hdbwfqznf3opycubzr.png', 'momento/profile-pictures/d9hdbwfqznf3opycubzr', 'Kelompok2 Desain Kreatif', 'Hi kami dari kelompok 2', '2024-02-03 17:02:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments_table`
--
ALTER TABLE `comments_table`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `followers_table`
--
ALTER TABLE `followers_table`
  ADD PRIMARY KEY (`follow_id`),
  ADD KEY `follower_id` (`follower_id`),
  ADD KEY `followed_id` (`followed_id`);

--
-- Indexes for table `likes_table`
--
ALTER TABLE `likes_table`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `liker_id` (`liker_id`) USING BTREE;

--
-- Indexes for table `posts_table`
--
ALTER TABLE `posts_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_table_ibfk_1` (`user_id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `followers_table`
--
ALTER TABLE `followers_table`
  MODIFY `follow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `likes_table`
--
ALTER TABLE `likes_table`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;

--
-- AUTO_INCREMENT for table `posts_table`
--
ALTER TABLE `posts_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments_table`
--
ALTER TABLE `comments_table`
  ADD CONSTRAINT `comments_table_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_table_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `followers_table`
--
ALTER TABLE `followers_table`
  ADD CONSTRAINT `followers_table_ibfk_1` FOREIGN KEY (`follower_id`) REFERENCES `users_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_table_ibfk_2` FOREIGN KEY (`followed_id`) REFERENCES `users_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes_table`
--
ALTER TABLE `likes_table`
  ADD CONSTRAINT `likes_table_ibfk_1` FOREIGN KEY (`liker_id`) REFERENCES `users_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_table_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts_table`
--
ALTER TABLE `posts_table`
  ADD CONSTRAINT `posts_table_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users_table` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
