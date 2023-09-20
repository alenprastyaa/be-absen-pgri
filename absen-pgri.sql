-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2023 at 05:45 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen-pgri`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `jenis_absen` varchar(255) NOT NULL,
  `tanggal_absen` date NOT NULL DEFAULT '2023-09-18',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `kode_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `uuid`, `kode_kelas`, `nama_kelas`, `createdAt`, `updatedAt`) VALUES
(1, '257066e2-3962-4c87-b207-745a327ead05', 1, '10 DKV 1', '2023-09-18 11:56:37', '2023-09-18 11:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('0ligyuJpPSICdT_dzqMOlu7GDcnhVhRX', '2023-09-19 15:12:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"c63d377e-351f-4551-a610-9f82a4b62021\"}', '2023-09-18 15:12:02', '2023-09-18 15:12:02'),
('0p9qhZZzukrW1ru8h-frw-ovbAw_bYid', '2023-09-19 14:48:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:48:38', '2023-09-18 14:48:38'),
('0vhaODZQ4MVPCTguv8xh150PzIflaKtD', '2023-09-19 14:44:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:44:26', '2023-09-18 14:44:26'),
('1N2ukgZl1vlOIAOGoXzcZMk6hzk_bHOG', '2023-09-19 15:12:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:12:02', '2023-09-18 15:12:02'),
('2AfyQuCpbqK85mj1cX-DZf8394USbHUf', '2023-09-19 14:44:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:44:28', '2023-09-18 14:44:28'),
('4pTsC8Aq56WwR-hgiG6wAIQGeH_nR9l4', '2023-09-19 15:37:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:37:01', '2023-09-18 15:37:01'),
('5cJlWMdSB7q2edgLPBp1ExQ--IkqSYT9', '2023-09-19 15:00:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:00:52', '2023-09-18 15:00:52'),
('6fR_au3StQzgQVsRMFngKWqFi3Vduqsz', '2023-09-19 15:36:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:36:19', '2023-09-18 15:36:19'),
('6KaqZnM6vvBxWOsiJ1mw6HjMNotAZeeU', '2023-09-19 14:48:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:48:03', '2023-09-18 14:48:03'),
('6LV-Nv8u-lBPyvOOJQL1O79_9kJEDU0y', '2023-09-19 15:03:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:03:30', '2023-09-18 15:03:30'),
('6YUd1Md14n0KpKlJrauuuHp87icaZUHD', '2023-09-19 15:05:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:05:18', '2023-09-18 15:05:18'),
('70xsM2UQ1GCqm-kPa1s0iHqQxDS-jXiC', '2023-09-19 15:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:15:14', '2023-09-18 15:15:14'),
('7I6eWsz1s2fLivXV8QXzcQWuCedzBJen', '2023-09-19 14:45:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:45:18', '2023-09-18 14:45:18'),
('8wSevLWn_8YhR7Y2iLYGR_BZd7P9VoXi', '2023-09-19 15:35:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:35:36', '2023-09-18 15:35:36'),
('A1EibFaS_p_DHZgl9iuZv9Lvkecg2T6j', '2023-09-19 15:14:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:36', '2023-09-18 15:14:36'),
('A9URE7rse91BG8tNdZ9XKcuR5drO6h5m', '2023-09-19 14:44:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:44:42', '2023-09-18 14:44:42'),
('bezGwgkiPLsx2xP7kpgxTnIOdBEJckuV', '2023-09-19 15:11:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:11:09', '2023-09-18 15:11:09'),
('bxN78RUct-UsZDnZUJgtTXkfr9hwWXPF', '2023-09-19 15:35:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:35:43', '2023-09-18 15:35:43'),
('DQHG-o1u4bxWnR2bOHpjj7PK52JuMxVz', '2023-09-19 15:19:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:19:12', '2023-09-18 15:19:12'),
('dsseSaM3CGXfPY53mrEAlS5ZOhHEc_p3', '2023-09-19 14:46:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:46:54', '2023-09-18 14:46:54'),
('dTkhAMzEhSv-ztfwTtaObFUPUSAUK7eE', '2023-09-19 15:25:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:25:31', '2023-09-18 15:25:31'),
('epS-g-7ztj6WawvYJkv7619bE5BYymG8', '2023-09-19 14:48:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:48:38', '2023-09-18 14:48:38'),
('exU2LNZ61T8x5KxDmDtU3UZGYg9rclty', '2023-09-19 14:46:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:46:54', '2023-09-18 14:46:54'),
('FKacqRFM7MoK2g-ydKXuEJCrtRSqGa0p', '2023-09-19 15:05:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"b0fff4a6-3f10-4aa9-8e05-46931d00f6ef\"}', '2023-09-18 15:05:18', '2023-09-18 15:05:18'),
('Fr4MBXWcsDzANSqIJY2Gjw0d0ZVqEoht', '2023-09-19 14:45:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:45:18', '2023-09-18 14:45:18'),
('FyinLYjw-diaGAh_M7l1nZhAjpEzf-hz', '2023-09-19 15:12:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:12:02', '2023-09-18 15:12:02'),
('ih8kuRcxJHppcZoIA4NVQeogRDxpXJqy', '2023-09-19 15:14:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:53', '2023-09-18 15:14:53'),
('Is-TKNRDbY6o_QgEaWHSCwdxWVtH8zmC', '2023-09-19 14:44:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:44:26', '2023-09-18 14:44:26'),
('IwUEnP9EuGLtnsOeCRFWMsyMXEuJrPu1', '2023-09-19 15:01:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:01:54', '2023-09-18 15:01:54'),
('jdb1T5XOBYCD0raX7NIX9UBcOaQwKMPE', '2023-09-19 15:37:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:37:20', '2023-09-18 15:37:20'),
('JiawRmsLOCh6_bMkFen8ehL4KTWvPnzi', '2023-09-19 15:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:15:14', '2023-09-18 15:15:14'),
('jKDcl2GAx3ZAN0CmL7W-EYdyuuiqVZ16', '2023-09-19 15:01:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:01:54', '2023-09-18 15:01:54'),
('JQW0rDVtK2wbfMeVOd8Y19hG8L4hcEPI', '2023-09-19 15:36:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:36:59', '2023-09-18 15:36:59'),
('kwgDV_Tbg2guIHBLFDZUBpgGhU7b_9NS', '2023-09-19 15:36:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:36:31', '2023-09-18 15:36:31'),
('LKY_Wh9Sp2UCPRZ2EXDGJPjyiuwBzM2z', '2023-09-19 15:19:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:19:12', '2023-09-18 15:19:12'),
('LsF7-UaDwvIvW86e6HB6SZ7LHvUoL788', '2023-09-19 15:26:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:26:49', '2023-09-18 15:26:49'),
('M3X8JSSpRIKwKn9z3oGGgSG6xl96GfF0', '2023-09-19 14:48:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:48:03', '2023-09-18 14:48:03'),
('M4Ye2ggpRRM7luly49_WveF1uqIc4WP0', '2023-09-19 15:13:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:13:58', '2023-09-18 15:13:58'),
('mlohbWNEcy4oYquBIcAYoqe7w1amyLaw', '2023-09-19 14:44:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:44:28', '2023-09-18 14:44:28'),
('NxhZPJSTfDNfcqSquVQo8JmCTtmtlvWI', '2023-09-19 15:04:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:04:36', '2023-09-18 15:04:36'),
('o-b-PCe73C63LXR_5i7oVeVkJQ11z96V', '2023-09-19 15:14:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:35', '2023-09-18 15:14:35'),
('oCLgOfxvAJwwAsAPH4TUpe48MqDbUEYo', '2023-09-19 14:48:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"c63d377e-351f-4551-a610-9f82a4b62021\"}', '2023-09-18 14:48:47', '2023-09-18 14:48:47'),
('ogB3TVBlPQlN_wtz3-K6Jd2szBDczwjM', '2023-09-19 15:04:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:04:47', '2023-09-18 15:04:47'),
('oGnn-3LCFDpU9naGRamrNDr7EB-wr_aS', '2023-09-19 14:44:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"c63d377e-351f-4551-a610-9f82a4b62021\"}', '2023-09-18 14:44:42', '2023-09-18 14:44:42'),
('pDjlLkXWKfrg6MEkVJKgyyipkI11QjPv', '2023-09-19 15:25:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:25:37', '2023-09-18 15:25:37'),
('pf53WuO0dwKxX4q4QwX_sok1ABDCcrGM', '2023-09-19 14:48:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 14:48:47', '2023-09-18 14:48:47'),
('PnZ47_f57k36esNUrs7uyBljwOo4iRTv', '2023-09-19 15:14:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:49', '2023-09-18 15:14:49'),
('Q9x1aLaGPew0lCsnlcr-oQC3433uHL2M', '2023-09-19 15:05:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:05:18', '2023-09-18 15:05:18'),
('QnYwyCNuvUDIQuycuIi6149iIRI1pcj8', '2023-09-19 15:04:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:04:47', '2023-09-18 15:04:47'),
('qxwNuK7OEx4UGVN4ODsQ-Vc-qb3oDS71', '2023-09-19 15:14:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:35', '2023-09-18 15:14:35'),
('Ra20Sm3w0I6DZQhpqQw-Mb68RrY_KOnB', '2023-09-19 15:11:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:11:09', '2023-09-18 15:11:09'),
('rgsSeoMDyIxxxvxTnq24B05aRuAAezWq', '2023-09-19 15:13:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:13:58', '2023-09-18 15:13:58'),
('rj8R3FmFGteB5KF7bWKvt4Ywmet49siv', '2023-09-19 15:01:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:01:32', '2023-09-18 15:01:32'),
('RJSbETq4umUzR8y_nz-sC014Y9bIMXK9', '2023-09-19 15:02:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:02:36', '2023-09-18 15:02:36'),
('rQiUTP3BXG1_PsafnauBi9tsGPWWRsFi', '2023-09-19 15:15:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:15:08', '2023-09-18 15:15:08'),
('sUO0WYpOIDfuabKQXeKvlh8ksPdbA4j2', '2023-09-19 15:02:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:02:36', '2023-09-18 15:02:36'),
('T2Zggp-sWPCJwWIwdxVsibAEoUTXXL8v', '2023-09-19 15:04:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:04:26', '2023-09-18 15:04:26'),
('T9Y6klXD6PKwk7jbmlK2Q9hVtDb_t-Y1', '2023-09-19 15:03:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:03:30', '2023-09-18 15:03:30'),
('TkMRut0uQI-_j9TZuwZl_w1N51KGkp6B', '2023-09-19 15:12:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:12:02', '2023-09-18 15:12:02'),
('TP7JFEoTlhMbvyWP58cPDRlUf7ZZMR1z', '2023-09-19 15:37:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:37:10', '2023-09-18 15:37:10'),
('uF8Pkc2ahukS3nrEMm477our1nfdoQ75', '2023-09-19 15:14:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:36', '2023-09-18 15:14:36'),
('uQW0DcpViZDDUiQs-vgvIB4lps_ytc_v', '2023-09-19 15:14:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:44', '2023-09-18 15:14:44'),
('WkZ4OBCkTWUKmULl4id3vZw05o0SuWoG', '2023-09-19 15:13:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:13:58', '2023-09-18 15:13:58'),
('woQZH0Mq4XPo6n6ZTCI06_8_SyLIw_g1', '2023-09-19 15:35:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:35:52', '2023-09-18 15:35:52'),
('X7uT1q_ejHwEyH9IkZs4RRvghQK28QwY', '2023-09-19 15:36:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:36:51', '2023-09-18 15:36:51'),
('xaSmvoVU0nKpPvbgZKYHncWNLKeHJFpj', '2023-09-19 15:04:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:04:05', '2023-09-18 15:04:05'),
('XL7fupaK5-ERmcF48a4WRwXfZKzQE_Zz', '2023-09-19 15:00:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:00:52', '2023-09-18 15:00:52'),
('y1kNxWwCdihf0fyoYH2XXVEnbjVVxOzm', '2023-09-19 15:13:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:13:58', '2023-09-18 15:13:58'),
('Y3oYkE0uarJ9X2h55wxjdx4gV8h7ZVR5', '2023-09-19 15:14:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:14:53', '2023-09-18 15:14:53'),
('YeEcO9zIiMfF5F0LcwErs211kSdFZhCC', '2023-09-19 15:19:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"c63d377e-351f-4551-a610-9f82a4b62021\"}', '2023-09-18 15:19:16', '2023-09-18 15:19:16'),
('Z4GkgPpK6d-0IgBk-o_xNXiUmLQkoenh', '2023-09-19 15:26:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:26:43', '2023-09-18 15:26:43'),
('ZRehV9BxYsIf9wZzQmyjXZXSEQg_tKc5', '2023-09-19 15:05:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-09-18 15:05:18', '2023-09-18 15:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `kode_kelas` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `uuid`, `nama_siswa`, `userId`, `kode_kelas`, `createdAt`, `updatedAt`) VALUES
(2, '84398a5c-db2b-4c83-b4b0-3875a476980e', 'Randi Robun', 1, 1, '2023-09-18 12:05:44', '2023-09-18 12:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'c63d377e-351f-4551-a610-9f82a4b62021', 'Alen Prastya', 'alen@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$qXgqSNyoesU+1B/o73MlfQ$YnATkHDcgbb3XN61KNwNU83KClV9m/NbnYFtO7ihIo4', 'admin', '2023-09-18 11:44:27', '2023-09-18 11:44:27'),
(2, 'b0fff4a6-3f10-4aa9-8e05-46931d00f6ef', 'Rosyid Mahfuz', 'mahfuz@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$//GnIY6XbsZVzgLYoEIghA$El1R5THabSHnD86+gOIKhmif5me1YTLJvlPHi0J7qXI', 'user', '2023-09-18 14:53:49', '2023-09-18 14:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `walas`
--

CREATE TABLE `walas` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama_walas` varchar(255) NOT NULL,
  `kode_kelas` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walas`
--
ALTER TABLE `walas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `walas`
--
ALTER TABLE `walas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`);

--
-- Constraints for table `walas`
--
ALTER TABLE `walas`
  ADD CONSTRAINT `walas_ibfk_1` FOREIGN KEY (`kode_kelas`) REFERENCES `kelas` (`kode_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
