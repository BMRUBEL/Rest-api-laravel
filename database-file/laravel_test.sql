-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 10:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `publish_date`, `created_at`, `updated_at`) VALUES
(1, 'Beatae similique accusamus rerum enim qui et aut.', 'Erick Corwin', '1996-05-13', '2024-03-04 23:00:54', '2024-03-04 23:00:54'),
(2, 'Doloremque distinctio officiis reprehenderit magni veniam.', 'Prof. Kirstin Schmitt', '2008-06-08', '2024-03-04 23:00:54', '2024-03-04 23:00:54'),
(3, 'Aut aut vero quis neque iure.', 'Juvenal Durgan II', '2009-02-21', '2024-03-04 23:00:54', '2024-03-04 23:00:54'),
(4, 'Ipsa saepe omnis adipisci omnis aliquam dolorem.', 'Macie Hamill', '1989-01-28', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(5, 'Eius nulla possimus dolores enim qui fugit.', 'Hoyt Ruecker', '1977-09-25', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(6, 'Sint rem quae provident libero nostrum.', 'Elena Padberg DDS', '1971-05-08', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(7, 'Quisquam et odio natus rerum.', 'Brad Leuschke', '1983-03-08', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(8, 'Qui temporibus harum incidunt cupiditate mollitia.', 'Dominique Rau', '1975-12-02', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(9, 'Repellendus sed nihil mollitia dolores ipsum.', 'Mr. Jalon Tillman I', '1988-01-05', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(10, 'Et doloremque modi vel consequatur fugiat quia nobis.', 'Jovanny O\'Hara', '2019-11-30', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(11, 'Illum veritatis officia omnis rerum nesciunt aliquid ab molestiae.', 'Dr. Dewitt Little', '2022-08-15', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(12, 'Tenetur repellat voluptatem quos.', 'Prof. Jewell Pagac Sr.', '1996-03-14', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(13, 'Atque voluptatem recusandae sunt molestias rem.', 'Fleta Von', '2020-10-22', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(14, 'Quibusdam corporis non doloremque sed rerum quia.', 'Ms. Araceli Quigley DDS', '1986-10-02', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(15, 'Eum nihil quia et facere optio ipsa illo.', 'Dr. Doug Feeney', '2011-01-05', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(16, 'Quibusdam aut adipisci illo blanditiis neque labore nisi.', 'Osvaldo Aufderhar', '1996-01-18', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(17, 'Voluptates dicta cum maiores suscipit.', 'Ottis Welch', '1974-09-25', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(18, 'Exercitationem fugit sit aut et sed illum asperiores.', 'Saige Torphy', '1987-11-22', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(19, 'Sit blanditiis provident sapiente aperiam incidunt.', 'Lola McKenzie II', '2011-02-13', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(20, 'Corporis quidem hic iste earum labore rem distinctio et.', 'Golden Waelchi', '2002-10-14', '2024-03-04 23:00:55', '2024-03-04 23:00:55'),
(21, 'Ab quaerat est atque laudantium dolore velit eos.', 'Jenifer Farrell', '2014-10-06', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(22, 'Sint velit ipsa quod culpa.', 'Ulices Bashirian', '2010-07-03', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(23, 'Reiciendis in aut sunt illo ut enim ipsum.', 'Emie Barrows Sr.', '1999-07-03', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(24, 'Doloremque aspernatur sunt odio ducimus sit.', 'Dr. Kaci Fadel II', '2011-02-28', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(25, 'Quisquam deserunt provident praesentium in sunt.', 'Jan Schuppe', '2014-02-21', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(26, 'Facilis fugit iste veritatis qui magni ipsa.', 'Nona Lehner', '1991-01-31', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(27, 'Molestiae soluta ut itaque veritatis et ipsum illo omnis.', 'Eloy Legros', '2009-12-02', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(28, 'Occaecati dolorem vitae reprehenderit laudantium.', 'Arch Aufderhar', '2000-12-20', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(29, 'Id qui molestiae asperiores deleniti.', 'Lilly Hartmann', '1992-08-24', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(30, 'Adipisci tempore corporis labore doloribus alias rerum.', 'Julien Auer', '1973-09-19', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(31, 'Eum consequatur nesciunt adipisci eos iusto.', 'Mrs. Baby Ziemann Sr.', '1992-08-12', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(32, 'Eos cupiditate et est assumenda.', 'Violet Emard', '2023-02-07', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(33, 'Harum et amet incidunt dolor fugit debitis cum corrupti.', 'Kylee Little', '2018-09-15', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(34, 'Quos dolores quo aut facere.', 'Dr. Billy Yundt MD', '1984-12-28', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(35, 'Voluptas et assumenda tempora quibusdam omnis aliquid nulla.', 'Lynn Jast III', '2014-07-28', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(36, 'Dolorum et quod sapiente nesciunt aut et laborum.', 'Laurence Runolfsdottir', '2011-12-12', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(37, 'Reprehenderit officia optio dolorem voluptas ut ipsa quam eum.', 'Gaston Jerde', '2017-10-04', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(38, 'Ut voluptas occaecati consectetur eius dicta.', 'Vaughn Rempel IV', '1980-06-25', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(39, 'Quia illum sint magni quia provident minima quaerat.', 'Solon Bauch', '1970-03-25', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(40, 'Autem totam minus sequi at dolorum molestiae.', 'Stevie Lang', '2010-08-09', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(41, 'Et enim eaque voluptas molestias rem incidunt quasi.', 'Eugene McClure', '1988-02-28', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(42, 'Iste id et reiciendis assumenda reiciendis et.', 'Esther Leannon', '1976-07-05', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(43, 'Assumenda voluptate consequuntur nemo voluptas reiciendis qui.', 'Sam Emmerich', '2005-05-24', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(44, 'Ab eveniet repellat consectetur minus architecto ab natus.', 'Dr. Royal Nienow', '2010-07-31', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(45, 'Deleniti quia blanditiis ex autem assumenda animi sed impedit.', 'Kelly West', '1989-07-27', '2024-03-04 23:00:56', '2024-03-04 23:00:56'),
(46, 'Nesciunt molestiae sapiente incidunt.', 'Gunner Hermann MD', '1980-05-02', '2024-03-04 23:00:57', '2024-03-04 23:00:57'),
(47, 'Cupiditate quos repellendus provident ut ab repellendus.', 'Toy Hudson', '2023-04-22', '2024-03-04 23:00:57', '2024-03-04 23:00:57'),
(48, 'Voluptate debitis sed laboriosam modi.', 'Bryon Thompson', '1992-02-19', '2024-03-04 23:00:57', '2024-03-04 23:00:57'),
(49, 'Et laboriosam odit eos nulla quis.', 'Aurelie Braun II', '1978-12-09', '2024-03-04 23:00:57', '2024-03-04 23:00:57'),
(50, 'Et odio laboriosam molestiae commodi veritatis.', 'Cletus McKenzie', '1984-02-03', '2024-03-04 23:00:57', '2024-03-04 23:00:57'),
(51, 'Story Book', 'Authicathic publication', '2024-03-05', '2024-03-05 01:48:23', '2024-03-05 01:48:23'),
(52, 'Story Book', 'Authicathic publication', '2024-03-05', '2024-03-05 01:48:29', '2024-03-05 01:48:29'),
(53, 'Math Tutor', 'Tutor publication', '2024-03-02', '2024-03-05 02:13:02', '2024-03-05 04:20:40'),
(54, 'English Tutor', 'Tutor publication', '2024-03-02', '2024-03-05 02:15:24', '2024-03-05 04:23:43'),
(55, 'Generale knowledge', 'Authicathic publication', '2024-03-01', '2024-03-05 02:17:32', '2024-03-05 02:17:32'),
(56, 'Generale knowledge', 'Authicathic publication', '2024-03-01', '2024-03-05 03:22:57', '2024-03-05 03:22:57'),
(58, 'English Tutor', 'Tutor publication', '2024-03-02', '2024-03-05 03:39:37', '2024-03-05 05:04:41'),
(60, 'English Tutor', 'Tutor publication', '2024-03-02', '2024-03-05 03:59:21', '2024-03-05 04:27:14'),
(62, 'Math Tutor', 'Tutor publication', '2024-03-01', '2024-03-12 21:03:29', '2024-03-12 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_03_04_121802_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
