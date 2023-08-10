-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Ağu 2023, 10:47:07
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `libraryproject`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_surname` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `authors`
--

INSERT INTO `authors` (`id`, `name_surname`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Stephen King', 1, NULL, NULL),
(4, 'Seymen Bozaslan', 1, NULL, NULL),
(5, 'J. K. Rowling', 4, NULL, NULL),
(7, 'Lev Nikolayeviç Tolstoy', 4, NULL, NULL),
(8, 'Victor Hugo', 1, NULL, NULL),
(9, 'Marcus Aurelius', 1, NULL, NULL),
(10, 'Stefan Zweig', 1, NULL, NULL),
(11, 'George Orwell', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `books`
--

INSERT INTO `books` (`id`, `name`, `user_id`, `author_id`, `publisher_id`, `created_at`, `updated_at`) VALUES
(4, 'Fairy Tale', 1, 3, 5, NULL, NULL),
(5, 'Enstitü', 1, 3, 5, NULL, NULL),
(6, 'Lisey\'in Hikayesi', 1, 3, 5, NULL, NULL),
(7, '100.Yılında Türkiye Seyahatnamesi', 1, 4, 5, NULL, NULL),
(8, 'Harry Potter ve Felsefe Taşı', 4, 5, 6, NULL, NULL),
(9, 'Harry Potter ve Zümrüdüanka Yoldaşlığı', 4, 5, 6, NULL, NULL),
(10, 'Harry Potter ve Melez Prens', 4, 5, 6, NULL, NULL),
(11, 'İnsan Neyle Yaşar?', 4, 7, 7, NULL, NULL),
(12, 'Bir İdam Mahkumunun Son Günü', 1, 8, 7, NULL, NULL),
(13, 'Kendime Düşünceler', 1, 9, 7, NULL, NULL),
(14, 'Olağanüstü Bir Gece', 1, 10, 7, NULL, NULL),
(15, 'Bir Kadının Hayatından 24 Saat', 1, 10, 8, NULL, NULL),
(16, 'Karmaşık Duygular', 1, 10, 9, NULL, NULL),
(17, 'O muydu?', 1, 10, 9, NULL, NULL),
(18, '1984', 1, 11, 9, NULL, NULL),
(19, 'Hayvan Çiftliği', 1, 11, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `comments`
--

INSERT INTO `comments` (`id`, `comment`, `book_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Deneme', 3, 1, NULL, NULL),
(6, 'A Very Good Book', 4, 3, NULL, NULL),
(7, 'Best Book I\'ve Read', 7, 4, NULL, NULL),
(8, 'Çok güzel ve kaliteli. Sadece anlayabilen kesim okumalı.', 4, 1, NULL, NULL),
(9, 'Değişik ama bir o kadar da keyif alarak okuduğum güzel bir kitap.', 4, 4, NULL, NULL),
(10, 'Büyüklerin mutlaka okuması gereken bir kitap, küçükler çok anlayamaz , onlar olaya sadece hayvan çiftliği gibi bakar.', 5, 4, NULL, NULL),
(11, 'Kesinlikle herkesin okuması gereken bir eser.', 6, 5, NULL, NULL),
(12, 'Mutlaka alın, okuyun..', 7, 5, NULL, NULL),
(13, 'Dünyanın düzenine çok iyi örnek bir kitap.', 19, 5, NULL, NULL),
(14, 'Tüm zamanların en iyi kitabı olmaya layık.İlk başlarda okuyucuya bir masal gibi gelse de kitabı okumaya devam ettikçe aslında bunun bir masal değil çarpıcı bir gerçeklik olduğu ansızın ortaya çıkıyor.', 19, 1, NULL, NULL),
(15, 'Tüm zamanların en iyi kitabı olmaya layık.İlk başlarda okuyucuya bir masal gibi gelse de kitabı okumaya devam ettikçe aslında bunun bir masal değil çarpıcı bir gerçeklik olduğu ansızın ortaya çıkıyor.', 18, 1, NULL, NULL),
(16, 'Gelmiş geçmiş en iyi kitaplardan biri', 18, 5, NULL, NULL),
(17, 'Toplumsal yaralarımıza ışık tutan herkesin okuması gereken bir kitap', 17, 1, NULL, NULL),
(18, 'Akıcı bir anda okunası bir kitap. En önemlisi sosyal mesaj içerikli siyasi açıdan aydınlatıcı sorgulayıcı bir kurguya sahip..', 16, 5, NULL, NULL),
(19, 'Sürekli olarak okunması gereken bir kitap', 15, 5, NULL, NULL),
(20, 'Filmini izlemiştim kitabını görünce kaçıramazdım..', 8, 4, NULL, NULL),
(21, 'İnsanlara farklı bir bakış acısı kazandırıyor.', 9, 4, NULL, NULL),
(22, 'Okurken zamanın nasıl geçtiğini anlamayacağınız neredeyse bir oturuşta okuyabileceğiniz güzel anlatımlı bir kitap,tavsiye ederim.', 10, 4, NULL, NULL),
(23, 'Bir çırpıda okunan türden.', 11, 1, NULL, NULL),
(24, 'Kesinlikle tavsiye ediyorum, çok güzel.', 12, 1, NULL, NULL),
(25, 'O kadar güzel anlatımı var ki, 1 gecede okudum... mutlaka okunması gerek...', 13, 1, NULL, NULL),
(26, 'Kesinlikle okunması gereken bir kitap', 14, 1, NULL, NULL),
(27, 'Başarılı Bir Kitap.', 4, 2, NULL, NULL),
(28, 'Süper Kitap.', 5, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_09_123223_create_sessions_table', 1),
(7, '2023_08_09_132335_create_publishers_table', 2),
(8, '2023_08_09_135532_create_authors_table', 3),
(9, '2023_08_09_160500_create_books_table', 4),
(10, '2023_08_09_193151_create_commnents_table', 5),
(11, '2023_08_09_195143_create_comments_table', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('huseyin66unalan@gmail.com', '$2y$10$mZ/sE/oQD6IYzPIKi2lj4.yBYHePpsa8YflOnaaiKsJ9ayFqxQUa.', '2023-08-09 14:59:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Altın Kitaplar', 1, NULL, NULL),
(6, 'Yapı Kredi Yayınları', 4, NULL, NULL),
(7, 'İş Bankası Kültür Yayınları', 4, NULL, NULL),
(8, 'Kırmızı Kedi', 1, NULL, NULL),
(9, 'Can Yayınları', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7plQth8Ju8UNzCo84JAMtXAJk4pZnr4EZLy6UoAa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibEdramwzZW5IdkV3Z0lmbWMzbWg5Y1NtOFBkV29BV1Vtd0tqeEI3dyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1691657024),
('kebM76joDPi2jR0LOBg6uVnSLRXg2DSZA3uQO5KK', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVmlXcTNqTlJwT2VhdElKdEJEa1d3T09Fak9UMnFXZDlwUVlxVGltRSI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYm9vay9jb21tZW50cy8xMSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7fQ==', 1691653150);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Hüseyin', 'huseyin66unalan@gmail.com', NULL, '$2y$10$Pyy8ZILubakw13gqwBCpLOw1woJMHlUnxcsuHgUV6nZstUUgfNSU.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-09 09:34:32', '2023-08-09 09:34:32'),
(2, 'Furkan', 'furkan@gmail.com', NULL, '$2y$10$ImY57bZpX/6gtRMu.Wz8Gu9Iq4JQIK1olxF0BuVa0VUMUTfO/UNMy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-09 10:44:50', '2023-08-09 10:44:50'),
(3, 'İbrahim', 'ibrahim@gmail.com', NULL, '$2y$10$3o83c/NqRkg/TtZbfLKL5OTnAtycaQmTsAr2AViNhT5gt1/2wEhBO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-09 15:15:27', '2023-08-09 15:15:27'),
(4, 'Ahmet', 'ahmet@gmail.com', NULL, '$2y$10$Q0xBsTiTwJS6tgIOwAUVxOlfLoA5zpps6urL7je9nhQdzdfY/006O', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-10 03:56:55', '2023-08-10 03:56:55'),
(5, 'Mehmet', 'mehmet@gmail.com', NULL, '$2y$10$zUjjpFNYzb/4t0D8ZRr7wue1P188KYWy93HcGKnj74vrNhiblA1gq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-10 04:31:54', '2023-08-10 04:31:54'),
(6, 'İsmail', 'ismail@gmail.com', NULL, '$2y$10$dpko51Uv.0uizJmUQKd9qurMuJB9vqbwl1ny8YigqoLfYrAuGK4EG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-10 05:18:19', '2023-08-10 05:18:19');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Tablo için indeksler `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Tablo için indeksler `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
