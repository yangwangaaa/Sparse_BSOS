%% This file generates the Broyden Banded function in 11 variables 
 sf =10^-5; 
 scale = false; 
 
%% generate polynomial F  nvar = 1.1e1;
  F = sparse(309,11);
  F(1,1) = 6.0;
  F(2,1) = 4.0;
  F(3,1) = 3.0;
  F(3,2) = 2.0;
  F(4,1) = 3.0;
  F(4,2) = 1.0;
  F(5,1) = 3.0;
  F(6,1) = 2.0;
  F(6,2) = 3.0;
  F(7,1) = 2.0;
  F(7,2) = 2.0;
  F(8,1) = 2.0;
  F(8,2) = 1.0;
  F(9,1) = 2.0;
  F(9,3) = 3.0;
  F(10,1) = 2.0;
  F(10,3) = 2.0;
  F(11,1) = 2.0;
  F(11,3) = 1.0;
  F(12,1) = 2.0;
  F(12,4) = 3.0;
  F(13,1) = 2.0;
  F(13,4) = 2.0;
  F(14,1) = 2.0;
  F(14,4) = 1.0;
  F(15,1) = 2.0;
  F(15,5) = 3.0;
  F(16,1) = 2.0;
  F(16,5) = 2.0;
  F(17,1) = 2.0;
  F(17,6) = 3.0;
  F(18,1) = 2.0;
  F(18,6) = 2.0;
  F(19,1) = 2.0;
  F(19,6) = 1.0;
  F(20,1) = 2.0;
  F(20,7) = 2.0;
  F(21,1) = 2.0;
  F(21,7) = 1.0;
  F(22,1) = 2.0;
  F(23,1) = 1.0;
  F(23,2) = 3.0;
  F(24,1) = 1.0;
  F(24,2) = 2.0;
  F(25,1) = 1.0;
  F(25,3) = 3.0;
  F(26,1) = 1.0;
  F(26,3) = 2.0;
  F(27,1) = 1.0;
  F(27,3) = 1.0;
  F(28,1) = 1.0;
  F(28,4) = 3.0;
  F(29,1) = 1.0;
  F(29,4) = 2.0;
  F(30,1) = 1.0;
  F(30,4) = 1.0;
  F(31,1) = 1.0;
  F(31,5) = 3.0;
  F(32,1) = 1.0;
  F(32,5) = 2.0;
  F(33,1) = 1.0;
  F(33,6) = 3.0;
  F(34,1) = 1.0;
  F(34,6) = 2.0;
  F(35,1) = 1.0;
  F(35,6) = 1.0;
  F(36,1) = 1.0;
  F(36,7) = 2.0;
  F(37,1) = 1.0;
  F(37,7) = 1.0;
  F(38,1) = 1.0;
  F(39,2) = 6.0;
  F(40,2) = 4.0;
  F(41,2) = 3.0;
  F(41,3) = 2.0;
  F(42,2) = 3.0;
  F(42,3) = 1.0;
  F(43,2) = 3.0;
  F(44,2) = 2.0;
  F(44,3) = 3.0;
  F(45,2) = 2.0;
  F(45,3) = 2.0;
  F(46,2) = 2.0;
  F(46,3) = 1.0;
  F(47,2) = 2.0;
  F(47,4) = 3.0;
  F(48,2) = 2.0;
  F(48,4) = 2.0;
  F(49,2) = 2.0;
  F(49,4) = 1.0;
  F(50,2) = 2.0;
  F(50,5) = 3.0;
  F(51,2) = 2.0;
  F(51,5) = 2.0;
  F(52,2) = 2.0;
  F(52,5) = 1.0;
  F(53,2) = 2.0;
  F(53,6) = 3.0;
  F(54,2) = 2.0;
  F(54,6) = 2.0;
  F(55,2) = 2.0;
  F(55,7) = 3.0;
  F(56,2) = 2.0;
  F(56,7) = 2.0;
  F(57,2) = 2.0;
  F(57,7) = 1.0;
  F(58,2) = 2.0;
  F(58,8) = 2.0;
  F(59,2) = 2.0;
  F(59,8) = 1.0;
  F(60,2) = 2.0;
  F(61,2) = 1.0;
  F(61,3) = 3.0;
  F(62,2) = 1.0;
  F(62,3) = 2.0;
  F(63,2) = 1.0;
  F(63,4) = 3.0;
  F(64,2) = 1.0;
  F(64,4) = 2.0;
  F(65,2) = 1.0;
  F(65,4) = 1.0;
  F(66,2) = 1.0;
  F(66,5) = 3.0;
  F(67,2) = 1.0;
  F(67,5) = 2.0;
  F(68,2) = 1.0;
  F(68,5) = 1.0;
  F(69,2) = 1.0;
  F(69,6) = 3.0;
  F(70,2) = 1.0;
  F(70,6) = 2.0;
  F(71,2) = 1.0;
  F(71,7) = 3.0;
  F(72,2) = 1.0;
  F(72,7) = 2.0;
  F(73,2) = 1.0;
  F(73,7) = 1.0;
  F(74,2) = 1.0;
  F(74,8) = 2.0;
  F(75,2) = 1.0;
  F(75,8) = 1.0;
  F(76,2) = 1.0;
  F(77,3) = 6.0;
  F(78,3) = 4.0;
  F(79,3) = 3.0;
  F(79,4) = 2.0;
  F(80,3) = 3.0;
  F(80,4) = 1.0;
  F(81,3) = 3.0;
  F(82,3) = 2.0;
  F(82,4) = 3.0;
  F(83,3) = 2.0;
  F(83,4) = 2.0;
  F(84,3) = 2.0;
  F(84,4) = 1.0;
  F(85,3) = 2.0;
  F(85,5) = 3.0;
  F(86,3) = 2.0;
  F(86,5) = 2.0;
  F(87,3) = 2.0;
  F(87,5) = 1.0;
  F(88,3) = 2.0;
  F(88,6) = 3.0;
  F(89,3) = 2.0;
  F(89,6) = 2.0;
  F(90,3) = 2.0;
  F(90,6) = 1.0;
  F(91,3) = 2.0;
  F(91,7) = 3.0;
  F(92,3) = 2.0;
  F(92,7) = 2.0;
  F(93,3) = 2.0;
  F(93,8) = 3.0;
  F(94,3) = 2.0;
  F(94,8) = 2.0;
  F(95,3) = 2.0;
  F(95,8) = 1.0;
  F(96,3) = 2.0;
  F(96,9) = 2.0;
  F(97,3) = 2.0;
  F(97,9) = 1.0;
  F(98,3) = 2.0;
  F(99,3) = 1.0;
  F(99,4) = 3.0;
  F(100,3) = 1.0;
  F(100,4) = 2.0;
  F(101,3) = 1.0;
  F(101,5) = 3.0;
  F(102,3) = 1.0;
  F(102,5) = 2.0;
  F(103,3) = 1.0;
  F(103,5) = 1.0;
  F(104,3) = 1.0;
  F(104,6) = 3.0;
  F(105,3) = 1.0;
  F(105,6) = 2.0;
  F(106,3) = 1.0;
  F(106,6) = 1.0;
  F(107,3) = 1.0;
  F(107,7) = 3.0;
  F(108,3) = 1.0;
  F(108,7) = 2.0;
  F(109,3) = 1.0;
  F(109,8) = 3.0;
  F(110,3) = 1.0;
  F(110,8) = 2.0;
  F(111,3) = 1.0;
  F(111,8) = 1.0;
  F(112,3) = 1.0;
  F(112,9) = 2.0;
  F(113,3) = 1.0;
  F(113,9) = 1.0;
  F(114,3) = 1.0;
  F(115,4) = 6.0;
  F(116,4) = 4.0;
  F(117,4) = 3.0;
  F(117,5) = 2.0;
  F(118,4) = 3.0;
  F(118,5) = 1.0;
  F(119,4) = 3.0;
  F(120,4) = 2.0;
  F(120,5) = 3.0;
  F(121,4) = 2.0;
  F(121,5) = 2.0;
  F(122,4) = 2.0;
  F(122,5) = 1.0;
  F(123,4) = 2.0;
  F(123,6) = 3.0;
  F(124,4) = 2.0;
  F(124,6) = 2.0;
  F(125,4) = 2.0;
  F(125,6) = 1.0;
  F(126,4) = 2.0;
  F(126,7) = 3.0;
  F(127,4) = 2.0;
  F(127,7) = 2.0;
  F(128,4) = 2.0;
  F(128,7) = 1.0;
  F(129,4) = 2.0;
  F(129,8) = 3.0;
  F(130,4) = 2.0;
  F(130,8) = 2.0;
  F(131,4) = 2.0;
  F(131,9) = 3.0;
  F(132,4) = 2.0;
  F(132,9) = 2.0;
  F(133,4) = 2.0;
  F(133,9) = 1.0;
  F(134,4) = 2.0;
  F(134,10) = 2.0;
  F(135,4) = 2.0;
  F(135,10) = 1.0;
  F(136,4) = 2.0;
  F(137,4) = 1.0;
  F(137,5) = 3.0;
  F(138,4) = 1.0;
  F(138,5) = 2.0;
  F(139,4) = 1.0;
  F(139,6) = 3.0;
  F(140,4) = 1.0;
  F(140,6) = 2.0;
  F(141,4) = 1.0;
  F(141,6) = 1.0;
  F(142,4) = 1.0;
  F(142,7) = 3.0;
  F(143,4) = 1.0;
  F(143,7) = 2.0;
  F(144,4) = 1.0;
  F(144,7) = 1.0;
  F(145,4) = 1.0;
  F(145,8) = 3.0;
  F(146,4) = 1.0;
  F(146,8) = 2.0;
  F(147,4) = 1.0;
  F(147,9) = 3.0;
  F(148,4) = 1.0;
  F(148,9) = 2.0;
  F(149,4) = 1.0;
  F(149,9) = 1.0;
  F(150,4) = 1.0;
  F(150,10) = 2.0;
  F(151,4) = 1.0;
  F(151,10) = 1.0;
  F(152,4) = 1.0;
  F(153,5) = 6.0;
  F(154,5) = 4.0;
  F(155,5) = 3.0;
  F(155,6) = 2.0;
  F(156,5) = 3.0;
  F(156,6) = 1.0;
  F(157,5) = 3.0;
  F(158,5) = 2.0;
  F(158,6) = 3.0;
  F(159,5) = 2.0;
  F(159,6) = 2.0;
  F(160,5) = 2.0;
  F(160,6) = 1.0;
  F(161,5) = 2.0;
  F(161,7) = 3.0;
  F(162,5) = 2.0;
  F(162,7) = 2.0;
  F(163,5) = 2.0;
  F(163,7) = 1.0;
  F(164,5) = 2.0;
  F(164,8) = 3.0;
  F(165,5) = 2.0;
  F(165,8) = 2.0;
  F(166,5) = 2.0;
  F(166,8) = 1.0;
  F(167,5) = 2.0;
  F(167,9) = 3.0;
  F(168,5) = 2.0;
  F(168,9) = 2.0;
  F(169,5) = 2.0;
  F(169,10) = 3.0;
  F(170,5) = 2.0;
  F(170,10) = 2.0;
  F(171,5) = 2.0;
  F(171,10) = 1.0;
  F(172,5) = 2.0;
  F(172,11) = 2.0;
  F(173,5) = 2.0;
  F(173,11) = 1.0;
  F(174,5) = 2.0;
  F(175,5) = 1.0;
  F(175,6) = 3.0;
  F(176,5) = 1.0;
  F(176,6) = 2.0;
  F(177,5) = 1.0;
  F(177,7) = 3.0;
  F(178,5) = 1.0;
  F(178,7) = 2.0;
  F(179,5) = 1.0;
  F(179,7) = 1.0;
  F(180,5) = 1.0;
  F(180,8) = 3.0;
  F(181,5) = 1.0;
  F(181,8) = 2.0;
  F(182,5) = 1.0;
  F(182,8) = 1.0;
  F(183,5) = 1.0;
  F(183,9) = 3.0;
  F(184,5) = 1.0;
  F(184,9) = 2.0;
  F(185,5) = 1.0;
  F(185,10) = 3.0;
  F(186,5) = 1.0;
  F(186,10) = 2.0;
  F(187,5) = 1.0;
  F(187,10) = 1.0;
  F(188,5) = 1.0;
  F(188,11) = 2.0;
  F(189,5) = 1.0;
  F(189,11) = 1.0;
  F(190,5) = 1.0;
  F(191,6) = 6.0;
  F(192,6) = 4.0;
  F(193,6) = 3.0;
  F(193,7) = 2.0;
  F(194,6) = 3.0;
  F(194,7) = 1.0;
  F(195,6) = 3.0;
  F(196,6) = 2.0;
  F(196,7) = 3.0;
  F(197,6) = 2.0;
  F(197,7) = 2.0;
  F(198,6) = 2.0;
  F(198,7) = 1.0;
  F(199,6) = 2.0;
  F(199,8) = 3.0;
  F(200,6) = 2.0;
  F(200,8) = 2.0;
  F(201,6) = 2.0;
  F(201,8) = 1.0;
  F(202,6) = 2.0;
  F(202,9) = 3.0;
  F(203,6) = 2.0;
  F(203,9) = 2.0;
  F(204,6) = 2.0;
  F(204,9) = 1.0;
  F(205,6) = 2.0;
  F(205,10) = 3.0;
  F(206,6) = 2.0;
  F(206,10) = 2.0;
  F(207,6) = 2.0;
  F(207,11) = 3.0;
  F(208,6) = 2.0;
  F(208,11) = 2.0;
  F(209,6) = 2.0;
  F(209,11) = 1.0;
  F(210,6) = 2.0;
  F(211,6) = 1.0;
  F(211,7) = 3.0;
  F(212,6) = 1.0;
  F(212,7) = 2.0;
  F(213,6) = 1.0;
  F(213,8) = 3.0;
  F(214,6) = 1.0;
  F(214,8) = 2.0;
  F(215,6) = 1.0;
  F(215,8) = 1.0;
  F(216,6) = 1.0;
  F(216,9) = 3.0;
  F(217,6) = 1.0;
  F(217,9) = 2.0;
  F(218,6) = 1.0;
  F(218,9) = 1.0;
  F(219,6) = 1.0;
  F(219,10) = 3.0;
  F(220,6) = 1.0;
  F(220,10) = 2.0;
  F(221,6) = 1.0;
  F(221,11) = 3.0;
  F(222,6) = 1.0;
  F(222,11) = 2.0;
  F(223,6) = 1.0;
  F(223,11) = 1.0;
  F(224,6) = 1.0;
  F(225,7) = 6.0;
  F(226,7) = 4.0;
  F(227,7) = 3.0;
  F(227,8) = 2.0;
  F(228,7) = 3.0;
  F(228,8) = 1.0;
  F(229,7) = 3.0;
  F(230,7) = 2.0;
  F(230,8) = 3.0;
  F(231,7) = 2.0;
  F(231,8) = 2.0;
  F(232,7) = 2.0;
  F(232,8) = 1.0;
  F(233,7) = 2.0;
  F(233,9) = 3.0;
  F(234,7) = 2.0;
  F(234,9) = 2.0;
  F(235,7) = 2.0;
  F(235,9) = 1.0;
  F(236,7) = 2.0;
  F(236,10) = 3.0;
  F(237,7) = 2.0;
  F(237,10) = 2.0;
  F(238,7) = 2.0;
  F(238,11) = 3.0;
  F(239,7) = 2.0;
  F(239,11) = 2.0;
  F(240,7) = 2.0;
  F(240,11) = 1.0;
  F(241,7) = 2.0;
  F(242,7) = 1.0;
  F(242,8) = 3.0;
  F(243,7) = 1.0;
  F(243,8) = 2.0;
  F(244,7) = 1.0;
  F(244,8) = 1.0;
  F(245,7) = 1.0;
  F(245,9) = 3.0;
  F(246,7) = 1.0;
  F(246,9) = 2.0;
  F(247,7) = 1.0;
  F(247,9) = 1.0;
  F(248,7) = 1.0;
  F(248,10) = 3.0;
  F(249,7) = 1.0;
  F(249,10) = 2.0;
  F(250,7) = 1.0;
  F(250,11) = 3.0;
  F(251,7) = 1.0;
  F(251,11) = 2.0;
  F(252,7) = 1.0;
  F(252,11) = 1.0;
  F(253,7) = 1.0;
  F(254,8) = 6.0;
  F(255,8) = 4.0;
  F(256,8) = 3.0;
  F(256,9) = 2.0;
  F(257,8) = 3.0;
  F(257,9) = 1.0;
  F(258,8) = 3.0;
  F(259,8) = 2.0;
  F(259,9) = 3.0;
  F(260,8) = 2.0;
  F(260,9) = 2.0;
  F(261,8) = 2.0;
  F(261,10) = 3.0;
  F(262,8) = 2.0;
  F(262,10) = 2.0;
  F(263,8) = 2.0;
  F(263,11) = 3.0;
  F(264,8) = 2.0;
  F(264,11) = 2.0;
  F(265,8) = 2.0;
  F(265,11) = 1.0;
  F(266,8) = 1.0;
  F(266,9) = 3.0;
  F(267,8) = 1.0;
  F(267,9) = 1.0;
  F(268,8) = 1.0;
  F(268,10) = 3.0;
  F(269,8) = 1.0;
  F(269,10) = 2.0;
  F(270,8) = 1.0;
  F(270,11) = 3.0;
  F(271,8) = 1.0;
  F(271,11) = 2.0;
  F(272,8) = 1.0;
  F(272,11) = 1.0;
  F(273,8) = 1.0;
  F(274,9) = 6.0;
  F(275,9) = 4.0;
  F(276,9) = 3.0;
  F(276,10) = 2.0;
  F(277,9) = 3.0;
  F(277,10) = 1.0;
  F(278,9) = 3.0;
  F(279,9) = 2.0;
  F(279,10) = 3.0;
  F(280,9) = 2.0;
  F(280,10) = 2.0;
  F(281,9) = 2.0;
  F(281,10) = 1.0;
  F(282,9) = 2.0;
  F(282,11) = 3.0;
  F(283,9) = 2.0;
  F(283,11) = 2.0;
  F(284,9) = 2.0;
  F(284,11) = 1.0;
  F(285,9) = 2.0;
  F(286,9) = 1.0;
  F(286,10) = 3.0;
  F(287,9) = 1.0;
  F(287,10) = 2.0;
  F(288,9) = 1.0;
  F(288,10) = 1.0;
  F(289,9) = 1.0;
  F(289,11) = 3.0;
  F(290,9) = 1.0;
  F(290,11) = 2.0;
  F(291,9) = 1.0;
  F(291,11) = 1.0;
  F(292,9) = 1.0;
  F(293,10) = 6.0;
  F(294,10) = 4.0;
  F(295,10) = 3.0;
  F(295,11) = 2.0;
  F(296,10) = 3.0;
  F(296,11) = 1.0;
  F(297,10) = 3.0;
  F(298,10) = 2.0;
  F(298,11) = 3.0;
  F(299,10) = 2.0;
  F(299,11) = 1.0;
  F(300,10) = 2.0;
  F(301,10) = 1.0;
  F(301,11) = 3.0;
  F(302,10) = 1.0;
  F(302,11) = 2.0;
  F(303,10) = 1.0;
  F(303,11) = 1.0;
  F(304,11) = 6.0;
  F(305,11) = 4.0;
  F(306,11) = 3.0;
  F(307,11) = 2.0;
  F(308,11) = 1.0;
  %Coefficients:
  F(1,12) = 1.0e2;
  F(2,12) = 4.5e1;
  F(3,12) = -2.0e1;
  F(4,12) = -2.0e1;
  F(5,12) = 3.0e1;
  F(6,12) = -2.0e1;
  F(7,12) = 8.0;
  F(8,12) = 4.0;
  F(9,12) = -2.0e1;
  F(10,12) = 8.0;
  F(11,12) = 4.0;
  F(12,12) = -2.0e1;
  F(13,12) = 6.0;
  F(14,12) = 2.0;
  F(15,12) = -2.0e1;
  F(16,12) = 4.0;
  F(17,12) = -2.0e1;
  F(18,12) = 2.0;
  F(19,12) = -2.0;
  F(20,12) = 2.0;
  F(21,12) = 2.0;
  F(22,12) = -1.0;
  F(23,12) = -2.0e1;
  F(24,12) = 4.0;
  F(25,12) = -2.0e1;
  F(26,12) = 8.0;
  F(27,12) = 4.0;
  F(28,12) = -2.0e1;
  F(29,12) = 6.0;
  F(30,12) = 2.0;
  F(31,12) = -2.0e1;
  F(32,12) = 4.0;
  F(33,12) = -2.0e1;
  F(34,12) = 2.0;
  F(35,12) = -2.0;
  F(36,12) = 2.0;
  F(37,12) = 2.0;
  F(38,12) = -6.0;
  F(39,12) = 1.0e2;
  F(40,12) = 4.6e1;
  F(41,12) = -2.0e1;
  F(42,12) = -2.0e1;
  F(43,12) = 3.2e1;
  F(44,12) = -2.0e1;
  F(45,12) = 8.0;
  F(46,12) = 4.0;
  F(47,12) = -2.0e1;
  F(48,12) = 8.0;
  F(49,12) = 4.0;
  F(50,12) = -2.0e1;
  F(51,12) = 6.0;
  F(52,12) = 2.0;
  F(53,12) = -2.0e1;
  F(54,12) = 4.0;
  F(55,12) = -2.0e1;
  F(56,12) = 2.0;
  F(57,12) = -2.0;
  F(58,12) = 2.0;
  F(59,12) = 2.0;
  F(60,12) = -2.0;
  F(61,12) = -2.0e1;
  F(62,12) = 4.0;
  F(63,12) = -2.0e1;
  F(64,12) = 8.0;
  F(65,12) = 4.0;
  F(66,12) = -2.0e1;
  F(67,12) = 6.0;
  F(68,12) = 2.0;
  F(69,12) = -2.0e1;
  F(70,12) = 4.0;
  F(71,12) = -2.0e1;
  F(72,12) = 2.0;
  F(73,12) = -2.0;
  F(74,12) = 2.0;
  F(75,12) = 2.0;
  F(76,12) = -8.0;
  F(77,12) = 1.0e2;
  F(78,12) = 4.6e1;
  F(79,12) = -2.0e1;
  F(80,12) = -2.0e1;
  F(81,12) = 3.2e1;
  F(82,12) = -2.0e1;
  F(83,12) = 8.0;
  F(84,12) = 4.0;
  F(85,12) = -2.0e1;
  F(86,12) = 8.0;
  F(87,12) = 4.0;
  F(88,12) = -2.0e1;
  F(89,12) = 6.0;
  F(90,12) = 2.0;
  F(91,12) = -2.0e1;
  F(92,12) = 4.0;
  F(93,12) = -2.0e1;
  F(94,12) = 2.0;
  F(95,12) = -2.0;
  F(96,12) = 2.0;
  F(97,12) = 2.0;
  F(98,12) = -2.0;
  F(99,12) = -2.0e1;
  F(100,12) = 4.0;
  F(101,12) = -2.0e1;
  F(102,12) = 8.0;
  F(103,12) = 4.0;
  F(104,12) = -2.0e1;
  F(105,12) = 6.0;
  F(106,12) = 2.0;
  F(107,12) = -2.0e1;
  F(108,12) = 4.0;
  F(109,12) = -2.0e1;
  F(110,12) = 2.0;
  F(111,12) = -2.0;
  F(112,12) = 2.0;
  F(113,12) = 2.0;
  F(114,12) = -8.0;
  F(115,12) = 1.0e2;
  F(116,12) = 4.6e1;
  F(117,12) = -2.0e1;
  F(118,12) = -2.0e1;
  F(119,12) = 3.2e1;
  F(120,12) = -2.0e1;
  F(121,12) = 8.0;
  F(122,12) = 4.0;
  F(123,12) = -2.0e1;
  F(124,12) = 8.0;
  F(125,12) = 4.0;
  F(126,12) = -2.0e1;
  F(127,12) = 6.0;
  F(128,12) = 2.0;
  F(129,12) = -2.0e1;
  F(130,12) = 4.0;
  F(131,12) = -2.0e1;
  F(132,12) = 2.0;
  F(133,12) = -2.0;
  F(134,12) = 2.0;
  F(135,12) = 2.0;
  F(136,12) = -2.0;
  F(137,12) = -2.0e1;
  F(138,12) = 4.0;
  F(139,12) = -2.0e1;
  F(140,12) = 8.0;
  F(141,12) = 4.0;
  F(142,12) = -2.0e1;
  F(143,12) = 6.0;
  F(144,12) = 2.0;
  F(145,12) = -2.0e1;
  F(146,12) = 4.0;
  F(147,12) = -2.0e1;
  F(148,12) = 2.0;
  F(149,12) = -2.0;
  F(150,12) = 2.0;
  F(151,12) = 2.0;
  F(152,12) = -8.0;
  F(153,12) = 1.0e2;
  F(154,12) = 4.6e1;
  F(155,12) = -2.0e1;
  F(156,12) = -2.0e1;
  F(157,12) = 3.2e1;
  F(158,12) = -2.0e1;
  F(159,12) = 8.0;
  F(160,12) = 4.0;
  F(161,12) = -2.0e1;
  F(162,12) = 8.0;
  F(163,12) = 4.0;
  F(164,12) = -2.0e1;
  F(165,12) = 6.0;
  F(166,12) = 2.0;
  F(167,12) = -2.0e1;
  F(168,12) = 4.0;
  F(169,12) = -2.0e1;
  F(170,12) = 2.0;
  F(171,12) = -2.0;
  F(172,12) = 2.0;
  F(173,12) = 2.0;
  F(174,12) = -2.0;
  F(175,12) = -2.0e1;
  F(176,12) = 4.0;
  F(177,12) = -2.0e1;
  F(178,12) = 8.0;
  F(179,12) = 4.0;
  F(180,12) = -2.0e1;
  F(181,12) = 6.0;
  F(182,12) = 2.0;
  F(183,12) = -2.0e1;
  F(184,12) = 4.0;
  F(185,12) = -2.0e1;
  F(186,12) = 2.0;
  F(187,12) = -2.0;
  F(188,12) = 2.0;
  F(189,12) = 2.0;
  F(190,12) = -8.0;
  F(191,12) = 1.0e2;
  F(192,12) = 4.6e1;
  F(193,12) = -2.0e1;
  F(194,12) = -2.0e1;
  F(195,12) = 3.2e1;
  F(196,12) = -2.0e1;
  F(197,12) = 8.0;
  F(198,12) = 4.0;
  F(199,12) = -2.0e1;
  F(200,12) = 8.0;
  F(201,12) = 4.0;
  F(202,12) = -2.0e1;
  F(203,12) = 6.0;
  F(204,12) = 2.0;
  F(205,12) = -2.0e1;
  F(206,12) = 4.0;
  F(207,12) = -2.0e1;
  F(208,12) = 2.0;
  F(209,12) = -2.0;
  F(210,12) = -2.0;
  F(211,12) = -2.0e1;
  F(212,12) = 4.0;
  F(213,12) = -2.0e1;
  F(214,12) = 8.0;
  F(215,12) = 4.0;
  F(216,12) = -2.0e1;
  F(217,12) = 6.0;
  F(218,12) = 2.0;
  F(219,12) = -2.0e1;
  F(220,12) = 4.0;
  F(221,12) = -2.0e1;
  F(222,12) = 2.0;
  F(223,12) = -2.0;
  F(224,12) = -8.0;
  F(225,12) = 1.0e2;
  F(226,12) = 4.5e1;
  F(227,12) = -2.0e1;
  F(228,12) = -2.0e1;
  F(229,12) = 3.0e1;
  F(230,12) = -2.0e1;
  F(231,12) = 6.0;
  F(232,12) = 2.0;
  F(233,12) = -2.0e1;
  F(234,12) = 6.0;
  F(235,12) = 2.0;
  F(236,12) = -2.0e1;
  F(237,12) = 4.0;
  F(238,12) = -2.0e1;
  F(239,12) = 2.0;
  F(240,12) = -2.0;
  F(241,12) = -1.0;
  F(242,12) = -2.0e1;
  F(243,12) = 2.0;
  F(244,12) = -2.0;
  F(245,12) = -2.0e1;
  F(246,12) = 6.0;
  F(247,12) = 2.0;
  F(248,12) = -2.0e1;
  F(249,12) = 4.0;
  F(250,12) = -2.0e1;
  F(251,12) = 2.0;
  F(252,12) = -2.0;
  F(253,12) = -6.0;
  F(254,12) = 1.0e2;
  F(255,12) = 4.4e1;
  F(256,12) = -2.0e1;
  F(257,12) = -2.0e1;
  F(258,12) = 2.8e1;
  F(259,12) = -2.0e1;
  F(260,12) = 4.0;
  F(261,12) = -2.0e1;
  F(262,12) = 4.0;
  F(263,12) = -2.0e1;
  F(264,12) = 2.0;
  F(265,12) = -2.0;
  F(266,12) = -2.0e1;
  F(267,12) = -4.0;
  F(268,12) = -2.0e1;
  F(269,12) = 4.0;
  F(270,12) = -2.0e1;
  F(271,12) = 2.0;
  F(272,12) = -2.0;
  F(273,12) = -4.0;
  F(274,12) = 1.0e2;
  F(275,12) = 4.3e1;
  F(276,12) = -2.0e1;
  F(277,12) = -2.0e1;
  F(278,12) = 2.6e1;
  F(279,12) = -2.0e1;
  F(280,12) = 2.0;
  F(281,12) = -2.0;
  F(282,12) = -2.0e1;
  F(283,12) = 2.0;
  F(284,12) = -2.0;
  F(285,12) = 1.0;
  F(286,12) = -2.0e1;
  F(287,12) = -2.0;
  F(288,12) = -6.0;
  F(289,12) = -2.0e1;
  F(290,12) = 2.0;
  F(291,12) = -2.0;
  F(292,12) = -2.0;
  F(293,12) = 1.0e2;
  F(294,12) = 4.2e1;
  F(295,12) = -2.0e1;
  F(296,12) = -2.0e1;
  F(297,12) = 2.4e1;
  F(298,12) = -2.0e1;
  F(299,12) = -4.0;
  F(300,12) = 2.0;
  F(301,12) = -2.0e1;
  F(302,12) = -4.0;
  F(303,12) = -8.0;
  F(304,12) = 1.0e2;
  F(305,12) = 4.1e1;
  F(306,12) = 2.2e1;
  F(307,12) = 3.0;
  F(308,12) = 2.0;
  F(309,12) = 1.1e1;

 if scale 
 F(:,11+1) = F(:,11+1)*sf; 
 end
 G ={};
 
I={[1, 2, 3, 4, 5, 6, 7], [2, 3, 4, 5, 6, 7, 8], [3, 4, 5, 6, 7, 8, 9], [4, 5, 6, 7, 8, 9, 10], [5, 6, 7, 8, 9, 10, 11]};
 
J={[], [], [], [], []};

pop.F = F; pop.I = I; pop.G = G; pop.J = J; pop.n = size(F,2)-1;