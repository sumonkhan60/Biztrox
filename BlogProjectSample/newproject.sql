-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 06:28 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `main_title` text NOT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `author_id`, `main_title`, `short_description`, `long_description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(4, 4, 5, 'উচ্চশিক্ষায় শিক্ষার্থী কমেছে আড়াই লাখ', 'করোনাসহ কয়েকটি কারণে শিক্ষার্থী কমতে পারে বলে ধারণা করা হচ্ছে। শিক্ষাকে জীবনমুখী করার পরামর্শ বিশেষজ্ঞদের।', 'করোনাকালে দেশের সরকারি ও বেসরকারি বিশ্ববিদ্যালয়গুলোতে শিক্ষার্থী কমেছে। এক বছরের ব্যবধানে উচ্চশিক্ষায় শিক্ষার্থী কমেছে প্রায় আড়াই লাখ। তবে কমেছে মূলত ছাত্রের সংখ্যা, বিপরীতে অল্প সংখ্যায় বেড়েছে ছাত্রী।\r\n\r\nবিশ্ববিদ্যালয় মঞ্জুরি কমিশনের (ইউজিসি) সর্বশেষ বার্ষিক প্রতিবেদনে এই চিত্র উঠে এসেছে। বিশ্ববিদ্যালয়গুলোর দেওয়া ২০২১ সালের তথ্য নিয়ে প্রতিবেদনটি তৈরি করা হয়েছে।\r\n\r\n২০২০ ও ২০২১ সাল—এ দুই বছর সারা বিশ্বের মতো বাংলাদেশেও করোনার বিস্তার ছিল। দেশে করোনাকালে যেসব খাতের ওপর বেশি নেতিবাচক প্রভাব পড়েছে, সেগুলোর অন্যতম শিক্ষা। ২০২০ সালের মার্চে করোনা সংক্রমণ শুরুর পরের দেড় বছরে শিক্ষাপ্রতিষ্ঠানগুলোতে সশরীর ক্লাস বন্ধ ছিল।\r\n\r\nবর্তমানে দেশে ৫৩টি (২০২১ সাল পর্যন্ত ৫০টি) সরকারি এবং ১০৮টি বেসরকারি বিশ্ববিদ্যালয় রয়েছে। ইউজিসির তথ্য বলছে, ২০২১ সালে সরকারি ও বেসরকারি বিশ্ববিদ্যালয়গুলোতে শিক্ষার্থী ছিল ৪৪ লাখ ৪১ হাজার ৭১৭ জন। ২০২০ সালে এ সংখ্যা ছিল ৪৬ লাখ ৯০ হাজার ৮৭৬।\r\n\r\nঅর্থাৎ এক বছরের ব্যবধানে শিক্ষার্থী কমেছে ২ লাখ ৪৯ হাজার ১৫৯ জন। এর মধ্যে বেশি কমেছে পাবলিক বিশ্ববিদ্যালয়গুলোর (জাতীয় বিশ্ববিদ্যালয়সহ) শিক্ষার্থী—এ সংখ্যা ২ লাখ ৩০ হাজারের বেশি। বাকি শিক্ষার্থী বেসরকারি বিশ্ববিদ্যালয়ের। কমে যাওয়া শিক্ষার্থীদের মধ্যে ২ লাখ ৭৮ হাজার ১১২ জন ছাত্র। তবে ছাত্রীর সংখ্যা বেড়েছে প্রায় ২৯ হাজার।', 'blog-images/education-01.jpg', 1, '2023-01-13 08:15:10', '2023-01-13 08:15:41'),
(5, 1, 5, 'রোনালদো–মেসিদের ম্যাচের বিশেষ টিকিটের দাম ২৫ কোটি টাকা', 'ফুটবল ম্যাচে একটি বিশেষ টিকিটের মূল্য সর্বোচ্চ কত হতে পারে?', '১৯ জানুয়ারি রিয়াদের কিং ফাহাদ স্টেডিয়ামে অনুষ্ঠিত হতে যাওয়া ক্রিস্টিয়ানো রোনালদো বনাম মেসি-এমবাপ্পে-নেইমারদের প্রীতি ম্যাচটির একটি বিশেষ টিকিটের সর্বোচ্চ দাম উঠেছে সৌদি মুদ্রায় ৯৩ লাখ রিয়াল (বাংলাদেশি মুদ্রায় প্রায় ২৫ কোটি ৫৭ লাখ টাকা)।\r\n\r\nএই ম্যাচের মধ্য দিয়েই সৌদি আরবের মাটিতে অভিষেক হবে রোনালদোর। সৌদি ন্যাশনাল প্ল্যাটফর্ম ফর চ্যারিটেবল ওয়ার্ক আয়োজিত ম্যাচটি খেলতে রিয়াদে আসবে মেসি-নেইমার-এমবাপ্পেদের পিএসজি। সৌদি আরবের দুই শীর্ষ ক্লাব আল হিলাল ও আল নাসরের তারকা খেলোয়াড়দের নিয়ে একটি নির্বাচিত একাদশের বিপক্ষে পিএসজি ম্যাচটি খেলবে।\r\n\r\nরোনালদো-নেইমার-মেসি-এমবাপ্পেরা যে ম্যাচে খেলবেন, সেটি দেখতে টিকিটের চাহিদা তুঙ্গে থাকাই স্বাভাবিক। সৌদি আরবের একটি প্রযুক্তিভিত্তিক প্রতিষ্ঠান আজম টেক কোম্পানির স্বত্বাধিকারী মুহাম্মদ আল মুনাজেম এই ম্যাচের বিশেষ টিকিট কিনতে ৯৩ লাখ রিয়াল খরচ করতে রাজি আছেন। তিনি প্রতিশ্রুতি দিয়েছেন, টিকিট কিনতে পারলে তাঁর প্রতিষ্ঠানের তৈরি বিভিন্ন ইলেকট্রনিক পণ্য এতিমদের মধ্যে বিনা মূল্যে বিতরণ করবেন।', 'blog-images/sports-03.jfif', 1, '2023-01-13 08:18:28', '2023-01-13 08:18:36'),
(6, 1, 5, 'মেসি-রোনালদোর ম্যাচ দেখতে ২০ লাখের বেশি আবেদন', '১৯ জানুয়ারি রিয়াদে পিএসজির মুখোমুখি হবে সৌদি আরবের একটি দল। যে দলে খেলবেন আল হিলাল ও আল নাসরের খেলোয়াড়রা। লিওনেল মেসির বিপরীতে খেলবেন ক্রিস্টিয়ানো রোনালদো।', 'নিষেধাজ্ঞায় মাঠে নামা বিলম্বিত হলেও পর্তুগিজ তারকার অভিষেক হচ্ছে ‘বড় ম্যাচ’ দিয়ে। কাতারি মালিকানাধীন পিএসজি আগামী বৃহস্পতিবার কিং ফাহাদ স্টেডিয়ামে একটি প্রদর্শনী ম্যাচ খেলবে। রিয়াদে অবস্থিত স্টেডিয়ামটির দর্শক ধারণক্ষমতা ৬৮ হাজার। \r\n\r\nসংশ্লিষ্ট সূত্র ইএসপিএনকে জানায়, বিক্রি শুরুর কয়েক মিনিটের মধ্যে সব টিকিট বিক্রি হয়ে গেছে। একপর্যায়ে অনলাইনে টিকিট কাটার অপেক্ষায় ছিলেন ২০ লাখের বেশি মানুষ।\r\n\r\nএর আগে টানা ৯ মৌসুম বার্সেলোনা ও রিয়াল মাদ্রিদের জার্সিতে একে অপরের মুখোমুখি হন তাঁরা। খেলেছেন আর্জেন্টিনা ও পর্তুগালের জার্সিতেও। সব মিলিয়ে এখন পর্যন্ত ৩৬ বার প্রতিপক্ষ হিসেবে খেলেছেন মেসি-রোনালদো। যার মধ্যে মেসি জিতেছেন ১৬ বার, রোনালদো ১১ বার। মুখোমুখি দেখায় মেসির গোল ২২টি, রোনালদোর ২১টি।\r\n\r\nঅবশ্য আগামী সপ্তাহের ম্যাচটি প্রতিযোগিতামূলক হিসেবে বিবেচিত হবে না। গোল করলেও পেশাদার ক্যারিয়ারে যোগ হবে না।\r\nআল নাসরের হয়ে রোনালদো তাঁর প্রথম আনুষ্ঠানিক ম্যাচ খেলবেন ২২ জানুয়ারি আল ইতিফাকের বিপক্ষে।', 'blog-images/sports-01.webp', 1, '2023-01-13 08:21:07', '2023-01-13 08:21:16'),
(7, 1, 5, 'ওয়াসিম আকরামের আত্মজীবনীতে যা লিখেছেন শচীন', 'নব্বইয়ের দশকে দুই কিংবদন্তির লড়াই রোমাঞ্চ ছড়াত ক্রিকেটপ্রেমীদের মধ্যে। ব্যাটে–বলে দুজনের টক্কর ছিল দুই সেরা ক্রিকেটারের সামর্থ্যের অনুপম প্রদর্শনী।', 'নব্বইয়ের দশকে দুই কিংবদন্তির লড়াই রোমাঞ্চ ছড়াত ক্রিকেটপ্রেমীদের মধ্যে। ব্যাটে–বলে দুজনের টক্কর ছিল দুই সেরা ক্রিকেটারের সামর্থ্যের অনুপম প্রদর্শনী। শচীন টেন্ডুলকার আর ওয়াসিম আকরামের দ্বৈরথ নব্বইয়ের দশকের ক্রিকেটকে দিয়েছিল অন্য মাত্রা। তবে ক্রিকেট মাঠের দুই ‘শত্রু’ যে মাঠের বাইরে পরম বন্ধু, সেটি সবাই জানেন। একজনের প্রতি অন্যজনের শ্রদ্ধার মাত্রাটা কতটুকু, সেটির প্রমাণ দুজনই বিভিন্ন সময় দিয়েছেন। বন্ধুত্বের আরেকটি দারুণ নিদর্শন রেখে টেন্ডুলকার ওয়াসিম আকরামের প্রকাশিত আত্মজীবনীতে ভূমিকা লিখেছেন।\r\n\r\nআকরামের আত্মজীবনী ‘সুলতান: আ মেমোয়ার’ সম্প্রতি প্রকাশিত হয়েছে। টেন্ডুলকার নিজের লেখা ভূমিকাতে পাকিস্তানি প্রতিপক্ষকে নিজের শ্রদ্ধা ও সম্মান জানিয়েছেন। তিনি লিখেছেন, ব্যতিক্রমী বোলিং অ্যাকশনের কারণে তিনি নিজের সেরাটা দিতে পারতেন। ওয়াসিম আকরাম ক্রিকেট বলটাকে রীতিমতো কথা বলাতে পারতেন।\r\n\r\nওয়াসিম আকরামের মতো বোলারকে খেলা একজন ব্যাটসম্যানের সামর্থ্যও অনেকটাই বাড়াতে সাহায্য করে বলে মত টেন্ডুলকারের, ‘ক্রিকেট দলগত খেলা, খেলাটা একজন ব্যাটসম্যান আর বোলারের লড়াইও। ওয়াসিম আকরাম প্রতিটি ব্যাটসম্যানেরই দুর্দান্ত এক প্রতিদ্বন্দ্বী। তার মতো কারও বিপক্ষে খেললে খেলা ভালো হবে। সেই সঙ্গে এই অভিজ্ঞতাটা চিরদিনের। ওয়াসিম আকরাম একজন মাস্টার , তাঁর হাতে ক্রিকেট বল কথা বলত।’', 'blog-images/sports-03.webp', 1, '2023-01-13 10:37:14', '2023-01-13 10:38:00'),
(8, 1, 5, 'ভুলে যেও না ভারত বাংলাদেশের কাছে হেরেছে', 'গৌতম গম্ভীর সব বিষয় নিয়ে যেন একটু বেশিই সমালোচনাপ্রবণ। না হলে কোহলিকে শতরানের জন্য অভিনন্দন জানাতে গিয়ে বাংলাদেশের সঙ্গে হারের প্রসঙ্গ টেনে আনবেন কেন!', 'গৌতম গম্ভীর সব বিষয় নিয়ে যেন একটু বেশিই সমালোচনাপ্রবণ। না হলে কোহলিকে শতরানের জন্য অভিনন্দন জানাতে গিয়ে বাংলাদেশের সঙ্গে হারের প্রসঙ্গ টেনে আনবেন কেন!\r\nকাল লোকেশ রাহুলের অপরাজিত ৬৪ রানে ইডেন গার্ডেনসে ভারত শ্রীলঙ্কাকে হারিয়ে ওয়ানডে সিরিজ জয় নিশ্চিত করেছে। প্রথম ম্যাচে বিরাট কোহলি পেয়েছেন তাঁর ৭৩তম আন্তর্জাতিক সেঞ্চুরি, ভারত জিতেছে ৬৭ রানে। কোহলির ৭২ ও ৭৩তম সেঞ্চুরি এসেছে টানা দুই ওয়ানডেতে। তবে গম্ভীরের সমালোচনা গত ডিসেম্বরে বাংলাদেশের মাটিতে ভারতের ওয়ানডে সিরিজ হেরে যাওয়া নিয়ে।\r\nবাংলাদেশ সফরের প্রথম দুই ম্যাচে হেরে ধবলধোলাইয়ের দ্বারে পৌঁছে গিয়েছিল কোহলি-রোহিত শর্মাদের ভারত। শেষ ম্যাচে ঈষাণ কিষানের অতিমানবীয় এক ইনিংসের সঙ্গে ওয়ানডেতে কোহলির দীর্ঘ বিরতি দিয়ে পাওয়া শতরানে ভারত সেই লজ্জার হাত থেকে বেঁচেছিল। যদিও সিরিজটা হারতে হয়েছে ২-১ ব্যবধানে।', 'blog-images/sports-04.webp', 1, '2023-01-13 10:41:04', '2023-01-13 10:42:01'),
(9, 6, 5, 'শিশু সঠিক সময়ে কথা না বলা মানেই অটিজম নয়', 'শিশু আধো আধো বুলিতে, ছোট ছোট পায়ে হাঁটতে শুরু করার সময় আমরা আনন্দিত হই।', 'শিশু আধো আধো বুলিতে, ছোট ছোট পায়ে হাঁটতে শুরু করার সময় আমরা আনন্দিত হই। প্রথম কী ডাকল, কী কথা উচ্চারণ করল, তা নিয়ে উত্তেজনার শেষ নেই। কিন্তু শিশুটি যদি স্বাভাবিক সময় কথা না বলে, তা এক বিরাট দুশ্চিন্তার বিষয়। \r\n\r\nশিশু যথাসময়ে কথা না বললে যেসব রোগের নাম মনে পড়ে, তার মধ্যে অন্যতম অটিজম। অটিজম স্পেকট্রাম ডিজঅর্ডার একটি জটিল স্নায়বিক বিকাশজনিত সমস্যা, যা সামাজিক যোগাযোগে অক্ষমতা, ভাব প্রকাশ বা কথা বলার অক্ষমতা এবং পুনরাবৃত্তিমূলক আচরণ দ্বারা শনাক্ত করা হয়। এটি মস্তিষ্কের এমন একটি জটিলতা, যা সাধারণত একজন ব্যক্তির অন্যদের সঙ্গে যোগাযোগ করার ক্ষমতাকে প্রভাবিত করে। এই রোগ শৈশব থেকে বেড়ে ওঠার যেকোনো সময় পর্যন্ত শনাক্ত হতে পারে। কিন্তু শিশু কথা না বলা বা দেরিতে কথা বলা মানেই যে অটিজম, তা কিন্তু নয়।', 'blog-images/lifestyle-04.webp', 1, '2023-01-13 10:54:06', '2023-01-13 11:05:13'),
(10, 6, 5, 'বিশেষ শিশুদের মেধা বিকাশে সমন্বিত শিক্ষা', 'বিশেষ শিশুদের মেধা বিকাশে সমন্বিত শিক্ষার পরিবেশ নিশ্চিতের আহ্বান প্রধানমন্ত্রীর', 'প্রধানমন্ত্রী শেখ হাসিনা বিশেষ চাহিদাসম্পন্ন শিশুদের মেধা-মনন বিকাশে সমন্বিত শিক্ষার পরিবেশ নিশ্চিত করার ওপর গুরুত্বারোপ করে বলেছেন, যেকোনো স্বাভাবিক শিশুর তুলনায় এ ধরনের শিশুর শারীরিক ও মানসিক বিকাশে খোলামেলা ও প্রাকৃতিক পরিবেশ অত্যন্ত গুরুত্বপূর্ণ ভূমিকা পালন করে থাকে।\r\n\r\nআজ বুধবার সকালে গণভবনে প্রধানমন্ত্রী দেশের অটিজম ও এনডিডি (নিউরো ডেভেলপমেন্ট ডিজঅ্যাবিলিটিজ) শিশুদের শিক্ষার ন্যায্য ও সম অধিকার নিশ্চিতকল্পে নির্মিতব্য আন্তর্জাতিক মানের একটি ন্যাশনাল একাডেমি ফর অটিজম অ্যান্ড নিউরো ডেভেলপমেন্ট ডিজঅ্যাবিলিটিজের (এনএএএনডি) স্থাপত্য নকশার উপস্থাপনা অবলোকনকালে এ কথা বলেন। পিএমওর সংবাদ বিজ্ঞপ্তিতে এ তথ্য জানানো হয়েছে।\r\n\r\nপ্রধানমন্ত্রী শহর এলাকায় যেকোনো আবাসিক ভবন নির্মাণের ক্ষেত্রে ‘ক্রস ভেন্টিলেশন’ ব্যবস্থা নিশ্চিতে তাঁর আহ্বান পুনর্ব্যক্ত করেন।', 'blog-images/lifestyle-01.webp', 1, '2023-01-13 10:55:42', '2023-01-13 11:05:10'),
(11, 6, 5, 'বিশেষ শিশুদের মেধা বিকাশে সমন্বিত শিক্ষা', 'বিশেষ শিশুদের মেধা বিকাশে সমন্বিত শিক্ষার পরিবেশ নিশ্চিতের আহ্বান প্রধানমন্ত্রীর', 'প্রধানমন্ত্রী শেখ হাসিনা বিশেষ চাহিদাসম্পন্ন শিশুদের মেধা-মনন বিকাশে সমন্বিত শিক্ষার পরিবেশ নিশ্চিত করার ওপর গুরুত্বারোপ করে বলেছেন, যেকোনো স্বাভাবিক শিশুর তুলনায় এ ধরনের শিশুর শারীরিক ও মানসিক বিকাশে খোলামেলা ও প্রাকৃতিক পরিবেশ অত্যন্ত গুরুত্বপূর্ণ ভূমিকা পালন করে থাকে।\r\n\r\nআজ বুধবার সকালে গণভবনে প্রধানমন্ত্রী দেশের অটিজম ও এনডিডি (নিউরো ডেভেলপমেন্ট ডিজঅ্যাবিলিটিজ) শিশুদের শিক্ষার ন্যায্য ও সম অধিকার নিশ্চিতকল্পে নির্মিতব্য আন্তর্জাতিক মানের একটি ন্যাশনাল একাডেমি ফর অটিজম অ্যান্ড নিউরো ডেভেলপমেন্ট ডিজঅ্যাবিলিটিজের (এনএএএনডি) স্থাপত্য নকশার উপস্থাপনা অবলোকনকালে এ কথা বলেন। পিএমওর সংবাদ বিজ্ঞপ্তিতে এ তথ্য জানানো হয়েছে।\r\n\r\nপ্রধানমন্ত্রী শহর এলাকায় যেকোনো আবাসিক ভবন নির্মাণের ক্ষেত্রে ‘ক্রস ভেন্টিলেশন’ ব্যবস্থা নিশ্চিতে তাঁর আহ্বান পুনর্ব্যক্ত করেন।', 'blog-images/lifestyle-01.webp', 1, '2023-01-13 10:55:42', '2023-01-13 11:05:07'),
(12, 6, 5, 'জাহাঙ্গীরনগর বিশ্ববিদ্যালয়ে জাতীয় গণিত কনফারেন্স শুরু', 'বিজ্ঞান গবেষণায় গণিত’ প্রতিপাদ্য সামনে রেখে জাহাঙ্গীরনগর বিশ্ববিদ্যালয়ে (জাবি) দুই দিনব্যাপী জাতীয় গণিত কনফারেন্স-২০২২ শুরু হয়েছে।', 'উদ্বোধনী বক্তব্যে উপাচার্য বলেন, ‘জাহাঙ্গীরনগরের গণিত বিভাগের শিক্ষার্থীরা রাষ্ট্রের বিভিন্ন গুরুত্বপূর্ণ প্রতিষ্ঠানে কর্মের মাধ্যমে সুনাম কুড়িয়েছেন। এর মাধ্যমে তাঁরা বিশ্ববিদ্যালয়ের মুখ উজ্জ্বল করেছেন। আমি বিশ্বাস করি, একটি কনফারেন্স সব সময় শিক্ষার দ্বার উন্মোচন করে। যে কনফারেন্সের আয়োজন করা হয়েছে, তাতে বিভিন্ন স্বনামধন্য গবেষক গবেষণাকর্ম উপস্থাপন করবেন। এর মাধ্যমে বিশ্ববিদ্যালয়ের শিক্ষক-শিক্ষার্থীরা নতুন কিছু জানতে ও শিখতে পারবেন।’\r\n\r\nগণিত বিকাশের লক্ষ্যেই এ কনফারেন্সের আয়োজন উল্লেখ করে বাংলাদেশ গণিত সমিতির সভাপতি অধ্যাপক শহীদুল ইসলাম বলেন, ‘২০৪১ সালের মধ্যে দারিদ্র্য দূরীকরণ ও উন্নত বাংলাদেশ গড়তে হলে আমাদের বিজ্ঞান ও প্রযুক্তির ওপর গুরুত্বারোপ করতে হবে। এ লক্ষ্যে গণিতের ওপর বিশেষ গুরুত্বারোপের বিকল্প নেই। কারণ, বর্তমানে প্রযুক্তির বিকাশে গণিত মূল ভূমিকা পালন করছে। আবহাওয়ার পূর্বাভাস, প্রকৌশল, ব্যবসায় শিক্ষা ও অর্থনীতি—সব ক্ষেত্র গণিতের সঙ্গে ওতপ্রোতভাবে জড়িত। তাই গণিত বিকাশের লক্ষ্য নিয়েই আমরা কাজ করে চলেছি।’', 'blog-images/lifestyle-02.webp', 1, '2023-01-13 11:04:56', '2023-01-13 11:05:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sports', 'Well Sports', 1, '2023-01-11 06:45:26', '2023-01-11 06:45:26'),
(2, 'Electronics', 'Well Electronics', 1, '2023-01-11 07:20:20', '2023-01-11 07:20:20'),
(4, 'Education', 'Excellent Education', 1, '2023-01-11 07:27:41', '2023-01-11 07:37:05'),
(6, 'Lifestyle', 'Good Lifestyle', 1, '2023-01-13 10:51:10', '2023-01-13 10:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2023_01_11_062900_create_sessions_table', 2),
(7, '2023_01_11_122303_create_categories_table', 3),
(8, '2023_01_11_122457_create_products_table', 3),
(9, '2023_01_11_161600_create_blogs_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(11,2) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
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
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DD8NhlF5eYogB5ggVQxPBYxrSV6TiwsHbImXtAgU', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzd5bXZPMmNsVmR5ZmVmUHNtWWVZTUpQQlRubzF6RVRsaVFJbElvQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3cHJvamVjdC9wdWJsaWMvYmxvZy1jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673626024),
('dNjR8F7XJPvUDjvsQP60xfWp0vNYaheGpzcKwPUM', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTnNpblU0bzNiT0o2RVY5MURzaTFpU3I4WGRYbFNOZTlhM3dLVjV5VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3cHJvamVjdC9wdWJsaWMvYmxvZy1jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673627411),
('FMjcMKMaYzUobWKx2r9NC1CMitIVwmd9XPfVRQUN', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiem0yQ2ZPYk9lZXEyUTc3dFc0c29qcENscXloZjUwSXlRNERia2xZayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3cHJvamVjdC9wdWJsaWMvbWFuYWdlLXVzZXIiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEpwak1ralhteFhEYkVPRDNRV2QzbXVKVm9rY2tjS3ZIRW9oNkxFTmRqZEd6ZUw1NEZuU1FTIjt9', 1673630490),
('ItYV8LFer682eqmkgBoUbVTwL84FMgzGXoEfczsw', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFNIejdxSGVYZXFCdGpaY245U0hKZzJ3bVVtTGhwbmRsOWZ6d0xxYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3cHJvamVjdC9wdWJsaWMvYmxvZy1kZXRhaWwvNCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1673624548),
('X7bbAPlKOCxlvL9ir1bBz37h3wXgdaP6rlOCvnp0', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDBEbEh4WmtDaDlTWEx5RVQwWEFQd1VONnNkS2psYnJBdUtJblp2diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTA6Imh0dHA6Ly9sb2NhbGhvc3QvbmV3cHJvamVjdC9wdWJsaWMvYmxvZy1jYXRlZ29yeS8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1673626120);

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Habibur Rahman', 'habibrahman@gmail.com', NULL, '$2y$10$jKM85niquai50QgaitGDiu0INFqQ0dIxU0XNmamowfkL4Kn.UzqbC', NULL, NULL, NULL, NULL, '2023-01-12 11:22:59', '2023-01-12 11:22:59'),
(6, 'Sumon Khan', 'sumonkhan60@yahoo.com', NULL, '$2y$10$JpjMkjXmxXDbEOD3QWd3muJVokckcKvHEoh6LENdjdGzeL54FnSQS', NULL, NULL, NULL, NULL, '2023-01-13 11:21:22', '2023-01-13 11:21:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
