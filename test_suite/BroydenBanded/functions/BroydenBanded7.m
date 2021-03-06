%% This file generates the Broyden Banded function in 7 variables 
 sf =10^-5; 
 scale = false; 
 
%% generate polynomial F  nvar = 7.0;
  F = sparse(157,7);
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
  F(59,2) = 1.0;
  F(59,3) = 3.0;
  F(60,2) = 1.0;
  F(60,3) = 2.0;
  F(61,2) = 1.0;
  F(61,4) = 3.0;
  F(62,2) = 1.0;
  F(62,4) = 2.0;
  F(63,2) = 1.0;
  F(63,4) = 1.0;
  F(64,2) = 1.0;
  F(64,5) = 3.0;
  F(65,2) = 1.0;
  F(65,5) = 2.0;
  F(66,2) = 1.0;
  F(66,5) = 1.0;
  F(67,2) = 1.0;
  F(67,6) = 3.0;
  F(68,2) = 1.0;
  F(68,6) = 2.0;
  F(69,2) = 1.0;
  F(69,7) = 3.0;
  F(70,2) = 1.0;
  F(70,7) = 2.0;
  F(71,2) = 1.0;
  F(71,7) = 1.0;
  F(72,2) = 1.0;
  F(73,3) = 6.0;
  F(74,3) = 4.0;
  F(75,3) = 3.0;
  F(75,4) = 2.0;
  F(76,3) = 3.0;
  F(76,4) = 1.0;
  F(77,3) = 3.0;
  F(78,3) = 2.0;
  F(78,4) = 3.0;
  F(79,3) = 2.0;
  F(79,4) = 2.0;
  F(80,3) = 2.0;
  F(80,4) = 1.0;
  F(81,3) = 2.0;
  F(81,5) = 3.0;
  F(82,3) = 2.0;
  F(82,5) = 2.0;
  F(83,3) = 2.0;
  F(83,5) = 1.0;
  F(84,3) = 2.0;
  F(84,6) = 3.0;
  F(85,3) = 2.0;
  F(85,6) = 2.0;
  F(86,3) = 2.0;
  F(86,7) = 3.0;
  F(87,3) = 2.0;
  F(87,7) = 2.0;
  F(88,3) = 2.0;
  F(88,7) = 1.0;
  F(89,3) = 2.0;
  F(90,3) = 1.0;
  F(90,4) = 3.0;
  F(91,3) = 1.0;
  F(91,4) = 2.0;
  F(92,3) = 1.0;
  F(92,4) = 1.0;
  F(93,3) = 1.0;
  F(93,5) = 3.0;
  F(94,3) = 1.0;
  F(94,5) = 2.0;
  F(95,3) = 1.0;
  F(95,5) = 1.0;
  F(96,3) = 1.0;
  F(96,6) = 3.0;
  F(97,3) = 1.0;
  F(97,6) = 2.0;
  F(98,3) = 1.0;
  F(98,7) = 3.0;
  F(99,3) = 1.0;
  F(99,7) = 2.0;
  F(100,3) = 1.0;
  F(100,7) = 1.0;
  F(101,3) = 1.0;
  F(102,4) = 6.0;
  F(103,4) = 4.0;
  F(104,4) = 3.0;
  F(104,5) = 2.0;
  F(105,4) = 3.0;
  F(105,5) = 1.0;
  F(106,4) = 3.0;
  F(107,4) = 2.0;
  F(107,5) = 3.0;
  F(108,4) = 2.0;
  F(108,5) = 2.0;
  F(109,4) = 2.0;
  F(109,6) = 3.0;
  F(110,4) = 2.0;
  F(110,6) = 2.0;
  F(111,4) = 2.0;
  F(111,7) = 3.0;
  F(112,4) = 2.0;
  F(112,7) = 2.0;
  F(113,4) = 2.0;
  F(113,7) = 1.0;
  F(114,4) = 1.0;
  F(114,5) = 3.0;
  F(115,4) = 1.0;
  F(115,5) = 1.0;
  F(116,4) = 1.0;
  F(116,6) = 3.0;
  F(117,4) = 1.0;
  F(117,6) = 2.0;
  F(118,4) = 1.0;
  F(118,7) = 3.0;
  F(119,4) = 1.0;
  F(119,7) = 2.0;
  F(120,4) = 1.0;
  F(120,7) = 1.0;
  F(121,4) = 1.0;
  F(122,5) = 6.0;
  F(123,5) = 4.0;
  F(124,5) = 3.0;
  F(124,6) = 2.0;
  F(125,5) = 3.0;
  F(125,6) = 1.0;
  F(126,5) = 3.0;
  F(127,5) = 2.0;
  F(127,6) = 3.0;
  F(128,5) = 2.0;
  F(128,6) = 2.0;
  F(129,5) = 2.0;
  F(129,6) = 1.0;
  F(130,5) = 2.0;
  F(130,7) = 3.0;
  F(131,5) = 2.0;
  F(131,7) = 2.0;
  F(132,5) = 2.0;
  F(132,7) = 1.0;
  F(133,5) = 2.0;
  F(134,5) = 1.0;
  F(134,6) = 3.0;
  F(135,5) = 1.0;
  F(135,6) = 2.0;
  F(136,5) = 1.0;
  F(136,6) = 1.0;
  F(137,5) = 1.0;
  F(137,7) = 3.0;
  F(138,5) = 1.0;
  F(138,7) = 2.0;
  F(139,5) = 1.0;
  F(139,7) = 1.0;
  F(140,5) = 1.0;
  F(141,6) = 6.0;
  F(142,6) = 4.0;
  F(143,6) = 3.0;
  F(143,7) = 2.0;
  F(144,6) = 3.0;
  F(144,7) = 1.0;
  F(145,6) = 3.0;
  F(146,6) = 2.0;
  F(146,7) = 3.0;
  F(147,6) = 2.0;
  F(147,7) = 1.0;
  F(148,6) = 2.0;
  F(149,6) = 1.0;
  F(149,7) = 3.0;
  F(150,6) = 1.0;
  F(150,7) = 2.0;
  F(151,6) = 1.0;
  F(151,7) = 1.0;
  F(152,7) = 6.0;
  F(153,7) = 4.0;
  F(154,7) = 3.0;
  F(155,7) = 2.0;
  F(156,7) = 1.0;
  %Coefficients:
  F(1,8) = 1.0e2;
  F(2,8) = 4.5e1;
  F(3,8) = -2.0e1;
  F(4,8) = -2.0e1;
  F(5,8) = 3.0e1;
  F(6,8) = -2.0e1;
  F(7,8) = 8.0;
  F(8,8) = 4.0;
  F(9,8) = -2.0e1;
  F(10,8) = 8.0;
  F(11,8) = 4.0;
  F(12,8) = -2.0e1;
  F(13,8) = 6.0;
  F(14,8) = 2.0;
  F(15,8) = -2.0e1;
  F(16,8) = 4.0;
  F(17,8) = -2.0e1;
  F(18,8) = 2.0;
  F(19,8) = -2.0;
  F(20,8) = 2.0;
  F(21,8) = 2.0;
  F(22,8) = -1.0;
  F(23,8) = -2.0e1;
  F(24,8) = 4.0;
  F(25,8) = -2.0e1;
  F(26,8) = 8.0;
  F(27,8) = 4.0;
  F(28,8) = -2.0e1;
  F(29,8) = 6.0;
  F(30,8) = 2.0;
  F(31,8) = -2.0e1;
  F(32,8) = 4.0;
  F(33,8) = -2.0e1;
  F(34,8) = 2.0;
  F(35,8) = -2.0;
  F(36,8) = 2.0;
  F(37,8) = 2.0;
  F(38,8) = -6.0;
  F(39,8) = 1.0e2;
  F(40,8) = 4.6e1;
  F(41,8) = -2.0e1;
  F(42,8) = -2.0e1;
  F(43,8) = 3.2e1;
  F(44,8) = -2.0e1;
  F(45,8) = 8.0;
  F(46,8) = 4.0;
  F(47,8) = -2.0e1;
  F(48,8) = 8.0;
  F(49,8) = 4.0;
  F(50,8) = -2.0e1;
  F(51,8) = 6.0;
  F(52,8) = 2.0;
  F(53,8) = -2.0e1;
  F(54,8) = 4.0;
  F(55,8) = -2.0e1;
  F(56,8) = 2.0;
  F(57,8) = -2.0;
  F(58,8) = -2.0;
  F(59,8) = -2.0e1;
  F(60,8) = 4.0;
  F(61,8) = -2.0e1;
  F(62,8) = 8.0;
  F(63,8) = 4.0;
  F(64,8) = -2.0e1;
  F(65,8) = 6.0;
  F(66,8) = 2.0;
  F(67,8) = -2.0e1;
  F(68,8) = 4.0;
  F(69,8) = -2.0e1;
  F(70,8) = 2.0;
  F(71,8) = -2.0;
  F(72,8) = -8.0;
  F(73,8) = 1.0e2;
  F(74,8) = 4.5e1;
  F(75,8) = -2.0e1;
  F(76,8) = -2.0e1;
  F(77,8) = 3.0e1;
  F(78,8) = -2.0e1;
  F(79,8) = 6.0;
  F(80,8) = 2.0;
  F(81,8) = -2.0e1;
  F(82,8) = 6.0;
  F(83,8) = 2.0;
  F(84,8) = -2.0e1;
  F(85,8) = 4.0;
  F(86,8) = -2.0e1;
  F(87,8) = 2.0;
  F(88,8) = -2.0;
  F(89,8) = -1.0;
  F(90,8) = -2.0e1;
  F(91,8) = 2.0;
  F(92,8) = -2.0;
  F(93,8) = -2.0e1;
  F(94,8) = 6.0;
  F(95,8) = 2.0;
  F(96,8) = -2.0e1;
  F(97,8) = 4.0;
  F(98,8) = -2.0e1;
  F(99,8) = 2.0;
  F(100,8) = -2.0;
  F(101,8) = -6.0;
  F(102,8) = 1.0e2;
  F(103,8) = 4.4e1;
  F(104,8) = -2.0e1;
  F(105,8) = -2.0e1;
  F(106,8) = 2.8e1;
  F(107,8) = -2.0e1;
  F(108,8) = 4.0;
  F(109,8) = -2.0e1;
  F(110,8) = 4.0;
  F(111,8) = -2.0e1;
  F(112,8) = 2.0;
  F(113,8) = -2.0;
  F(114,8) = -2.0e1;
  F(115,8) = -4.0;
  F(116,8) = -2.0e1;
  F(117,8) = 4.0;
  F(118,8) = -2.0e1;
  F(119,8) = 2.0;
  F(120,8) = -2.0;
  F(121,8) = -4.0;
  F(122,8) = 1.0e2;
  F(123,8) = 4.3e1;
  F(124,8) = -2.0e1;
  F(125,8) = -2.0e1;
  F(126,8) = 2.6e1;
  F(127,8) = -2.0e1;
  F(128,8) = 2.0;
  F(129,8) = -2.0;
  F(130,8) = -2.0e1;
  F(131,8) = 2.0;
  F(132,8) = -2.0;
  F(133,8) = 1.0;
  F(134,8) = -2.0e1;
  F(135,8) = -2.0;
  F(136,8) = -6.0;
  F(137,8) = -2.0e1;
  F(138,8) = 2.0;
  F(139,8) = -2.0;
  F(140,8) = -2.0;
  F(141,8) = 1.0e2;
  F(142,8) = 4.2e1;
  F(143,8) = -2.0e1;
  F(144,8) = -2.0e1;
  F(145,8) = 2.4e1;
  F(146,8) = -2.0e1;
  F(147,8) = -4.0;
  F(148,8) = 2.0;
  F(149,8) = -2.0e1;
  F(150,8) = -4.0;
  F(151,8) = -8.0;
  F(152,8) = 1.0e2;
  F(153,8) = 4.1e1;
  F(154,8) = 2.2e1;
  F(155,8) = 3.0;
  F(156,8) = 2.0;
  F(157,8) = 7.0;

 if scale 
 F(:,7+1) = F(:,7+1)*sf; 
 end
 G ={};
 
I={[1, 2, 3, 4, 5, 6, 7]};
 
J={[]};

pop.F = F; pop.I = I; pop.G = G; pop.J = J; pop.n = size(F,2)-1;