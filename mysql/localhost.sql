-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-09-25 14:55:22
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `mc`
--
CREATE DATABASE IF NOT EXISTS `mc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mc`;

-- --------------------------------------------------------

--
-- 表的结构 `mc_banner`
--

CREATE TABLE `mc_banner` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mc_goods`
--

CREATE TABLE `mc_goods` (
  `bid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_tag` varchar(255) DEFAULT NULL,
  `goods_title` varchar(255) DEFAULT NULL,
  `goods_price` varchar(255) DEFAULT NULL,
  `goods_desc` varchar(255) DEFAULT NULL,
  `goods_number` int(11) DEFAULT '15',
  `ishot` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mc_goods`
--

INSERT INTO `mc_goods` (`bid`, `cid`, `goods_id`, `goods_img`, `goods_tag`, `goods_title`, `goods_price`, `goods_desc`, `goods_number`, `ishot`) VALUES
(9, 0, 1, 'https://s1.miniso.cn/bsimg/ec/public/images/60/ff/60ff478297492a95baae118782eb4f08.jpg?x-oss-process=style/high', '', '动物系列Q版加水暖水袋', '¥29.9', '热量不散失，温度更持久', 15, 0),
(9, 0, 2, 'https://s1.miniso.cn/bsimg/ec/public/images/4c/91/4c9142584c4057dfb3bf4eb46af38139.jpg?x-oss-process=style/high', '', '动物系列猫爪加水暖水袋', '¥29.9', '加热袋壁，热量不易散失', 15, 0),
(9, 0, 3, 'https://s1.miniso.cn/bsimg/ec/public/images/ec/c4/ecc4d201dc166f87d7a665838eb1795f.jpg?x-oss-process=style/high', '', '桃心纱系列对装发圈（混）', '¥10', '清新可爱，萌妹子标配', 15, 0),
(9, 0, 4, 'https://s1.miniso.cn/bsimg/ec/public/images/da/8a/da8a81ca59389df5b16fe0a7442841d2.jpg?x-oss-process=style/high', '', '两双装日系经典纯色堆堆袜', '¥19.9', '穿出少女的小心思', 15, 0),
(9, 0, 5, 'https://s1.miniso.cn/bsimg/ec/public/images/10/fe/10fe17f600ad9130421a7024fc773b28.jpg?x-oss-process=style/high', '', '偷心系列免烤甲油胶套装', '¥19.9', '缤纷甲油套装，点燃指尖柔情', 15, 0),
(9, 0, 6, 'https://s1.miniso.cn/bsimg/ec/public/images/49/dc/49dc6ee07e342fc98df23ae4b7838347.jpg?x-oss-process=style/high', '', '独角兽滋润香水手霜套盒', '¥19.9', '精致护手礼，紧致水嫩肌', 15, 0),
(9, 0, 7, 'https://s1.miniso.cn/bsimg/ec/public/images/81/d8/81d82fddda07a9c89415809b5062fa55.jpg?x-oss-process=style/high', '', '猫耳系列女士开口棉拖', '¥29.9', '可爱可清爽，四季有他', 15, 0),
(9, 0, 8, 'https://s1.miniso.cn/bsimg/ec/public/images/89/4c/894c1e6941e378066e94b8d458f043d5.jpg?x-oss-process=style/high', '', '公益直播故宫宫廷系列花鸟蒸汽眼罩+护手霜组合', '¥39.9', '呵护你身体的每1一个细节', 15, 0),
(9, 0, 9, 'https://s1.miniso.cn/bsimg/ec/public/images/ff/20/ff200e3fd5f287c20f4dd88d119df424.jpg?x-oss-process=style/high', '', '切片猪肉脯', '¥10', '让美味游走在唇齿之间', 15, 0),
(9, 0, 10, 'https://s1.miniso.cn/bsimg/ec/public/images/6d/cf/6dcf92a1ce8c7f57ab0297ead7fa12d8.jpg?x-oss-process=style/high', '', '漫威系列相框', '¥19.9', '    ', 15, 0),
(9, 0, 11, 'https://s1.miniso.cn/bsimg/ec/public/images/c2/c2/c2c274d48f2f470042fc9f3d0e704941.jpg?x-oss-process=style/high', '', '汪汪队立大功卡通形象授权-扭蛋混装2', '¥15', '幸运来齐，等你集齐', 15, 0),
(9, 0, 12, 'https://s1.miniso.cn/bsimg/ec/public/images/70/ba/70ba1a7c847da53508286f60dd1dbf67.jpg?x-oss-process=style/high', '', '润色系列香薰-100ML', '¥59.9', '绚烂缱绻，异域迷情', 15, 0),
(9, 0, 13, 'https://s1.miniso.cn/bsimg/ec/public/images/73/46/7346c92c93f9d154206acd1cd0261d70.jpg?x-oss-process=style/high', '包邮', '小巧便携10000毫安移动电源 hd', '¥59.9', '大容量移动充，助你满格出行', 15, 0),
(9, 0, 14, 'https://s1.miniso.cn/bsimg/ec/public/images/93/86/9386e9c3c0e0ad7e0e6a24bf54b351be.jpg?x-oss-process=style/high', '包邮', ' LADY FLORA(芙儿小姐）系列第一代盲盒摆件（混）', '¥29.9', '奇萌泰迪，可爱来袭', 15, 0),
(9, 0, 15, 'https://s1.miniso.cn/bsimg/ec/public/images/cc/42/cc42e8d8e08facb6254ae14f123ea13c.jpg?x-oss-process=style/high', '包邮', '萌力星球TUTU车系列盲盒徽章（混）', '¥15', '表情包“野萌君”，欢乐来袭', 15, 0),
(9, 0, 16, 'https://s1.miniso.cn/bsimg/ec/public/images/a5/06/a506bae0ab6a440a43450721f87edf46.jpg?x-oss-process=style/high', '包邮', '珠光柔亮身体喷雾（闪粉色）', '¥19.9', '暗香随身浮动  一喷闪亮仙女肌', 15, 0),
(9, 0, 17, 'https://s1.miniso.cn/bsimg/ec/public/images/4a/3e/4a3ec751011fd012e1d213042519d669.jpg?x-oss-process=style/high', '包邮', 'MINISO爱刻秀系列绒雾丝滑唇釉', '¥25', '唇间密语 雾必出挑', 15, 0),
(9, 0, 18, 'https://s1.miniso.cn/bsimg/ec/public/images/68/25/68255969ddc48908b960a6100b9f95c4.jpg?x-oss-process=style/high', '包邮', '樱桃小丸子海洋系列盲盒徽章（混）', '¥15', '海洋萌物，小丸子来袭', 15, 0),
(9, 0, 19, 'https://s1.miniso.cn/bsimg/ec/public/images/2f/a1/2fa165cc8044d635b3fa172934c17c96.jpg?x-oss-process=style/high', '包邮', '长草颜团子系列飞行动物盲盒摆件(混)', '¥29.9', '长草颜团子，可爱登场', 15, 0),
(9, 0, 20, 'https://s1.miniso.cn/bsimg/ec/public/images/f1/7b/f17b57d7e97a280c7b5f3cbd175ec8a5.jpg?x-oss-process=style/high', '包邮', '领巾狗狗系列盲盒摆件', '¥29', '定格汪星人的可爱瞬间', 15, 0),
(9, 0, 21, 'https://s1.miniso.cn/bsimg/ec/public/images/d8/70/d87029ca7a37696086bb1122bae10d8c.png', '包邮', 'My Melody 和风系列盲盒徽章（混）', '¥15', '美乐蒂与朋友们得和服秀', 15, 0),
(9, 0, 22, 'https://s1.miniso.cn/bsimg/ec/public/images/be/66/be66f52af164b4755f3241b7fd5adac4.png', '包邮', '三头分离式干湿双剃充电剃须刀 型号：RSCF-8317', '¥89.9', '贴面顺滑 净爽剃须', 15, 0),
(9, 0, 23, 'https://s1.miniso.cn/bsimg/ec/public/images/59/fa/59fa0e6387aaa2f5e148f52f9dd3656d.png', '包邮', '旋转式双头充电剃须刀 ', '¥59.9', '为差旅而备的便携剃须刀', 15, 0),
(9, 0, 24, 'https://s1.miniso.cn/bsimg/ec/public/images/e2/75/e275a031190d833030e95a2d9fd39663.jpg?x-oss-process=style/high', '', ' 简约移动电源10000毫安  型号：BST-005QT', '¥49.9', '大容量移动充，助你满格出行', 15, 0),
(9, 0, 25, 'https://s1.miniso.cn/bsimg/ec/public/images/0f/3a/0f3a97e6b6d369a849fc324b297351ba.jpg?x-oss-process=style/high', '包邮', '糖果荧光笔*3支', '¥10', '标记划线好帮手', 15, 0),
(9, 0, 26, 'https://s1.miniso.cn/bsimg/ec/public/images/a5/07/a50799e84b8d47b1ce8e61f7268c35b8.jpg?x-oss-process=style/high', '', '漫威卡通人物毛巾', '¥15', '纯棉主义，舒适洗浴', 15, 0),
(9, 0, 27, 'https://s1.miniso.cn/bsimg/ec/public/images/91/8a/918a34b039a6129ee79be828cd7536f5.jpg?x-oss-process=style/high', '', '漫威枕头笔记本', '¥35', '不止是笔记本，还是小枕头', 15, 0),
(9, 0, 28, 'https://s1.miniso.cn/bsimg/ec/public/images/ea/e9/eae9e9302cced8f2e43430c2c3e3f969.jpg?x-oss-process=style/high', '', '漫威系列礼品盒', '¥20', '包装你的心意', 15, 0),
(9, 0, 29, 'https://s1.miniso.cn/bsimg/ec/public/images/75/f5/75f50f57cd24b7097e3ff4fa83de8380.jpg?x-oss-process=style/high', '', '高质不锈钢餐具', '¥7.5', '不锈钢材质，舒适手柄，刀叉勺可选', 15, 0),
(9, 0, 30, 'https://s1.miniso.cn/bsimg/ec/public/images/a8/f1/a8f1423229b5108c95b179293cec0012.png', '', '花纹不锈钢餐刀', '¥7.5', '简约实用 ，优雅用餐', 15, 0),
(1, 1, 31, 'https://s1.miniso.cn/bsimg/ec/public/images/81/d8/81d82fddda07a9c89415809b5062fa55.jpg?x-oss-process=style/high', '', '猫耳系列女士开口棉拖', '¥29.9', '可爱可清爽，四季有他', 15, 0),
(1, 1, 32, 'https://s1.miniso.cn/bsimg/ec/public/images/bb/23/bb23c61921b09efcc6f3fe0e69329a63.jpg?x-oss-process=style/high', '包邮', '棉花糖系列男女浴室拖鞋', '¥19.9', '脚踏舒适 放下一身疲惫', 15, 0),
(1, 1, 33, 'https://s1.miniso.cn/bsimg/ec/public/images/4b/88/4b8883435aed328fda6875eea6f3d048.png', '包邮', '波点系列男女浴室拖鞋', '¥19.9', '脚踩柔软 尽情享受回家后自在', 15, 0),
(1, 1, 34, 'https://s1.miniso.cn/bsimg/ec/public/images/7a/25/7a254c660a9986da423c09b6491a12d6.png', '包邮', '简易条纹浴室拖', '¥29.9', '疲惫的一天 由此刻获得释放', 15, 0),
(1, 1, 35, 'https://s1.miniso.cn/bsimg/ec/public/images/bd/d7/bdd7f5a336cb1bd0475cd181138c2e00.png', '包邮', '时尚透明便携防水鞋套', '¥15', '大雨滂沱也无阻前进步伐', 15, 0),
(1, 1, 36, 'https://s1.miniso.cn/bsimg/ec/public/images/93/8b/938b9e1f7108a45c21473090ae968aca.png', '包邮', '萌猫耳朵女士棉拖', '¥29.9', '柔软温暖 少女的慵懒时光', 15, 0),
(1, 1, 37, 'https://s1.miniso.cn/bsimg/ec/public/images/b8/34/b83417f32e5e74ef08b3a341179e7445.png', '包邮', '时尚旋转毛毛棉拖', '¥29.9', '加厚中底，防滑鞋底', 15, 0),
(1, 2, 45, 'https://s1.miniso.cn/bsimg/ec/public/images/5d/2c/5d2cb8adb2dd16b22e2b9bbeea3f2328.jpg?x-oss-process=style/high', '包邮', '简约多用保鲜盒3个装（颜色随机发货）', '¥15', '留住新鲜 美味不将就', 15, 0),
(1, 2, 46, 'https://s1.miniso.cn/bsimg/ec/public/images/47/f0/47f06773f82ca3b14c57a5f85eee37d1.jpg?x-oss-process=style/high', '包邮', '抽绳式垃圾袋3卷装（45只）', '¥10', '一提一拉 垃圾轻松丢', 15, 0),
(1, 2, 47, 'https://s1.miniso.cn/bsimg/ec/public/images/69/2a/692ac24c66e1227b4e0594bad18621f6.png', '包邮', '分类垃圾袋四卷装', '¥15', '轻松归类  垃圾不乱扔', 15, 0),
(1, 2, 48, 'https://s1.miniso.cn/bsimg/ec/public/images/11/f7/11f7866cbcc8b733b65c14458ef81dc7.jpg?x-oss-process=style/high', '包邮', 'Baby Holiday云柔奢润保湿纸手帕（12包）', '¥10', '给妈咪宝贝的专属呵护', 15, 0),
(1, 2, 49, 'https://s1.miniso.cn/bsimg/ec/public/images/1b/b1/1bb1fd13b4e10d92e0a44dda4f702556.jpg?x-oss-process=style/high', '包邮', 'Baby Holiday云柔奢润保湿抽纸 80抽/包x3包', '¥15', '给妈咪宝贝的专属呵护', 15, 0),
(1, 2, 50, 'https://s1.miniso.cn/bsimg/ec/public/images/3d/fb/3dfbd1d7d0a99cc49e779386887a71c1.png', '包邮', 'Baby Holiday婴儿加厚纯水柔湿巾（80片）', '¥15', ' 给妈咪宝贝的专属呵护', 15, 0),
(1, 2, 51, 'https://s1.miniso.cn/bsimg/ec/public/images/cc/10/cc102ab6ff14f4fc22ce67c59e8d87e3.png', '', '笑脸吐司清洁海绵2个装', '¥10', '厨浴清洁 得心应手', 15, 0),
(1, 2, 52, 'https://s1.miniso.cn/bsimg/ec/public/images/9d/5f/9d5ff9c722b65f1788fd594f7b621a43.png', '包邮', '16格自制冰格 （2个装）', '¥10', '冰块DIY 畅饮冰爽', 15, 0),
(1, 2, 53, 'https://s1.miniso.cn/bsimg/ec/public/images/ff/76/ff76ace7f85f94dd0ff3a15f579a7b7c.jpg?x-oss-process=style/high', '包邮', '两盒装家居防霉除湿盒', '¥10', '吸湿防潮 一室干爽', 15, 0),
(1, 2, 54, 'https://s1.miniso.cn/bsimg/ec/public/images/26/b0/26b04c94a470112c4e6013394c5bdf2a.png', '包邮', '优雅夏花除湿袋挂袋210gx3', '¥10', '小袋子大学问 让潮湿束手就擒', 15, 0),
(1, 2, 55, 'https://s1.miniso.cn/bsimg/ec/public/images/b6/7f/b67ff18970893e96618b3699921d2c31.png', '包邮', '时尚便携除尘粘毛器（内含2卷纸）', '¥15', '一按一扫  毛屑拜拜', 15, 0),
(1, 2, 56, 'https://s1.miniso.cn/bsimg/ec/public/images/ab/38/ab385dd01946c6fa6570cd5a34cc56a7.png', '包邮', '高硼硅玻璃双格保鲜盒', '¥19.9', '一盒多菜 分格不串味', 15, 0),
(1, 2, 57, 'https://s1.miniso.cn/bsimg/ec/public/images/37/db/37dbbeb2cb7de0dc934f67013dbfde69.png', '包邮', '防护系列植物除螨喷雾80ml', '¥15', '轻松一喷  螨虫走开', 15, 0),
(1, 2, 58, 'https://s1.miniso.cn/bsimg/ec/public/images/09/78/09782d8afe4a0e65c1491b23f89890b4.png', '包邮', '防护系列植物除螨包', '¥10', '植物提取  轻松除螨', 15, 0),
(1, 2, 59, 'https://s1.miniso.cn/bsimg/ec/public/images/b4/af/b4afa2ae9dfc236dbef0756d2fd75ef4.jpg?x-oss-process=style/high', '包邮', '日本原装进口LOOK除菌管道疏通剂450ml（浓缩啫喱型）', '¥29.9', '来自日本的通渠好帮手', 15, 0),
(1, 2, 60, 'https://s1.miniso.cn/bsimg/ec/public/images/74/2d/742d7f65118a26b01bd0dc7eac3a32fb.png', '', '净化卫士消毒杀菌手喷香110ml*2瓶', '¥39.9', '除菌净化 守护全家', 15, 0),
(1, 2, 61, 'https://s1.miniso.cn/bsimg/ec/public/images/e7/28/e72858eaa0fb8dad2fb462552df1a3b5.png', '包邮', '珊瑚绒吸水柔软动物毛巾浴巾', '¥15', '每天面对面 反正都是温柔', 15, 0),
(1, 2, 62, 'https://s1.miniso.cn/bsimg/ec/public/images/4f/53/4f5368611f2588e4efe839020263fc46.png', '包邮', '森林家族纯水柔肤湿巾', '¥10', '时刻携带 要你清爽', 15, 0),
(1, 2, 63, 'https://s1.miniso.cn/bsimg/ec/public/images/a6/a3/a6a37ecfee07feac5b816fee2b17049b.png', '包邮', '可爱卡通无香手帕纸（18包装）', '¥10', '加倍柔韧  温柔呵护肌肤', 15, 1),
(1, 2, 64, 'https://s1.miniso.cn/bsimg/ec/public/images/a9/11/a911e0fb562f591dc1c4bdb8759659e2.png', '包邮', '加厚抽绳式垃圾袋(30只)', '¥10', '加厚袋身，结实不易破', 15, 0),
(1, 2, 65, 'https://s1.miniso.cn/bsimg/ec/public/images/25/07/250761b2dc0313b36de386f265f2a105.png', '包邮', '家庭装薄荷牙线棒', '¥10', '呵护牙齿健康', 15, 0),
(1, 2, 66, 'https://s1.miniso.cn/bsimg/ec/public/images/ce/7e/ce7eb9e1cf7513e0b392d7485326a3d3.png', '包邮', '水果系列-纯水倍柔迷你湿巾', '¥10', '温和呵护娇嫩肌肤', 15, 0),
(1, 2, 67, 'https://s1.miniso.cn/bsimg/ec/public/images/71/7a/717afedc41c394001c38f4c7c9c09598.png', '', '水果系列-纯水倍柔湿巾家庭装', '¥10', '温和洁净肌肤', 15, 0),
(1, 2, 68, 'https://s1.miniso.cn/bsimg/ec/public/images/72/09/72094668634d940c376ee1df5980ca0d.png', '包邮', '天然竹纤维手帕12包 ', '¥10', '柔韧不伤肤，湿水不易破', 15, 0),
(1, 2, 69, 'https://s1.miniso.cn/bsimg/ec/public/images/77/dc/77dc48e28af5cc45b6af005a65d4f604.png', '包邮', '翻盖式除尘粘毛器（内含3卷纸]）', '¥15', '超强粘力，不伤衣物', 15, 0),
(1, 2, 70, 'https://s1.miniso.cn/bsimg/ec/public/images/89/b6/89b61a25d3314dc02f3bfa33b4dcdb74.png', '包邮', '海洋水润柔湿巾', '¥10', '配方温和，滋润皮肤', 15, 0),
(1, 2, 71, 'https://s1.miniso.cn/bsimg/ec/public/images/f5/73/f573f990168cd038d322da52ad0fc3da.png', '包邮', '天然呵护手口可用婴儿柔湿巾', '¥10', '精萃植物成分，环保无添加', 15, 1),
(1, 3, 72, 'https://s1.miniso.cn/bsimg/ec/public/images/70/ba/70ba1a7c847da53508286f60dd1dbf67.jpg?x-oss-process=style/high', '', '润色系列香薰-100ML', '¥59.9', '绚烂缱绻，异域迷情', 15, 0),
(1, 3, 73, 'https://s1.miniso.cn/bsimg/ec/public/images/dc/bf/dcbf2b74e170e5a7cd75937e50614ec9.png', '包邮', '广交会威斯汀酒店联名香薰', '¥39.9', '悠悠茶香，一闻倾心', 15, 0),
(1, 3, 74, 'https://s1.miniso.cn/bsimg/ec/public/images/84/5f/845fa5a4f86fd938b4ff9e312b5f06cb.png', '', '优雅夏花系列-挚爱无火香薰100ml', '¥29.9', '醉人芬芳 为爱而生', 15, 0),
(1, 3, 75, 'https://s1.miniso.cn/bsimg/ec/public/images/88/5f/885f0cae30463bbc36c06a288bb735fd.png', '包邮', '繁星璀璨系列无火香薰 100ml', '¥29.9', '花与香气  顷刻温柔', 15, 0),
(1, 3, 76, 'https://s1.miniso.cn/bsimg/ec/public/images/9b/c4/9bc41ba52884d2cbb678ce37e14bc067.png', '包邮', '优雅夏花系列香薰50ml', '¥19.9', '用心制香 予你美妙体验', 15, 0),
(1, 3, 77, 'https://s1.miniso.cn/bsimg/ec/public/images/68/5b/685bb693cdeb79bae8a4ab9114543bf8.png', '包邮', '沉睡花园系列-无火香薰', '¥29.9', '清香缭绕  如同踏进梦想花园', 15, 0),
(1, 3, 78, 'https://s1.miniso.cn/bsimg/ec/public/images/c8/72/c872a9a7100e6d143a5409f5910c06f7.png', '包邮', '花之秘语系列-无火香薰', '¥39.9', '花香鸟鸣 闻到大自然的味道', 15, 0),
(1, 3, 79, 'https://s1.miniso.cn/bsimg/ec/public/images/21/26/21268e259e964c5f3a5eb69bc1576aa5.png', '包邮', '牛油果猫草莓猫暖手枕', '¥29.9', '可枕可抱 多用暖手萌物', 15, 0),
(1, 3, 80, 'https://s1.miniso.cn/bsimg/ec/public/images/f5/86/f5866f2bda71227bf1f340a944a2b9b6.png', '包邮', '星光系列限量版-无火香薰', '¥39.9', '流沙质感，持久留香', 15, 0),
(1, 3, 81, 'https://s1.miniso.cn/bsimg/ec/public/images/9a/54/9a546fd40c918e1f601855ca354b626c.png', '', '水果系列-香包', '¥10', '小清新的家居气息', 15, 0),
(1, 3, 82, 'https://s1.miniso.cn/bsimg/ec/public/images/a1/e3/a1e3cb209c9337bc526324a904a0ce24.png', '包邮', 'MINISO优雅夏花系列香薰 ', '¥39.9', '持久清香，舒缓解压', 15, 0),
(1, 3, 83, 'https://s1.miniso.cn/bsimg/ec/public/images/f6/af/f6af1bbcd5272cc11b429a0a735a7715.png', '', '北欧风防臭防虫香氛包', '¥9.9', '香奈儿原料供应商', 15, 0),
(1, 3, 84, 'https://s1.miniso.cn/bsimg/ec/public/images/87/7b/877b98182692cdcb998194ddfb0f47a8.png', '包邮', '北欧风系列磨砂圆瓶香薰', '¥29.9', '香奈儿原料供应商', 15, 0),
(1, 4, 85, 'https://s1.miniso.cn/bsimg/ec/public/images/cd/62/cd6267f3aae7d893f8b94152e9d38dc5.png', '包邮', '洗护三件套', '¥15', '衣物分开装  机洗更放心', 15, 0),
(1, 4, 86, 'https://s1.miniso.cn/bsimg/ec/public/images/c9/27/c927096088c7556fafdc230f41a292d5.png', '', '日式滤水篮', '¥10', '一篮多用途 清洗备餐全靠它', 15, 0),
(1, 4, 87, 'https://s1.miniso.cn/bsimg/ec/public/images/f6/0f/f60f042beb4165c623b1549620a0ed4c.png', '包邮', '针线百宝箱', '¥10', '配件齐全，线材优质', 15, 0),
(1, 4, 88, 'https://s1.miniso.cn/bsimg/ec/public/images/fb/b4/fbb408a1403fb2d6f3b24e05993ac9a7.png', '包邮', '桌面抽屉收纳盒', '¥15', '整洁收纳 生活井井有条', 15, 0),
(1, 4, 89, 'https://s1.miniso.cn/bsimg/ec/public/images/1e/d8/1ed822afc481706e6e044269058d902e.png', '包邮', '衣物洗护袋3件套', '¥15', '细密网布，耐洗耐磨', 15, 0),
(1, 5, 90, 'https://s1.miniso.cn/bsimg/ec/public/images/ac/75/ac750399d197b457591b84135d4afb8a.jpg?x-oss-process=style/high', '', '简约AB纱素色浴巾', '¥39.9', '洗漱时刻 温柔相待', 15, 0),
(1, 5, 91, 'https://s1.miniso.cn/bsimg/ec/public/images/c8/e9/c8e967b5884d8562133c3814d889daa7.jpg?x-oss-process=style/high', '包邮', '超细纤维萌趣动物毛巾(颜色随机发货)', '¥9.9', '柔软舒适 温柔呵护肌肤', 15, 0),
(1, 5, 92, 'https://s1.miniso.cn/bsimg/ec/public/images/07/51/0751ed421f88f90dee0eeab39a02ef4f.jpg?x-oss-process=style/high', '包邮', '冰淇淋系列流沙甜筒创意按摩梳', '¥15', '舒适顺发  一梳到底', 15, 0),
(1, 5, 93, 'https://s1.miniso.cn/bsimg/ec/public/images/f6/46/f646ff2d284bad13b9f2886d66016615.jpg?x-oss-process=style/high', '包邮', '护龈极简瓷感牙刷 6支家庭装', '¥19.9', '日本研发，减压设计', 15, 0),
(1, 5, 94, 'https://s1.miniso.cn/bsimg/ec/public/images/f9/19/f91927924dc93c36471797477a909b68.png', '包邮', '立式长柄骨梳/1支装（颜色随机发货）', '¥15', '一梳理顺发丝 按摩头皮', 15, 0),
(1, 5, 95, 'https://s1.miniso.cn/bsimg/ec/public/images/47/d6/47d6b7b244679b86cb9d59c83a026603.png', '包邮', '粉漾系列素色提花浴巾', '¥29.9', '轻柔舒适，吸水性强', 15, 0),
(1, 5, 96, 'https://s1.miniso.cn/bsimg/ec/public/images/e2/54/e254b26a7ecf7c83a0700437231bedbd.png', '包邮', '深层清洁超声波洗脸仪', '¥79.9', '清洁毛孔，促进循环', 15, 0),
(2, 1, 97, 'https://s1.miniso.cn/bsimg/ec/public/images/c1/bb/c1bb763258f85c034b2a558dee86d792.jpg?x-oss-process=style/high', '包邮', '丹莉茶壶700ML', '¥15', '泡一壶闲适，品时光静好', 15, 0),
(2, 1, 98, 'https://s1.miniso.cn/bsimg/ec/public/images/c8/33/c8333231debbc2cc15a534bd8cf02d2e.jpg?x-oss-process=style/high', '包邮', '星球系列立体行星陶瓷杯350mL(颜色随机发货)', '¥19.9', '冲泡一杯 品味时光', 15, 0),
(2, 1, 99, 'https://s1.miniso.cn/bsimg/ec/public/images/27/ae/27ae86980f3ad1f6e97b4fd68ea153e3.jpg?x-oss-process=style/high', '包邮', '星球系列水晶球吸管杯530ml（颜色随机发货）', '¥29.9', '探索星球宇宙  吸出真滋味', 15, 0),
(2, 1, 100, 'https://s1.miniso.cn/bsimg/ec/public/images/d7/83/d78326ad4860f9474355d2255995b3bf.png', '包邮', '星球系列太空猫双层吸管杯380ml', '¥25', '探索星球宇宙 吸出真滋味', 15, 0),
(2, 1, 101, 'https://s1.miniso.cn/bsimg/ec/public/images/10/07/1007d402a5eade8e7f784600770a3760.png', '包邮', 'Tritan鸡蛋杯430ml', '¥25', '可可爱爱 喝水欢快', 15, 0),
(2, 1, 102, 'https://s1.miniso.cn/bsimg/ec/public/images/71/a6/71a6a703a5517ae6d17fb91352e53118.png', '包邮', '多彩生活塑料杯', '¥29', 'Tritan环保材质，健康从饮水开始', 15, 1),
(2, 1, 103, 'https://s1.miniso.cn/bsimg/ec/public/images/e4/af/e4af8c773ee881583823079075f1d0d0.png', '包邮', 'MINISO萌宠保温杯350ml', '¥39.9', '安全锁扣，便捷弹盖', 15, 0),
(2, 1, 104, 'https://s1.miniso.cn/bsimg/ec/public/images/62/53/62533f1eb6932448769121a67bc291c5.png', '', '平盖保温杯', '¥49.9', '温暖入心，清凉解暑', 15, 0),
(2, 1, 105, 'https://s1.miniso.cn/bsimg/ec/public/images/c6/c3/c6c3940111bc5fbd20cfdce79bfdcf19.png', '包邮', '卡通保温杯', '¥39.9', '萌萌的外表，暖暖的内心', 15, 0),
(2, 1, 106, 'https://s1.miniso.cn/bsimg/ec/public/images/99/95/9995a3b8a9bbac1b088bbf74c660782a.png', '包邮', '弹盖Tritan随身杯', '¥29.9', '坚固耐用，安全无异味', 15, 0),
(2, 2, 107, 'https://s1.miniso.cn/bsimg/ec/public/images/75/f5/75f50f57cd24b7097e3ff4fa83de8380.jpg?x-oss-process=style/high', '', '高质不锈钢餐具', '¥7.5', '不锈钢材质，舒适手柄，刀叉勺可选', 15, 0),
(2, 2, 108, 'https://s1.miniso.cn/bsimg/ec/public/images/a8/f1/a8f1423229b5108c95b179293cec0012.png', '', '花纹不锈钢餐刀', '¥7.5', '简约实用 ，优雅用餐', 15, 0),
(2, 2, 109, 'https://s1.miniso.cn/bsimg/ec/public/images/1e/43/1e4366cb9fd09d1aad093a875995b589.png', '', '卡通系列餐具', '¥10', '萌趣餐具 宝宝开心用', 15, 0),
(2, 2, 110, 'https://s1.miniso.cn/bsimg/ec/public/images/00/7c/007c08523c7c59ba55ed64488e68c965.png', '', '可爱动物造型便当袋B款（颜色随机发货）', '¥19.9', '保冷保热，安心带饭', 15, 1),
(2, 2, 111, 'https://s1.miniso.cn/bsimg/ec/public/images/fc/6c/fc6c54c6463ba4e1e66552ae729b4bc3.png', '', '不锈钢茶勺', '¥10', '雕花手柄，高档大气', 15, 0),
(3, 1, 112, 'https://s1.miniso.cn/bsimg/ec/public/images/1e/46/1e46ddd79cdc855d0e872b951018ee4c.png', '包邮', '蕾丝安全舒适一字围抹胸', '¥39.9', '舒适亲肤，防止走光', 15, 0),
(3, 2, 113, 'https://s1.miniso.cn/bsimg/ec/public/images/da/8a/da8a81ca59389df5b16fe0a7442841d2.jpg?x-oss-process=style/high', '', '两双装日系经典纯色堆堆袜', '¥19.9', '穿出少女的小心思', 15, 0),
(3, 2, 114, 'https://s1.miniso.cn/bsimg/ec/public/images/bb/ee/bbee3ab88f376978c82a8b268e611573.png', '包邮', '8D空气感隐形魅惑蝴蝶裆丝袜', '¥15', '薄如蝉翼 宛如第二层肌肤', 15, 0),
(3, 2, 115, 'https://s1.miniso.cn/bsimg/ec/public/images/ac/39/ac392423c9a8c022d6bdf1d2f83c48ee.png', '包邮', '两双装素色平板男士船袜', '¥15', '百搭袜款  透气不闷脚', 15, 0),
(3, 2, 116, 'https://s1.miniso.cn/bsimg/ec/public/images/14/e0/14e0fd13bdc2902a1b1dbe489818352c.png', '包邮', '日系彩点纱女士兔羊毛袜', '¥15', '脚感舒适松软  行走轻负担', 15, 0),
(3, 2, 117, 'https://s1.miniso.cn/bsimg/ec/public/images/1b/ca/1bcad4fdeaffb2ddfb40885547bcfef9.png', '包邮', '森系经典雪花女士兔羊毛袜', '¥15', '脚感舒适松软  行走轻负担', 15, 0),
(3, 2, 118, 'https://s1.miniso.cn/bsimg/ec/public/images/ea/54/ea544f2900799b66125fa9d42875f7fe.png', '包邮', '桃心系列两双装AB刺绣女士长袜', '¥15', '小清新爱心刺绣  时尚百搭惹人爱', 15, 0),
(3, 2, 119, 'https://s1.miniso.cn/bsimg/ec/public/images/e7/9f/e79f475a5831f4e50d14f5c96cfca321.png', '包邮', '两双装日系基础百搭女士船袜', '¥15', '百搭袜款  舒适不闷脚', 15, 0),
(3, 2, 120, 'https://s1.miniso.cn/bsimg/ec/public/images/09/f2/09f2d69e9d7d7e0dc2ec75ba78cc78b2.png', '包邮', '两双装休闲透气网眼男士短袜', '¥15', '百搭袜款  透气不闷脚', 15, 0),
(3, 3, 121, 'https://s1.miniso.cn/bsimg/ec/public/images/cf/59/cf599e72f168119e1ec85d6076c17f44.png', '包邮', '5条装棉质一次性女士内裤(新旧包装混发)', '¥19.9', '就算只穿一次  也要给你该有的舒适', 15, 0),
(3, 3, 122, 'https://s1.miniso.cn/bsimg/ec/public/images/16/96/169649d27bcd83717a7867d59ca58c9c.png', '', '海豚宝宝男童面包裤', '¥15', '安全环保，无荧光剂', 15, 0),
(3, 3, 123, 'https://s1.miniso.cn/bsimg/ec/public/images/13/b5/13b579908db13bd675d063378c28bcfe.png', '', '萌萌熊男童面包裤', '¥15', '新疆长绒棉，天然亲肤', 15, 0),
(3, 4, 124, 'https://s1.miniso.cn/bsimg/ec/public/images/ec/c4/ecc4d201dc166f87d7a665838eb1795f.jpg?x-oss-process=style/high', '', '桃心纱系列对装发圈（混）', '¥10', '清新可爱，萌妹子标配', 15, 0),
(3, 4, 125, 'https://s1.miniso.cn/bsimg/ec/public/images/70/f6/70f65e45d91adc6272a7cd5fed97e536.png', '包邮', '经典英文刺绣小标针织帽', '¥29.9', '随心搭配  玩转街潮', 15, 0),
(3, 4, 126, 'https://s1.miniso.cn/bsimg/ec/public/images/8a/c9/8ac9e3973c500a3d59d3bff455212d74.png', '包邮', '蝴蝶结毛绒绒耳罩', '¥19.9', '毛绒设计，温暖贴心', 15, 0),
(3, 4, 127, 'https://s1.miniso.cn/bsimg/ec/public/images/7f/d0/7fd0791c5aa3a0b7322eb1479aef68e1.png', '包邮', '兔毛球针织围巾', '¥69.9', '柔软兔毛，亲肤保暖', 15, 0),
(3, 4, 128, 'https://s1.miniso.cn/bsimg/ec/public/images/89/21/8921b5e9d1571da7f2cfbaa43a560556.png', '包邮', '不规则流苏挂件(混)', '¥15', '居家礼品', 15, 0),
(3, 4, 129, 'https://s1.miniso.cn/bsimg/ec/public/images/d8/b3/d8b3110bef4b688b81660654ba559615.png', '包邮', '清新马卡龙花纱流苏围巾', '¥49.9', '跃然颈间 优雅自来', 15, 0),
(3, 4, 130, 'https://s1.miniso.cn/bsimg/ec/public/images/c2/11/c211d9dd02cc7b97f280d12fe4f909ee.png', '包邮', '可爱动物表情毛绒渔夫帽', '¥49.9', '动物毛绒渔夫帽', 15, 1),
(3, 4, 131, 'https://s1.miniso.cn/bsimg/ec/public/images/24/8b/248b8b23ad2dece53c12881cbf7bec14.png', '包邮', '可爱雪花针织帽', '¥49.9', '毛绒球设计，俏皮可爱', 15, 1),
(3, 4, 132, 'https://s1.miniso.cn/bsimg/ec/public/images/f8/7f/f87f96009f914055f675fbd25d1a6d47.png', '包邮', '爱心成人耳罩', '¥19.9', '聚酯纤维', 15, 0),
(3, 4, 133, 'https://s1.miniso.cn/bsimg/ec/public/images/6d/e8/6de8ac60f733a20e5c7e891be8ae978c.png', '', '简约字母绣花百搭草帽', '¥29.9', '透气轻盈，夏季防晒', 15, 0),
(4, 1, 134, 'https://s1.miniso.cn/bsimg/ec/public/images/10/fe/10fe17f600ad9130421a7024fc773b28.jpg?x-oss-process=style/high', '', '偷心系列免烤甲油胶套装', '¥19.9', '缤纷甲油套装，点燃指尖柔情', 15, 0),
(4, 1, 135, 'https://s1.miniso.cn/bsimg/ec/public/images/4a/3e/4a3ec751011fd012e1d213042519d669.jpg?x-oss-process=style/high', '包邮', 'MINISO爱刻秀系列绒雾丝滑唇釉', '¥25', '唇间密语 雾必出挑', 15, 0),
(4, 1, 136, 'https://s1.miniso.cn/bsimg/ec/public/images/58/0f/580ff77fdff7479d01f0e12a1bfc1617.png', '包邮', 'MINISO偷心系列爱心眉笔', '¥15', '实力偷心 一挑眉迷万千', 15, 0),
(4, 1, 137, 'https://s1.miniso.cn/bsimg/ec/public/images/53/84/538431dda6defc1a71e0085daecfc3e6.png', '', '双头两用珠光眼影笔', '¥15', '一抹出彩 魅力眼妆', 15, 1),
(4, 1, 138, 'https://s1.miniso.cn/bsimg/ec/public/images/c9/47/c947c2fd5c7b69aef79028bfa79d1777.jpg?x-oss-process=style/high', '包邮', 'MINISO偷心系列弹性高光腮红盘', '¥59.9', '实力偷心  一抹自然好气色', 15, 0),
(4, 1, 139, 'https://s1.miniso.cn/bsimg/ec/public/images/f7/7c/f77c535721907cac5f4d0d7a62a115bf.jpg?x-oss-process=style/high', '包邮', 'MINISO偷心系列十二色眼影盘', '¥59.9', '沦陷在眼间星河  一眼偷心', 15, 0),
(4, 1, 140, 'https://s1.miniso.cn/bsimg/ec/public/images/47/9a/479a528f29df04c75af00d4cc8a7350f.jpg?x-oss-process=style/high', '包邮', '偷心系列烤粉腮红高光组合', '¥90', '偶然的高调 更加明艳迷人', 15, 0),
(4, 1, 141, 'https://s1.miniso.cn/bsimg/ec/public/images/04/1c/041cc49463f466cd593b46bee1e256b5.jpg?x-oss-process=style/high', '包邮', '星光梦境十二色眼影盘+炫彩眼线液笔 组合装', '¥79.9', '迷人星光 顷刻瞩目', 15, 0),
(4, 1, 142, 'https://s1.miniso.cn/bsimg/ec/public/images/15/4a/154a74033cd8b0b648fbad5f4e17e1d0.jpg?x-oss-process=style/high', '包邮', '炫彩眼线液笔', '¥19.9', '浓郁显色 勾勒迷人大眼', 15, 0),
(4, 1, 143, 'https://s1.miniso.cn/bsimg/ec/public/images/c9/ab/c9abae3789f715579ee522a656ab42d0.png', '包邮', 'MINISO偷心系列烤粉腮红粉', '¥45', '粉而不俗  细腻出彩    ', 15, 0),
(4, 1, 144, 'https://s1.miniso.cn/bsimg/ec/public/images/3c/34/3c34a8dd230a1cfcd22ceef9acfe45d8.png', '包邮', 'MINISO偷心系列烤粉高光粉', '¥45', '偶然的高调 更加明艳迷人', 15, 0),
(4, 1, 145, 'https://s1.miniso.cn/bsimg/ec/public/images/b4/b5/b4b50a1977609b7a5bbf01bd6058b30c.png', '包邮', '星光梦境十二色眼影盘', '¥59.9', '迷人星光 顷刻瞩目', 15, 0),
(4, 1, 146, 'https://s1.miniso.cn/bsimg/ec/public/images/b1/4f/b14fd53c62f68dbc93a7138e9b819a2e.png', '包邮', '小方杆三角眉笔', '¥19.9', '双头双效 勾勒自然眉形', 15, 0),
(4, 1, 147, 'https://s1.miniso.cn/bsimg/ec/public/images/4f/82/4f829b8634a8bff3d752c493b128bbe0.png', '包邮', '自然拉线眉笔', '¥10', '勾绘自如 持久出色', 15, 0),
(4, 1, 148, 'https://s1.miniso.cn/bsimg/ec/public/images/88/f2/88f2f86e833e595d39c5442f4911d750.jpg?x-oss-process=style/high', '包邮', '1.5毫米极细自动眉笔*3支', '¥30', '纤细双头，自然色泽', 15, 0),
(4, 1, 149, '', '', '双头粗细液体眼线笔*2支', '¥29.9', '', 15, 0),
(4, 1, 150, 'https://s1.miniso.cn/bsimg/ec/public/images/22/42/224264c7621a3c3826813112b4888778.png', '包邮', '冰淇淋淡彩润色唇膏', '¥15', '呵护娇嫩双唇', 15, 0),
(4, 1, 151, 'https://s1.miniso.cn/bsimg/ec/public/images/df/34/df34079b3136771526743698ec6c6c73.png', '包邮', '花漾倾心渐变腮红', '¥25', '层次渐变  抹出立体气质颜', 15, 0),
(4, 1, 152, 'https://s1.miniso.cn/bsimg/ec/public/images/4e/bc/4ebc2bca485cb320e4caa890342dc720.png', '包邮', 'Miniso出色系列十二色眼影盘', '¥49.9', '眼妆随心变', 15, 0),
(4, 1, 153, 'https://s1.miniso.cn/bsimg/ec/public/images/d0/0b/d00b1fee3a4ec3b0887274cfe2c0a13b.png', '包邮', '臻谜之吻倾慕口红', '¥29.9', '一抹出彩 绽放“唇”上风情', 15, 0),
(4, 1, 154, 'https://s1.miniso.cn/bsimg/ec/public/images/08/38/0838d3c7ffd26a83594b7f40189cee27.png', '包邮', '自由果子九色眼影', '¥35', '粉质细腻，持久显色', 15, 0),
(4, 1, 155, 'https://s1.miniso.cn/bsimg/ec/public/images/78/95/7895e5f4ec6ebd82180bdebd1bf40f5c.png', '包邮', '净萃迷你哑光/滋润小口红', '¥15', '2种质地 雾面+丝滑水润', 15, 0),
(4, 1, 156, 'https://s1.miniso.cn/bsimg/ec/public/images/4b/ee/4bee8ff53ca4bd704bf3d9cf08fdc6a4.png', '', '一米阳光水性撕拉型指甲油', '¥5', '炫彩20色，狙击你的少女心', 15, 0),
(4, 1, 157, 'https://s1.miniso.cn/bsimg/ec/public/images/76/7c/767c4f160d2827eb7943a0193f9f1455.png', '包邮', '恋爱第一季妆前隔离乳', '¥25', '隔离修颜，隐形毛孔', 15, 0),
(4, 1, 158, 'https://s1.miniso.cn/bsimg/ec/public/images/63/51/6351f9eed6c652c5afee4da320932fbb.png', '', '强力卷翘持久睫毛膏', '¥10', '纤长翘卷，持久不脱妆', 15, 0),
(4, 1, 159, 'https://s1.miniso.cn/bsimg/ec/public/images/a1/51/a1514b68a7b00f4987c36438b968d510.png', '', '双头粗细液体眼线笔', '¥15', '一粗一细，勾勒百变眼妆', 15, 1),
(4, 1, 160, 'https://s1.miniso.cn/bsimg/ec/public/images/95/d4/95d472ea853537fb15c692431100f2a7.png', '包邮', '随色密尚防水眉笔', '¥15', '轻松勾画眉形', 15, 0),
(4, 1, 161, 'https://s1.miniso.cn/bsimg/ec/public/images/a1/c4/a1c4958c42fee7719f53626cddfc6336.png', '包邮', '随色防水眼线笔', '¥10', '极细笔尖，全天零晕染', 15, 0),
(4, 1, 162, 'https://s1.miniso.cn/bsimg/ec/public/images/63/01/63019d9250da0d5ba618cf61b13fd8b0.png', '包邮', '1.5毫米极细自动眉笔', '¥10', '纤细双头，防水防汗', 15, 0),
(4, 1, 163, 'https://s1.miniso.cn/bsimg/ec/public/images/3b/7e/3b7e69655373338dd7a5c46627e1aadb.png', '包邮', 'MINISO免卸妆素颜霜', '¥39.9', '无需卸妆，轻松洗净', 15, 0),
(4, 1, 164, 'https://s1.miniso.cn/bsimg/ec/public/images/ae/02/ae02bdcc2443903191ca4370c39eda7a.png', '包邮', '深层洁净护理卸妆水', '¥15', '深层洁净，眼唇可用', 15, 0),
(4, 1, 165, 'https://s1.miniso.cn/bsimg/ec/public/images/98/a8/98a8d51e5b2c4b6e806ec6a73a79f38a.png', '', '完美自动眉笔', '¥9.9', '防汗防水，不易晕妆', 15, 0),
(4, 2, 166, 'https://s1.miniso.cn/bsimg/ec/public/images/49/dc/49dc6ee07e342fc98df23ae4b7838347.jpg?x-oss-process=style/high', '', '独角兽滋润香水手霜套盒', '¥19.9', '精致护手礼，紧致水嫩肌', 15, 0),
(4, 2, 167, 'https://s1.miniso.cn/bsimg/ec/public/images/04/27/0427d5abdc9ee1e97cb92416b154f3af.jpg?x-oss-process=style/high', '包邮', '约旦光感香波身体磨砂膏250g', '¥19.9', '肌肤滑溜溜 拒当“糙”妹子', 15, 0),
(4, 2, 168, 'https://s1.miniso.cn/bsimg/ec/public/images/89/4c/894c1e6941e378066e94b8d458f043d5.jpg?x-oss-process=style/high', '', '公益直播故宫宫廷系列花鸟蒸汽眼罩+护手霜组合', '¥39.9', '呵护你身体的每一个细节', 15, 0),
(4, 2, 169, 'https://s1.miniso.cn/bsimg/ec/public/images/db/ac/dbac58952e1f882efd975e9809030d46.jpg?x-oss-process=style/high', '包邮', '滋养柔肤海盐磨砂沐浴露400ml', '¥15', '沐浴磨砂2合1  邂逅滑溜肌肤', 15, 0),
(4, 2, 170, 'https://s1.miniso.cn/bsimg/ec/public/images/39/d1/39d121c915421c56a34143c506f09de1.png', '包邮', 'MOD设计系列动物立体按摩捶', '¥15', '敲敲打打  一身轻松', 15, 0),
(4, 2, 171, 'https://s1.miniso.cn/bsimg/ec/public/images/0d/9c/0d9ce9b7bd2ce148a70281686097d698.png', '包邮', '竹酢足贴5对装', '¥19.9', '温养双足 一身轻松', 15, 0),
(4, 2, 172, 'https://s1.miniso.cn/bsimg/ec/public/images/35/57/355726fd2eb54fa848ab5d76582fa35e.png', '', 'MOD设计系列-抗菌免洗净手凝露', '¥5', '抗菌免洗净手凝露', 15, 0),
(4, 2, 173, 'https://s1.miniso.cn/bsimg/ec/public/images/b3/43/b3431e38b156aaab04de003454fe6d5b.png', '', '胖胖猫狗泡棉按摩捶  36cm/1支装', '¥10', ' 每天休闲一刻 赶走疲劳感', 15, 0),
(4, 2, 174, 'https://s1.miniso.cn/bsimg/ec/public/images/15/a0/15a02de57a84f2fae3f06af1b54412a8.png', '包邮', '冰凉贴降温贴10片装', '¥10', '8小时清爽体验 一扫暑热困倦', 15, 0),
(4, 2, 175, 'https://s1.miniso.cn/bsimg/ec/public/images/8f/04/8f04540f3ab95d6c8c14fed0d2baca41.png', '包邮', '防侧漏超薄无忧卫生巾430mm(5片装)', '¥10', '实力防侧漏 翻身乐无忧', 15, 0),
(4, 2, 176, 'https://s1.miniso.cn/bsimg/ec/public/images/05/3b/053ba9e91868afedd10d3d8c59051bea.png', '包邮', '防侧漏超薄无忧卫生巾290mm(10片装)', '¥10', '实力防侧漏 翻身乐无忧', 15, 0),
(4, 2, 177, 'https://s1.miniso.cn/bsimg/ec/public/images/7a/9b/7a9b98208b2789d51c64a26c09a635f5.png', '包邮', '防侧漏超薄无忧卫生巾240mm(12片装)', '¥10', '实力防侧漏 翻身乐无忧', 15, 0),
(4, 2, 178, 'https://s1.miniso.cn/bsimg/ec/public/images/06/d5/06d59491b9e4f59d3f84360d19ffacd7.png', '包邮', '防侧漏超薄无忧卫生巾190mm(20片装)', '¥10', '实力防侧漏 翻身乐无忧', 15, 0),
(4, 2, 179, 'https://s1.miniso.cn/bsimg/ec/public/images/67/a9/67a9e2d206e755e6e62d0ee5e85d17c8.png', '', '舒适颈部按摩器', '¥15', '按摩器', 15, 0),
(4, 2, 180, 'https://s1.miniso.cn/bsimg/ec/public/images/b7/35/b73540d78d77e73be1dec23670311d54.png', '包邮', '空气感薄爽透气卫生巾', '¥10', '薄爽透气，放飞“那几天”。', 15, 0),
(4, 2, 181, 'https://s1.miniso.cn/bsimg/ec/public/images/b7/24/b7248a77a120525b52d0c2dcb755129f.png', '包邮', '薄无感夜用卫生巾26片装', '¥40', '柔软舒适的贴心呵护', 15, 0),
(4, 2, 182, 'https://s1.miniso.cn/bsimg/ec/public/images/e8/78/e87825d7efb77917ca46773df86ad3a7.png', '包邮', '薄无感日夜用卫生巾28片装', '¥30', '棉柔舒适的贴心呵护', 15, 0),
(4, 2, 183, 'https://s1.miniso.cn/bsimg/ec/public/images/0b/af/0baff740f8002da87e8ea91c4b24e6e6.png', '包邮', '薄无感日夜用卫生巾21片装', '¥30', '柔软舒适的贴心呵护', 15, 0),
(4, 2, 184, 'https://s1.miniso.cn/bsimg/ec/public/images/42/21/4221672eb20c84001b5652fdac93b6ec.png', '包邮', '薄无感0.1系列日夜用卫生巾41片装', '¥50', '日夜组合，全天呵护', 15, 0),
(4, 2, 185, 'https://s1.miniso.cn/bsimg/ec/public/images/7d/40/7d40b70bd7c4925821f025adafe2117f.png', '包邮', '薄无感0.1系列日夜卫生巾62片装', '¥80', '18倍吸收力 日夜组合', 15, 0),
(4, 2, 186, 'https://s1.miniso.cn/bsimg/ec/public/images/02/30/02304fbdc696605244d7ed1920145cc2.png', '包邮', '隐形无痕系列卫生巾240mm', '¥15', '隐去经期小烦恼', 15, 0),
(4, 2, 187, 'https://s1.miniso.cn/bsimg/ec/public/images/fe/58/fe58bc049f509d28c03736440317656e.png', '包邮', '六片装肩颈贴', '¥19.9', '舒缓颈部疲劳', 15, 0),
(4, 2, 188, 'https://s1.miniso.cn/bsimg/ec/public/images/70/dd/70dd0f25fee4689afb40d867c0f31da2.png', '包邮', '可爱蜜罐注水式热水袋', '¥39.9', '铂金硅胶材质，安全保暖', 15, 1),
(4, 2, 189, 'https://s1.miniso.cn/bsimg/ec/public/images/05/e8/05e841cb9e41a8da7e1e2d9cfae7cebe.png', '包邮', '山谷百合润肤香体沐浴露', '¥15', '百合花香 绵密泡沫', 15, 0),
(4, 2, 190, 'https://s1.miniso.cn/bsimg/ec/public/images/88/9a/889a77731af19e67d455a03c810006bc.png', '', '抑菌系列洗手液500ml', '¥10', '清洁抑菌，滋润保湿', 15, 0),
(4, 2, 191, 'https://s1.miniso.cn/bsimg/ec/public/images/a1/65/a165b94ed79239d271192447c145eda1.png', '包邮', '滚珠五爪头部按摩器', '¥10', '粉/蓝/绿色随机发货', 15, 0),
(4, 2, 192, 'https://s1.miniso.cn/bsimg/ec/public/images/0c/35/0c353ea1c31da3b1f0e0d11226460d6c.png', '', '第四代颈部按摩器', '¥20', '黄/粉/蓝色随机发货', 15, 0),
(4, 2, 193, 'https://s1.miniso.cn/bsimg/ec/public/images/09/be/09be7367dce438e8ec655a30d221e812.png', '', '薄无感0.1系列400MM卫生巾5片装', '¥10', '纤薄0.1cm无感体验', 15, 0),
(4, 2, 194, 'https://s1.miniso.cn/bsimg/ec/public/images/a1/85/a1853f75ebec893e1ed9d2f14b51d633.png', '包邮', '薄无感0.1系列280MM卫生巾8片装', '¥10', '纤薄0.1cm无感体验', 15, 0),
(4, 2, 195, 'https://s1.miniso.cn/bsimg/ec/public/images/50/49/50491e6d6f277461000ee1ed737f39d0.png', '包邮', '薄无感0.1系列240MM卫生巾8片装', '¥10', '纤薄0.1cm无感体验', 15, 0),
(4, 2, 196, 'https://s1.miniso.cn/bsimg/ec/public/images/f7/f8/f7f8f10ea1797cd43b167aa823be9703.png', '包邮', '薄无感0.1系列190MM卫生巾12片装', '¥10', '纤薄0.1cm无感体验', 15, 0),
(4, 2, 197, 'https://s1.miniso.cn/bsimg/ec/public/images/cb/b7/cbb774d60f7182f813e76f4779d947ed.png', '包邮', '8片装暖身系列暖贴', '¥10', '平稳发热，持久温暖', 15, 0),
(4, 2, 198, 'https://s1.miniso.cn/bsimg/ec/public/images/f8/43/f843cfeab432cffd7c442615f50a3102.png', '包邮', '清新花香系列香体喷雾', '¥10', '天然提取，清新香气', 15, 0),
(4, 3, 199, 'https://s1.miniso.cn/bsimg/ec/public/images/a5/06/a506bae0ab6a440a43450721f87edf46.jpg?x-oss-process=style/high', '包邮', '珠光柔亮身体喷雾（闪粉色）', '¥19.9', '暗香随身浮动  一喷闪亮仙女肌', 15, 0),
(4, 3, 200, 'https://s1.miniso.cn/bsimg/ec/public/images/3d/12/3d12ac9502db7851c508370055687774.jpg?x-oss-process=style/high', '包邮', '清肌源 水漾清透防晒乳spf50+pa+++', '¥39.9', '高倍防晒 温和无刺激', 15, 0),
(4, 3, 201, 'https://s1.miniso.cn/bsimg/ec/public/images/1b/41/1b41ccf06a2cad15aa9899d3d4facc55.jpg?x-oss-process=style/high', '包邮', '小分子玻尿酸保湿补水喷雾', '¥19.9', '密集补水   顷刻水润', 15, 0),
(4, 3, 202, 'https://s1.miniso.cn/bsimg/ec/public/images/87/ed/87edbab733da03c1b4c41e78205163f3.png', '包邮', '男士活炭净衡保湿爽肤水', '¥25', '清爽水润 焕发型男肌肤光彩', 15, 0),
(4, 3, 203, 'https://s1.miniso.cn/bsimg/ec/public/images/fd/73/fd7303a7d3754aff4217f4fc9e9e8e66.png', '包邮', '男士冰爽活炭保湿洁面乳120g', '¥19.9', '酷爽洁净 为颜值加分', 15, 0),
(4, 3, 204, 'https://s1.miniso.cn/bsimg/ec/public/images/9a/0f/9a0f03c4594f336c55b2db649090d433.png', '包邮', '男士火山泥控油洁净洁面乳120g', '¥15', '清爽型男魅力 拒当“油腻”小生', 15, 0),
(4, 3, 205, 'https://s1.miniso.cn/bsimg/ec/public/images/15/a7/15a7fd7ccbe56b211c0bce29fb85c368.png', '包邮', '氨基酸洁净洁面泡沫150g', '¥19.9', '温和洁面 滋养肌肤', 15, 0),
(4, 3, 206, 'https://s1.miniso.cn/bsimg/ec/public/images/c7/9e/c79e01cb93c463f86c8146cbcd37aa94.png', '', '补水滋润护手霜', '¥5', '馥郁花香 滋润双手', 15, 0),
(4, 3, 207, 'https://s1.miniso.cn/bsimg/ec/public/images/a9/2e/a92ec3b926bc3e1c1a60a95b46152fdd.png', '', '安瓶精华系列面膜', '¥7.5', '含多种植物精华，改善肤质', 15, 0),
(4, 4, 208, 'https://s1.miniso.cn/bsimg/ec/public/images/70/5e/705e686f2ef2d40917013bd5a885be13.png', '包邮', '超值家庭装牙线棒', '¥15', '轻松洁净齿缝  展现闪耀笑容', 15, 0),
(4, 4, 209, 'https://s1.miniso.cn/bsimg/ec/public/images/7f/6d/7f6d85f66f7e970752d2eec3b8d7bf74.png', '包邮', '万根刷毛深层清洁软毛牙刷', '¥10', '万根柔软 万分呵护', 15, 0),
(4, 4, 210, 'https://s1.miniso.cn/bsimg/ec/public/images/8b/74/8b74834f9451eb608b98092e2c2ecc70.png', '包邮', '备长炭高密洁净护齿牙刷三支装', '¥10', '备长炭护齿', 15, 1),
(4, 4, 211, 'https://s1.miniso.cn/bsimg/ec/public/images/ae/3d/ae3d0091d9c0e962c5edacfb533e3fb7.png', '包邮', '备长炭护龈极简瓷感牙刷三支装', '¥10', '极简瓷感 ', 15, 1),
(4, 4, 212, 'https://s1.miniso.cn/bsimg/ec/public/images/25/5e/255e55508b11137fa9213c04092760ce.png', '', '小蜜蜂儿童牙刷2支装配送滑行玩具', '¥10', '纤小刷头，不伤牙床', 15, 0),
(4, 4, 213, 'https://s1.miniso.cn/bsimg/ec/public/images/d3/53/d353cb2d1c3e41f5423721f96c0ca96b.png', '包邮', '备长炭软毛深洁牙刷3支装', '¥10', '含备长炭微粒，祛除口腔异味', 15, 1),
(4, 4, 214, 'https://s1.miniso.cn/bsimg/ec/public/images/b2/7f/b27fd467bfb1d8fb6f659cd0bf1af4a0.png', '包邮', '三支装护龈极简瓷感牙刷', '¥10', '日本研发，减压设计', 15, 0),
(4, 5, 215, 'https://s1.miniso.cn/bsimg/ec/public/images/5c/9c/5c9c5f4d8ad6c78c48128e4b51e61d06.png', '', '甜心可可淡香水洗护系列', '¥15', '香气浓郁，动人持久', 15, 0),
(4, 6, 216, 'https://s1.miniso.cn/bsimg/ec/public/images/be/66/be66f52af164b4755f3241b7fd5adac4.png', '包邮', '三头分离式干湿双剃充电剃须刀 型号：RSCF-8317', '¥89.9', '贴面顺滑 净爽剃须', 15, 0),
(4, 6, 217, 'https://s1.miniso.cn/bsimg/ec/public/images/59/fa/59fa0e6387aaa2f5e148f52f9dd3656d.png', '包邮', '旋转式双头充电剃须刀 ', '¥59.9', '为差旅而备的便携剃须刀', 15, 0),
(4, 6, 218, 'https://s1.miniso.cn/bsimg/ec/public/images/ce/b3/ceb3c10a3cc47253cd5f11d502482b03.jpg?x-oss-process=style/high', '包邮', '名创优品索林根修甲锉（混色）', '¥10', '细心打磨，亮甲神器', 15, 1),
(4, 6, 219, 'https://s1.miniso.cn/bsimg/ec/public/images/c0/b6/c0b6aa0bd0911186d97ca6c8e124a440.jpg?x-oss-process=style/high', '包邮', '棉柔珍珠纹AB双面洗脸巾100片 ', '¥10', 'AB两面派 洁护好搭档', 15, 0),
(4, 6, 220, 'https://s1.miniso.cn/bsimg/ec/public/images/21/1d/211d3e2eaf4b0c118ec3551b073fe14f.jpg?x-oss-process=style/high', '包邮', '珍珠纹AB面一次性洗脸巾女抽取式卷筒式加厚洗脸棉柔巾', '¥40', 'AB两面派 洁护好搭档', 15, 0),
(4, 6, 221, 'https://s1.miniso.cn/bsimg/ec/public/images/85/7a/857a29e7edd08ce85c9ec4fd34e3e78b.jpg?x-oss-process=style/high', '包邮', '流光溢彩-化妆刷 5款可选', '¥10', '一笔闪耀 温柔上妆', 15, 0),
(4, 6, 222, 'https://s1.miniso.cn/bsimg/ec/public/images/b3/39/b339b5a3998f637c58378b4c911df0d3.jpg?x-oss-process=style/high', '包邮', '锌合金醒肤6层剃须刀（瑞典进口刀片）', '¥29.9', '利落剃须 清爽面容', 15, 0),
(4, 6, 223, 'https://s1.miniso.cn/bsimg/ec/public/images/e8/00/e800a5364974350bdbc144456f27f7d2.png', '', '绘芸高弹8条装基础橡皮筋', '¥5', '一款皮筋  多种造型', 15, 0),
(4, 6, 224, 'https://s1.miniso.cn/bsimg/ec/public/images/22/52/2252ccd3be95cb7fd987655205b1521f.png', '包邮', '高质便捷化妆小套刷', '¥19.9', '一套俱全  随时上妆', 15, 0),
(4, 6, 225, 'https://s1.miniso.cn/bsimg/ec/public/images/fd/97/fd972668dd5a425e5194984bfa5ae99b.png', '', '无暇系列仿羊毛化妆刷', '¥7.5', '一套俱全  随时上妆', 15, 0),
(4, 6, 226, 'https://s1.miniso.cn/bsimg/ec/public/images/1d/d3/1dd30dece4267bbb61f2db18fc0c7413.jpg?x-oss-process=style/high', '包邮', '珍珠纹卷抽式洗脸巾90抽*3包（新旧包装混发）', '¥45', '洁面护肤，如此简单。', 15, 0),
(4, 6, 227, 'https://s1.miniso.cn/bsimg/ec/public/images/be/56/be56f47b75a75e24b900a69ca783d73f.png', '包邮', '柔韧加厚加大平纹洗脸巾(100片*6包)', '¥159.8', '亲和肌肤  吸水透气', 15, 0),
(4, 6, 228, 'https://s1.miniso.cn/bsimg/ec/public/images/25/0a/250a339f45671cdfe1ad5189c5b9e0a3.png', '包邮', '柔韧加厚加大平纹洗脸巾(100片3包)', '¥79.9', '柔软亲肤 柔韧吸水', 15, 0),
(4, 6, 229, 'https://s1.miniso.cn/bsimg/ec/public/images/cf/e1/cfe12ecab9b8fc52cbd4dc30348723d6.png', '包邮', '高质多功能粉刺针套装', '¥15', '全副武装 战“痘”到底', 15, 0),
(4, 6, 230, 'https://s1.miniso.cn/bsimg/ec/public/images/bf/a1/bfa1849d581ad8a7209f96e8d24a9d31.jpg?x-oss-process=style/high', '包邮', '芭比无痕指甲片24片装', '¥15', '5分钟自制美甲 点亮指尖魅力', 15, 0),
(4, 6, 231, 'https://s1.miniso.cn/bsimg/ec/public/images/50/89/5089d79f90d022a5708d464959a78e97.png', '包邮', '全棉系列洗脸巾120抽/包*6包', '¥90', '精致Girl爱用款，洁面卸妆新选择', 15, 0),
(4, 6, 232, 'https://s1.miniso.cn/bsimg/ec/public/images/3e/a3/3ea3bfce2904be1ab99bbe975fb81a91.png', '包邮', '清爽滋润温和柔滑卸甲巾/盒', '¥10', '一敷一擦 快速卸甲', 15, 0),
(4, 6, 233, 'https://s1.miniso.cn/bsimg/ec/public/images/1c/a7/1ca76a46333e03727e8c9df17faf6e2f.png', '包邮', '泡水大蛋壳网红小巨蛋粉扑美妆蛋/2个装（颜色包装随机发货）', '¥20', '精致妆容  从粉扑开始', 15, 0),
(4, 6, 234, 'https://s1.miniso.cn/bsimg/ec/public/images/a4/8d/a48d3a2438aefe14a7b89d2394a78d81.png', '', '5CM黑色40支装经典一字夹', '¥5', '基础发夹 打造多变造型', 15, 0),
(4, 6, 235, 'https://s1.miniso.cn/bsimg/ec/public/images/d2/66/d266c142efb33962589d8143ebb67b4e.png', '包邮', '泡水大蛋壳网红小巨蛋粉扑美妆蛋/4个装(颜色包装随机发货)', '¥40', '精致妆容  从粉扑开始', 15, 0),
(4, 6, 236, 'https://s1.miniso.cn/bsimg/ec/public/images/a2/64/a2647fcd589d627872a622a3acc6a8bc.jpg?x-oss-process=style/high', '', '全棉系列-随身Q包洗脸巾30片 ', '¥7.5', '每一张温柔呵护  干净清洁肌肤', 15, 0),
(4, 6, 237, 'https://s1.miniso.cn/bsimg/ec/public/images/b0/fb/b0fb904552c4c7beb73305effcda87ae.jpg?x-oss-process=style/high', '包邮', '泡水大蛋壳网红小巨蛋水滴形粉扑美妆蛋/个(颜色包装随机发货)', '¥10', '精致妆容 从粉扑开始', 15, 0),
(4, 6, 238, 'https://s1.miniso.cn/bsimg/ec/public/images/5a/d9/5ad98a25d6a7cd20d82436aa2583f3de.jpg?x-oss-process=style/high', '包邮', '泡水大蛋壳网红小巨蛋双面切粉扑美妆蛋/个(颜色包装随机发货)', '¥10', '精致妆容 从粉扑开始', 15, 0),
(4, 6, 239, 'https://s1.miniso.cn/bsimg/ec/public/images/73/5b/735bc970b690b93fb43151a4f1f07d63.jpg?x-oss-process=style/high', '包邮', '泡水大蛋壳网红小巨蛋橄榄斜切粉扑美妆蛋/个（颜色包装随机发货）', '¥10', '精致妆容 从粉扑开始', 15, 0),
(4, 6, 240, 'https://s1.miniso.cn/bsimg/ec/public/images/89/81/8981421092e63f550a33c8975dbd1908.jpg?x-oss-process=style/high', '包邮', '泡水大蛋壳网红小巨蛋水滴三面切粉扑美妆蛋/个（颜色包装随机发货）', '¥10', '精致妆容 从粉扑开始', 15, 0),
(4, 6, 241, 'https://s1.miniso.cn/bsimg/ec/public/images/74/0b/740b18d9c09e42e6b6a38c6b4c4ba28b.png', '', 'U型双球按摩器(银色)', '¥49', '每天按摩10分钟 打造精致小v脸', 15, 0),
(4, 6, 242, 'https://s1.miniso.cn/bsimg/ec/public/images/d2/da/d2da1ed8842898c68471dbdf3c7f1b5a.png', '包邮', '卷抽式洗脸巾90抽—婴儿平纹(新旧包装混发)', '¥15', '一巾多用清洁 呵护娇嫩肌肤', 15, 1),
(4, 6, 243, 'https://s1.miniso.cn/bsimg/ec/public/images/3e/d6/3ed6ddcd8edb229dfe3796f667953e49.png', '包邮', '时尚微距修眉刀3支装', '¥10', '一套搞定修眉   拥有气质眉形', 15, 0),
(4, 6, 244, 'https://s1.miniso.cn/bsimg/ec/public/images/e9/fd/e9fd0c2ef405dab277c940ad1611d214.png', '包邮', 'MINISO名创优品一次性洗脸巾纯棉婴儿棉柔巾擦面美容卸妆巾抽取式*3包装新旧包装随机发', '¥45', '全棉系列 轻柔透气', 15, 0),
(4, 6, 245, 'https://s1.miniso.cn/bsimg/ec/public/images/48/8d/488d207b49c7e22e43891a9e4e8cb027.png', '包邮', '珍珠纹卷抽式洗脸巾90抽（20×20cm）新旧包装混发', '¥15', '洁面护肤，如此简单。', 15, 0),
(4, 6, 246, 'https://s1.miniso.cn/bsimg/ec/public/images/f1/b6/f1b6b7420ae6979a4cbe58d939d5c585.png', '', '10条装细软基础橡皮筋', '¥5', '强韧不易断', 15, 0),
(4, 6, 247, 'https://s1.miniso.cn/bsimg/ec/public/images/0d/a3/0da3123c92319796040819e427ce9d31.png', '', '2.8mm无接缝10条装黑色基础橡皮筋', '¥5', '无接缝橡皮筋', 15, 0),
(4, 6, 248, 'https://s1.miniso.cn/bsimg/ec/public/images/94/ff/94ff4029b1b460542bd38fc11fe19fab.png', '包邮', '高质便携式卷翘睫毛夹', '¥10', '轻松变身卷翘“睫毛精”', 15, 0),
(4, 6, 249, 'https://s1.miniso.cn/bsimg/ec/public/images/e3/e2/e3e2ed50559b24845bc9857853b29c88.png', '包邮', '天然植物化妆棉800片白色', '¥10', '天然植物', 15, 1),
(4, 6, 250, 'https://s1.miniso.cn/bsimg/ec/public/images/ba/1e/ba1e687c68a8ca73b2eb69c13a38f64a.png', '', '日本品质强拉不断小圈150根入盒装一次性橡皮筋', '¥5', '强拉不断', 15, 0),
(4, 6, 251, 'https://s1.miniso.cn/bsimg/ec/public/images/2f/c9/2fc9dfaf2ab7e07344fa77cc67fa35de.png', '包邮', '粉红两用化妆棉180片', '¥10', '', 15, 0),
(4, 6, 252, 'https://s1.miniso.cn/bsimg/ec/public/images/1e/bb/1ebba998292ba2714ac074298109992b.png', '包邮', '全棉系列-洗脸巾120抽', '¥15', '天然纯棉，柔软护肤', 15, 0),
(4, 6, 253, 'https://s1.miniso.cn/bsimg/ec/public/images/61/88/6188cc96253f2ee6df3448d4fd0d0f16.png', '包邮', '全棉系列-婴儿洗脸巾120抽', '¥15', '全棉系列 轻柔透气', 15, 0),
(4, 6, 254, 'https://s1.miniso.cn/bsimg/ec/public/images/ad/6d/ad6d754d7484f86d5939aaef86594e4d.png', '包邮', '100%全棉洗脸巾100抽', '¥19.9', '全棉洗脸   简洁便携', 15, 0),
(4, 6, 255, 'https://s1.miniso.cn/bsimg/ec/public/images/4c/dd/4cdddd548791ed8804defc52c7404ca8.png', '包邮', '专业高质葫芦粉扑组合', '¥15', '柔软亲肤。吸水性强', 15, 0),
(4, 6, 256, 'https://s1.miniso.cn/bsimg/ec/public/images/38/21/3821b93613d1954908db8c180cb43546.png', '包邮', '亲肤双效全棉化妆棉180片', '¥10', '天然棉质，吸水适中', 15, 0),
(4, 6, 257, 'https://s1.miniso.cn/bsimg/ec/public/images/07/ec/07ec1be31abc50315664e6a84844d07e.png', '', '经典领结3条装基础橡皮筋', '¥5', '简约经典', 15, 0),
(4, 6, 258, 'https://s1.miniso.cn/bsimg/ec/public/images/1e/3d/1e3d7ab6bd03f2ceed5e2a6cdd241399.png', '包邮', '木棒两头双用卫生棉签500支（尖头+葫芦头）', '¥10', '贴心双头 多用清洁', 15, 0),
(4, 6, 259, 'https://s1.miniso.cn/bsimg/ec/public/images/9a/e7/9ae73c7f69b0c2a3a72f5d24b4db216c.png', '包邮', '200支婴儿细轴棉棒圆罐', '¥10', '柔韧纸轴，全家适用', 15, 0),
(4, 6, 260, 'https://s1.miniso.cn/bsimg/ec/public/images/fc/9c/fc9c588a1b0ed428b5986b44670d93be.png', '包邮', '800支木棒棉签便携装', '¥10', '100%天然棉花制成', 15, 0),
(4, 6, 261, 'https://s1.miniso.cn/bsimg/ec/public/images/db/64/db64e30050339219fd588bdc20e5fdf5.png', '包邮', '深层清洁超声波洗脸仪刷头', '¥10', '进口刷毛，温和无刺激', 15, 0),
(4, 6, 262, 'https://s1.miniso.cn/bsimg/ec/public/images/81/e0/81e070e90ac3241caaeb3a1b74557585.png', '包邮', '1+1不锈钢眉夹', '¥10', '独特斜口设计，咬口紧密', 15, 0),
(5, 1, 263, 'https://s1.miniso.cn/bsimg/ec/public/images/d5/36/d536c075b30aed6fc6ca8df822513701.png', '', '3D透气系列V脸口罩（3片装）', '¥10', '对抗紫外线 拒绝当“黑脸”', 15, 0),
(5, 1, 264, 'https://s1.miniso.cn/bsimg/ec/public/images/f2/4d/f24d9a416c84f1be30e64171e6d019af.jpg?x-oss-process=style/high', '', '10片装一次性可爱印花学生口罩', '¥19.9', '三层过滤防护 上学出门更安心', 15, 0),
(5, 1, 265, 'https://s1.miniso.cn/bsimg/ec/public/images/bd/e1/bde18c740004633c96556f806d191df1.png', '包邮', '纳米银抗菌口罩6片装', '¥19.9', '4层过滤 抑菌防护', 15, 0),
(5, 1, 266, 'https://s1.miniso.cn/bsimg/ec/public/images/a6/d0/a6d033773a7a195666e1d65450fb8e4d.png', '包邮', '动物系列趴趴枕', '¥39.9', '一枕多用 午睡好伴侣', 15, 0),
(5, 1, 267, 'https://s1.miniso.cn/bsimg/ec/public/images/ed/f0/edf035b3afe01f7a91474941f4d401fb.png', '', '蒸汽口罩2片装(无香）', '¥10', '对抗干冷 暖暖呼吸', 15, 0),
(5, 1, 268, 'https://s1.miniso.cn/bsimg/ec/public/images/47/24/4724a786900ed22bd2c207a0b6244a93.png', '包邮', 'Goodnight字母刺绣眼罩', '¥10', '无惧强光 乐享睡眠时刻', 15, 0),
(5, 1, 269, 'https://s1.miniso.cn/bsimg/ec/public/images/a5/40/a540f00df3dc1db749452b5fcdadb77d.png', '', '立体透气口罩3只装', '¥10', '明星同款，时尚百搭', 15, 0),
(5, 1, 270, 'https://s1.miniso.cn/bsimg/ec/public/images/ee/c9/eec9eda5a6605d9f86fed54265878049.png', '', '可收纳便携U型枕', '¥39.9', '方便收纳携带', 15, 1),
(5, 1, 271, 'https://s1.miniso.cn/bsimg/ec/public/images/5e/76/5e7678df86154aa03aed31371628129a.png', '', '简约质感秋冬口罩', '¥15', '简约质感  秋冬口罩', 15, 0),
(5, 1, 272, 'https://s1.miniso.cn/bsimg/ec/public/images/a2/72/a27259c92a84fa98c8b0e6e8451c83c7.png', '包邮', '氨纶超柔记忆棉U枕', '¥25', '舒适柔软，贴合颈椎', 15, 0),
(5, 1, 273, 'https://s1.miniso.cn/bsimg/ec/public/images/ce/f0/cef0bbfc0a6caa91ee587998e1e52686.png', '', 'PET透明分装瓶', '¥5', '卫生分装，携带方便', 15, 0),
(5, 2, 274, 'https://s1.miniso.cn/bsimg/ec/public/images/50/9f/509f82c5d1a37b337c44da117226912e.png', '包邮', '小动物系列公仔斜挎包腰包（款式随机发货）', '¥35', '轻松随心 驾驭整个夏天', 15, 0),
(5, 2, 275, 'https://s1.miniso.cn/bsimg/ec/public/images/97/4a/974a9edd79251cc1ec6d4af0d97f5484.png', '包邮', '小动物系列公仔零钱包(款式随机发货)', '¥15', '可爱装载 行走的表情包', 15, 0),
(5, 2, 276, 'https://s1.miniso.cn/bsimg/ec/public/images/59/24/5924bd083c7050eeb1aa151bc174b876.png', '', '优品运动双肩包', '¥49.9', '小巧轻盈，便于携带', 15, 0),
(6, 1, 277, 'https://s1.miniso.cn/bsimg/ec/public/images/c4/da/c4da32aebaa539245a6c8f5ef9f3c078.png', '包邮', '青蛙灭蚊灯 型号：MS-W1604', '¥39.9', '蚊子捕手 远离叮咬', 15, 0),
(6, 1, 278, 'https://s1.miniso.cn/bsimg/ec/public/images/77/5d/775dd82d3c6403fe8928823c87282eb1.png', '包邮', '1200mAh沁人香薰手持风扇', '¥39.9', '口袋香薰扇  开启不一样的夏日体验', 15, 0),
(6, 1, 279, 'https://s1.miniso.cn/bsimg/ec/public/images/00/3c/003c72c4aa62ef307dbec83eac1ecce1.png', '包邮', '直卷发器', '¥49.9', '卷直两用  恒温保护秀发', 15, 0),
(6, 1, 280, 'https://s1.miniso.cn/bsimg/ec/public/images/95/58/95588d708ca1fb090bc10e8f28469c6c.png', '包邮', '简约圆形电暖器', '¥79.9', '冬日里的温暖小确幸', 15, 0),
(6, 1, 281, 'https://s1.miniso.cn/bsimg/ec/public/images/66/de/66defa47c72a2e7894ef696014c33f21.png', '包邮', '雪峰香薰机', '¥69.9', '香雾缭绕 惬意闲适', 15, 0),
(6, 1, 282, 'https://s1.miniso.cn/bsimg/ec/public/images/8c/4d/8c4ddbd40ac2c5bf074d4d5ef4f7193a.jpg?x-oss-process=style/high', '包邮', '简约款电热蚊香液套装', '¥15', '家中常备 赶跑扰人蚊子    ', 15, 0),
(6, 1, 283, 'https://s1.miniso.cn/bsimg/ec/public/images/18/b3/18b359b03231b6977fb31b02ff47c043.jpg?x-oss-process=style/high', '包邮', 'Sanrio系列电视机造型小夜灯 型号：IM-7017', '¥25', '萌趣来袭 点亮你的平凡之夜', 15, 0),
(6, 1, 284, 'https://s1.miniso.cn/bsimg/ec/public/images/f9/d1/f9d1c7c880224e0921059f4130fa6b27.png', '包邮', '800mAh动物造型口袋风扇', '¥39.9', '3档风速，轻柔低噪，小巧轻盈，折叠便携', 15, 0),
(6, 1, 285, 'https://s1.miniso.cn/bsimg/ec/public/images/f7/b6/f7b60d8beebe985a8cdeac7c86631245.jpg?x-oss-process=style/high', '包邮', '迷你卷发棒 PR5031（英规）', '¥59.9', '迷你随身 做自己的发型师', 15, 0),
(6, 1, 286, 'https://s1.miniso.cn/bsimg/ec/public/images/6d/49/6d49ab02f927b0a95098fec6f2ad28f0.png', '包邮', '1800mAh夏日元素旋转风扇', '¥49.9', '手持吹风 随处迎来的清凉', 15, 0),
(6, 1, 287, 'https://s1.miniso.cn/bsimg/ec/public/images/f8/37/f8374e2dc5019d0c04135a01c46a5dc7.png', '包邮', '猪小萌LED灯', '¥49.9', '给怕黑的你一抹温暖', 15, 0),
(6, 1, 288, 'https://s1.miniso.cn/bsimg/ec/public/images/70/3d/703d648ef0b7f98a4345db748f3e28d3.png', '包邮', '圆折灯', '¥59.9', '一盏能折起来的小台灯', 15, 1),
(6, 1, 289, 'https://s1.miniso.cn/bsimg/ec/public/images/b4/c0/b4c057fb2fc60e5415292b4a645d8393.png', '包邮', '节能环保小夜灯', '¥19.9', '光线柔和，圆润小巧', 15, 0),
(6, 2, 290, 'https://s1.miniso.cn/bsimg/ec/public/images/73/46/7346c92c93f9d154206acd1cd0261d70.jpg?x-oss-process=style/high', '包邮', '小巧便携10000毫安移动电源 hd', '¥59.9', '大容量移动充，助你满格出行', 15, 0),
(6, 2, 291, 'https://s1.miniso.cn/bsimg/ec/public/images/e2/04/e2043a92125c09a44b318c5e263ee909.png', '', '补光灯鱼眼+微距手机镜头', '¥29.9', '三级补光，轻松拍大片', 15, 0),
(6, 2, 292, 'https://s1.miniso.cn/bsimg/ec/public/images/be/d1/bed196b55d487fa2d4825ced8bbaa828.jpg?x-oss-process=style/high', '包邮', '经典真无线蓝牙耳机K66 Pro', '¥99.9', '无限束缚 自由聆听 ', 15, 0),
(6, 2, 293, 'https://s1.miniso.cn/bsimg/ec/public/images/cd/04/cd04048b46b4a808dcd4bf0e6e8c269a.png', '包邮', '双USB小钢炮车载充电器', '¥25', '智能车载快充  充电快人一步', 15, 1),
(6, 2, 294, 'https://s1.miniso.cn/bsimg/ec/public/images/ca/89/ca89c125ec4492502124ef67cedae7cd.png', '包邮', '方糖语音便携蓝牙音箱', '¥99.9', 'AI解放双手  听音乐', 15, 0),
(6, 2, 295, 'https://s1.miniso.cn/bsimg/ec/public/images/27/5b/275b70b35e205e8e73b841f1d2ed8b20.png', '包邮', '静电吸盘吃鸡极速压枪游戏手柄 型号：SC-B06A', '¥29.9', '一体手柄 快乐吃鸡', 15, 0),
(6, 2, 296, 'https://s1.miniso.cn/bsimg/ec/public/images/ea/77/ea779771de34ccda0d02a723146b729f.png', '包邮', '极速传感吃鸡辅助神器 型号：SC-DJ23', '¥10', '四指联动 快人一步', 15, 0),
(6, 2, 297, 'https://s1.miniso.cn/bsimg/ec/public/images/09/c3/09c3e1f98ae9dcfa82a4d31cd030854c.png', '包邮', '1米液态硅胶Micro数据线3A', '¥15', '充电快速 不易缠绕', 15, 0),
(6, 2, 298, 'https://s1.miniso.cn/bsimg/ec/public/images/8f/b9/8fb9741a3ee8df6dee3aaa9ca2a585fa.jpg?x-oss-process=style/high', '包邮', '5A快充Type-C数据线2米', '¥19.9', '5A大电流  更快满电', 15, 0),
(6, 2, 299, 'https://s1.miniso.cn/bsimg/ec/public/images/91/22/91227bcd5c4fc5659001c621f77cfbdf.png', '包邮', 'TYPE-C双向充电5000mAh迷你移动电源', '¥39.9', '出行带我 不愁没电', 15, 0),
(6, 2, 300, 'https://s1.miniso.cn/bsimg/ec/public/images/d1/4d/d14db6a4011a104d872d10d6a4cc713f.png', '包邮', '1米闪电快充数据线2.4A', '¥39.9', '一线快充 告别低电量焦虑', 15, 0),
(6, 2, 301, 'https://s1.miniso.cn/bsimg/ec/public/images/9f/d8/9fd8a10a05e4d97a51b35f375f55eacf.png', '包邮', 'Mini太空舱全金属音乐耳机', '¥49.9', '全金属音腔 还原好声音', 15, 0),
(6, 2, 302, 'https://s1.miniso.cn/bsimg/ec/public/images/5c/ad/5cad2edd35d4711b5d4e8dce530390cd.png', '包邮', '经典半入耳式运动蓝牙耳机 型号：TB13', '¥39.9', '用心倾听，立体清晰原音', 15, 0),
(6, 2, 303, 'https://s1.miniso.cn/bsimg/ec/public/images/b6/71/b671af2a024e5cda90b33f0844388179.png', '包邮', '胶囊音乐耳机', '¥19.9', '聆听绵长细腻音质', 15, 0),
(6, 2, 304, 'https://s1.miniso.cn/bsimg/ec/public/images/90/7a/907af29a257d5dc6e74d6c39667e3244.jpg?x-oss-process=style/high', '包邮', '无线挂脖运动蓝牙耳机  型号：B59', '¥79.9', '倾听时光，感受音乐之美', 15, 0),
(6, 2, 305, 'https://s1.miniso.cn/bsimg/ec/public/images/59/da/59dac70a8cc0114ecd703d137f3dadc6.png', '', '电视机台灯', '¥39.9', '怀旧复古，实用照明', 15, 0),
(6, 2, 306, 'https://s1.miniso.cn/bsimg/ec/public/images/69/ef/69efa43c6153e2ea1e021742f9118861.png', '包邮', '手机自拍美颜打光神器', '¥25', '柔光护眼 ，美颜补光', 15, 0),
(6, 2, 307, 'https://s1.miniso.cn/bsimg/ec/public/images/19/1c/191c001abe27c9c6138eebd308ecff92.png', '包邮', 'MINISO经典音乐耳机', '¥15', '高清立体环绕音质', 15, 0),
(6, 2, 308, 'https://s1.miniso.cn/bsimg/ec/public/images/ea/ae/eaaeb4f9e0ea69dbc34ad7844ab562ff.png', '包邮', '真无线运动蓝牙耳机Q5', '¥139.9', '双耳无线连接，立体音效', 15, 0),
(6, 2, 309, 'https://s1.miniso.cn/bsimg/ec/public/images/31/52/315240051336634f7a48d0645f69d669.png', '', '双动圈HIFI音乐耳机', '¥99.9', '4核驱动，HiFi音质', 15, 1),
(7, 1, 310, 'https://s1.miniso.cn/bsimg/ec/public/images/a3/ca/a3ca24424888d9dc317b2f320247d998.png', '包邮', '小情绪系列便捷五折防晒伞', '¥39.9', '不怕太阳晒 每日好心情', 15, 0),
(7, 1, 311, 'https://s1.miniso.cn/bsimg/ec/public/images/68/c1/68c16505c97bcbcb30b1a67d368339dd.png', '包邮', '纯色防晒伞晴雨伞', '¥29.9', '猜不透的天气 抵挡到的晴雨', 15, 0),
(7, 1, 312, 'https://s1.miniso.cn/bsimg/ec/public/images/99/23/9923dc8342ba42943c0c9dc2d4d14a1b.png', '包邮', '经典素色节节收三折自开收伞', '¥49.9', '一键自动开合 做你的保护伞', 15, 0),
(7, 1, 313, 'https://s1.miniso.cn/bsimg/ec/public/images/14/b2/14b2a381d3c338f59bfa904033616ef0.jpg?x-oss-process=style/high', '包邮', '超轻防UV马卡龙三折防晒伞', '¥49.9', 'UPF50+防晒指数   “罩”顾你的出行', 15, 0),
(7, 1, 314, 'https://s1.miniso.cn/bsimg/ec/public/images/f4/25/f425521291cab80c851ea5e9aed21cbd.png', '包邮', '海风系列简约五折晴雨两用防晒伞', '¥49.9', '小巧便携，晴雨两用', 15, 0),
(7, 1, 315, 'https://s1.miniso.cn/bsimg/ec/public/images/99/a5/99a58002a1c1aa2de9fbea01fb265b29.png', '', '玻纤系列漫记星空晴雨两用防晒伞', '¥39.9', '星空伞布，清新美观', 15, 0),
(7, 2, 316, 'https://s1.miniso.cn/bsimg/ec/public/images/ff/20/ff200e3fd5f287c20f4dd88d119df424.jpg?x-oss-process=style/high', '', '切片猪肉脯', '¥10', '让美味游走在唇齿之间', 15, 0),
(7, 2, 317, 'https://s1.miniso.cn/bsimg/ec/public/images/7c/ff/7cff62f35833c003dd723bfbe88b3466.jpg?x-oss-process=style/high', '包邮', 'MINISO X陶陶居月饼礼盒', '¥59', '中华老字号的匠心与执着', 15, 0),
(7, 2, 318, 'https://s1.miniso.cn/bsimg/ec/public/images/c2/44/c244fcb87fbf3c2e8519b42c5fc65ae0.png', '', '泡椒凤爪110g', '¥10', '酸辣入味 美味在舌尖绽放', 15, 0),
(7, 2, 319, 'https://s1.miniso.cn/bsimg/ec/public/images/80/52/8052ef12596aac221297953328c4d1bd.jpg?x-oss-process=style/high', '包邮', '兰花豆（牛肉味）', '¥10', '粒粒饱满 酥脆可口', 15, 0),
(7, 2, 320, 'https://s1.miniso.cn/bsimg/ec/public/images/2b/c2/2bc2cae5b42000b641b105a5d953354c.jpg?x-oss-process=style/high', '包邮', 'MINISO酱卤牛肉(五香味)72g*3包装', '¥45', '多汁入味，细嫩易嚼', 15, 0);
INSERT INTO `mc_goods` (`bid`, `cid`, `goods_id`, `goods_img`, `goods_tag`, `goods_title`, `goods_price`, `goods_desc`, `goods_number`, `ishot`) VALUES
(7, 2, 321, 'https://s1.miniso.cn/bsimg/ec/public/images/18/56/1856b5ecd1b222ba33f5a49393a1f6b8.jpg?x-oss-process=style/high', '包邮', '港式鱼蛋 *5包装', '¥50', '饱满肉质  齿留“鱼”香', 15, 0),
(7, 2, 322, 'https://s1.miniso.cn/bsimg/ec/public/images/90/74/907455933bb044d886b92e31c865cad5.jpg?x-oss-process=style/high', '包邮', '蒟蒻果冻蜜（桃口味&荔枝口味）*3包装', '¥30', '入口即化，爽滑口感', 15, 0),
(7, 2, 323, 'https://s1.miniso.cn/bsimg/ec/public/images/60/f0/60f0a166b446f39c2e41cc108ec97d7a.png', '包邮', '美国酸樱桃干', '¥10', '入口软糯  酸甜暴击', 15, 0),
(7, 2, 324, 'https://s1.miniso.cn/bsimg/ec/public/images/6d/f7/6df7f93e87900b88b59ae3a22ebaf93e.png', '包邮', '绿箭无糖薄荷糖', '¥10', '一粒清新  步步亲近', 15, 0),
(7, 2, 325, 'https://s1.miniso.cn/bsimg/ec/public/images/42/d3/42d39b31df2371e67b3a9b44cad9d93c.jpg?x-oss-process=style/high', '包邮', '港式鱼蛋6包装', '¥60', '网红热卖鱼蛋 地道弹牙', 15, 0),
(7, 2, 326, 'https://s1.miniso.cn/bsimg/ec/public/images/0a/83/0a8327ab98e7cfaba129e7110b1361ef.jpg?x-oss-process=style/high', '包邮', '香辣小黄鱼80g', '¥10', '一口鲜醇美味 酥脆嫩滑', 15, 0),
(7, 2, 327, 'https://s1.miniso.cn/bsimg/ec/public/images/f6/f3/f6f38c99476baac403825ce7005852c8.png', '包邮', '鹌鹑蛋', '¥10', '醇香美味  一口两颗', 15, 0),
(7, 2, 328, 'https://s1.miniso.cn/bsimg/ec/public/images/78/33/78330013971e218242b42cf5ec4c0f0e.png', '包邮', '咸蛋黄鱼皮脆48g', '¥10', '咸香酥脆入里  别具“酱”心', 15, 1),
(7, 2, 329, 'https://s1.miniso.cn/bsimg/ec/public/images/78/a6/78a64ed1957f2273ba6132cb4a5f6ae1.png', '包邮', '香辣鱿鱼仔85g', '¥15', '粒粒饱满 来自深海的美味', 15, 0),
(7, 2, 330, 'https://s1.miniso.cn/bsimg/ec/public/images/42/87/42872d058d067c3c10396d59032850ad.png', '包邮', '蒟蒻果冻 蜜桃口味 荔枝口味', '¥10', '清新果香  入口即化', 15, 0),
(7, 2, 331, 'https://s1.miniso.cn/bsimg/ec/public/images/91/6a/916a5f11a970ae94b59ef17fabff01a0.png', '包邮', '什锦话梅', '¥10', '一次尝遍5钟“梅”好滋味', 15, 0),
(7, 2, 332, 'https://s1.miniso.cn/bsimg/ec/public/images/d7/28/d728dad03facdbc37562e0589750c94b.png', '包邮', '酵素山楂果肉', '¥10', '酸甜美味  营养开胃', 15, 0),
(7, 2, 333, 'https://s1.miniso.cn/bsimg/ec/public/images/6e/d9/6ed9030852c55b3025d75451381a4ff3.png', '包邮', '金针菇', '¥10', '美味不可“菇”负', 15, 0),
(7, 2, 334, 'https://s1.miniso.cn/bsimg/ec/public/images/73/de/73ded3535161fa6a2b35c0a3b7ab6ea5.png', '包邮', '特选草莓干*5包装', '¥50', '酸甜入心  胜似初恋', 15, 0),
(7, 2, 335, 'https://s1.miniso.cn/bsimg/ec/public/images/3a/57/3a5784d6492d075154ea796c311db2e5.png', '包邮', '川香牛肉', '¥15', '牛气川蜀风味', 15, 0),
(7, 2, 336, 'https://s1.miniso.cn/bsimg/ec/public/images/c6/18/c618955d774dc3d80d62393efe354c60.jpg?x-oss-process=style/high', '', 'MINISO 泰国芒果干85g /3包装', '¥30', '泰国进口优质芒果', 15, 0),
(7, 2, 337, 'https://s1.miniso.cn/bsimg/ec/public/images/48/3c/483c525bf87baee8fc3a1a3a8840b19a.png', '包邮', '港式鱼蛋', '¥10', '饱满肉质  齿留“鱼”香', 15, 0),
(7, 2, 338, 'https://s1.miniso.cn/bsimg/ec/public/images/d4/2a/d42ac0c029d2680c9e56bddad10fbae9.png', '', 'MINISO香辣牛蹄筋75g', '¥15', '卤香浓郁，爽辣弹牙', 15, 0),
(7, 2, 339, 'https://s1.miniso.cn/bsimg/ec/public/images/ce/17/ce17726e58a93d7cbefecc9af33b3072.png', '包邮', '酷露露芒果味软糖', '¥10', '果香醇正，浓香芒果味', 15, 0),
(7, 2, 340, 'https://s1.miniso.cn/bsimg/ec/public/images/74/6e/746e3c250ff2861e2e242a7dbea8c308.png', '', '菠萝干', '¥10', '香甜浓郁小菠萝', 15, 0),
(7, 2, 341, 'https://s1.miniso.cn/bsimg/ec/public/images/cf/62/cf62fe586a97a9d5788224946046dd06.png', '包邮', '辣味海带', '¥10', '爽脆鲜辣美味海带', 15, 0),
(7, 2, 342, 'https://s1.miniso.cn/bsimg/ec/public/images/cf/58/cf5888e4f06dc647016568eeba5dd7c8.jpg?x-oss-process=style/high', '', '悠哈-酷露露桃子味软糖', '¥10', '软糯香甜', 15, 0),
(7, 2, 343, 'https://s1.miniso.cn/bsimg/ec/public/images/93/36/93364e9cc83944cffdfdbcfa06e7bdc1.jpg?x-oss-process=style/high', '包邮', 'MINISO百香果干（新旧包装随机发货）', '¥10', '健康美味', 15, 0),
(7, 2, 344, 'https://s1.miniso.cn/bsimg/ec/public/images/1e/03/1e03cae8b6ddafb7db9c12e26ab3040d.png', '包邮', 'MINISO混合菇类60g（新旧包装随机发货）', '¥10', '', 15, 0),
(7, 2, 345, 'https://s1.miniso.cn/bsimg/ec/public/images/07/44/0744638fa3b436aefefb749afc86fb5d.png', '', 'MINISO牛板筋（新旧包装随机发货）', '¥10', '优良原料，鲜嫩劲道', 15, 0),
(7, 2, 346, 'https://s1.miniso.cn/bsimg/ec/public/images/cc/bc/ccbc13dc67c1fcf901a0590d0e39e345.png', '包邮', 'Miniso酱卤牛肉', '¥15', '多汁入味，细嫩易嚼', 15, 0),
(7, 2, 347, 'https://s1.miniso.cn/bsimg/ec/public/images/35/3e/353e3f40ac8ca14ee051bd20d69afacb.png', '', '沙巴哇菠萝蜜干果75g', '¥10', '低温真空脱水制成', 15, 0),
(7, 2, 348, 'https://s1.miniso.cn/bsimg/ec/public/images/9b/87/9b872e6b1690f90e50a280638d30669e.png', '包邮', 'MINISO黄桃干90g（新旧包装随机发货）', '¥10', '优选鲜黄桃，鲜嫩多汁', 15, 0),
(7, 2, 349, 'https://s1.miniso.cn/bsimg/ec/public/images/7a/02/7a022c34be33d6560267e711f8ea5d9c.png', '', '悠哈CORORO葡萄味软糖', '¥9.9', '葡萄味/白葡萄味', 15, 0),
(7, 2, 350, 'https://s1.miniso.cn/bsimg/ec/public/images/d7/5a/d75a36fbd9a7fc8c4aff32f19fdae71a.png', '包邮', 'MINISO智利无核葡萄干', '¥10', '智利原产无核葡萄', 15, 0),
(7, 2, 351, 'https://s1.miniso.cn/bsimg/ec/public/images/bb/29/bb295507bfbcb8e3b0641b4bf4905bf6.png', '', 'MINISO泰国芒果干', '¥10', '泰国进口优质芒果', 15, 0),
(7, 2, 352, 'https://s1.miniso.cn/bsimg/ec/public/images/86/40/864064b96362f44e51f24d3d3cdab9ab.jpg?x-oss-process=style/high', '包邮', 'MINISO炭秘烤肠', '¥10', '甄选好材料，后腿原肉制作', 15, 0),
(7, 2, 353, 'https://s1.miniso.cn/bsimg/ec/public/images/5c/7e/5c7e4fd97be04fbbc802c93cf08e2b06.png', '包邮', 'MINISO特选草莓干88g', '¥10', '颗粒饱满，果香浓郁', 15, 0),
(7, 3, 354, 'https://s1.miniso.cn/bsimg/ec/public/images/0f/3a/0f3a97e6b6d369a849fc324b297351ba.jpg?x-oss-process=style/high', '包邮', '糖果荧光笔*3支', '¥10', '标记划线好帮手', 15, 0),
(7, 3, 355, 'https://s1.miniso.cn/bsimg/ec/public/images/a5/15/a5152eb4bc29c197ecf53cd85873600e.jpg?x-oss-process=style/high', '包邮', '立式便签30页（混）', '¥10', '可爱手绘风', 15, 0),
(7, 3, 356, 'https://s1.miniso.cn/bsimg/ec/public/images/33/bb/33bb810f4cea9f4d987f3760f0939fa9.png', '包邮', '童趣精品卡套装', '¥10', '书写心意  传递祝福', 15, 0),
(7, 3, 357, 'https://s1.miniso.cn/bsimg/ec/public/images/e6/e2/e6e21cb027cb3ebdb68c6b3b20654397.jpg?x-oss-process=style/high', '包邮', '水晶头荧光笔/3支', '¥10', '重点标记 复习好帮手', 15, 0),
(7, 3, 358, 'https://s1.miniso.cn/bsimg/ec/public/images/14/65/1465250ce86d9b7cf0ed2663205ae640.png', '', '快干系列中性笔0.5mm', '¥3.5', '出水流畅，美观舒适', 15, 0),
(7, 3, 359, 'https://s1.miniso.cn/bsimg/ec/public/images/00/6f/006f623cd89fc1ee6efe87cd0e2a644e.png', '', '六角白杆粉橙中性笔0.5mm', '¥3.5', '创意简约签字笔', 15, 0),
(7, 3, 360, 'https://s1.miniso.cn/bsimg/ec/public/images/8f/49/8f490d239c7984e8b26c4b2e27e950f2.png', '', '透明六色圆珠笔0.7mm', '¥3.5', '书写流畅，出水均匀', 15, 0),
(7, 3, 361, 'https://s1.miniso.cn/bsimg/ec/public/images/b2/d6/b2d6f275c17fcbfe7c9df514b0e939d4.png', '', '拔帽钢丝夹中性笔0.5mm', '¥3.5', '书写流畅，出水均匀', 15, 0),
(7, 3, 362, 'https://s1.miniso.cn/bsimg/ec/public/images/23/cd/23cd02fbb65af317f5df760541eb4e36.png', '', 'MINISO pluspens水性纤维笔', '¥3.3', '书写流畅，出水均匀', 15, 0),
(7, 4, 363, 'https://s1.miniso.cn/bsimg/ec/public/images/c2/c2/c2c274d48f2f470042fc9f3d0e704941.jpg?x-oss-process=style/high', '', '汪汪队立大功卡通形象授权-扭蛋混装2', '¥15', '幸运来齐，等你集齐', 15, 0),
(7, 4, 364, 'https://s1.miniso.cn/bsimg/ec/public/images/93/86/9386e9c3c0e0ad7e0e6a24bf54b351be.jpg?x-oss-process=style/high', '包邮', ' LADY FLORA(芙儿小姐）系列第一代盲盒摆件（混）', '¥29.9', '奇萌泰迪，可爱来袭', 15, 0),
(7, 4, 365, 'https://s1.miniso.cn/bsimg/ec/public/images/cc/42/cc42e8d8e08facb6254ae14f123ea13c.jpg?x-oss-process=style/high', '包邮', '萌力星球TUTU车系列盲盒徽章（混）', '¥15', '表情包“野萌君”，欢乐来袭', 15, 0),
(7, 4, 366, 'https://s1.miniso.cn/bsimg/ec/public/images/68/25/68255969ddc48908b960a6100b9f95c4.jpg?x-oss-process=style/high', '包邮', '樱桃小丸子海洋系列盲盒徽章（混）', '¥15', '海洋萌物，小丸子来袭', 15, 0),
(7, 4, 367, 'https://s1.miniso.cn/bsimg/ec/public/images/2f/a1/2fa165cc8044d635b3fa172934c17c96.jpg?x-oss-process=style/high', '包邮', '长草颜团子系列飞行动物盲盒摆件(混)', '¥29.9', '长草颜团子，可爱登场', 15, 0),
(7, 4, 368, 'https://s1.miniso.cn/bsimg/ec/public/images/f1/7b/f17b57d7e97a280c7b5f3cbd175ec8a5.jpg?x-oss-process=style/high', '包邮', '领巾狗狗系列盲盒摆件', '¥29', '定格汪星人的可爱瞬间', 15, 0),
(7, 4, 369, 'https://s1.miniso.cn/bsimg/ec/public/images/d8/70/d87029ca7a37696086bb1122bae10d8c.png', '包邮', 'My Melody 和风系列盲盒徽章（混）', '¥15', '美乐蒂与朋友们得和服秀', 15, 0),
(7, 4, 370, 'https://s1.miniso.cn/bsimg/ec/public/images/45/b2/45b2e2396635afcae212f10fdf055e9d.jpg?x-oss-process=style/high', '包邮', '樱桃小丸子猫咪系列盲盒徽章（混）', '¥15', '喵呜~前方有萌猫出没', 15, 0),
(7, 4, 371, 'https://s1.miniso.cn/bsimg/ec/public/images/e2/54/e254877d5007fa5a74fd5460eadd2d69.png', '包邮', 'LADY FLORA(芙儿小姐）系列第二代盲盒摆件（混）', '¥29.9', '奇萌泰迪，可爱来袭', 15, 0),
(7, 4, 372, 'https://s1.miniso.cn/bsimg/ec/public/images/74/a4/74a416638da423661f74f8815ce462f5.jpg?x-oss-process=style/high', '包邮', '小猪B-BO系列-趣味盲袋公仔（混）', '¥25', '', 15, 0),
(7, 4, 373, 'https://s1.miniso.cn/bsimg/ec/public/images/e6/a2/e6a25e62ba3f1f4bce1638517bd07cf1.jpg?x-oss-process=style/high', '包邮', '小猪B-BO运势系列-盲盒毛绒挂件（混）', '¥19.9', '细腻绒面，一物两用', 15, 0),
(7, 4, 374, 'https://s1.miniso.cn/bsimg/ec/public/images/b8/08/b8088b529ad422c7f4754bac941228cd.jpg?x-oss-process=style/high', '包邮', '小猪B-BO亲亲系列-盲袋公仔（混）', '¥29.9', '细腻绒面，柔软蓬松', 15, 0),
(7, 4, 375, 'https://s1.miniso.cn/bsimg/ec/public/images/db/b4/dbb4e6f95e7526ebf82990ec5e6da48e.jpg?x-oss-process=style/high', '包邮', '小熊維尼家族系列盲盒摆件（混）', '¥29.9', '为喜爱维尼家族的你精心准备', 15, 0),
(7, 4, 376, 'https://s1.miniso.cn/bsimg/ec/public/images/08/a4/08a4eaa577619d65d3de15974132deb8.jpg?x-oss-process=style/high', '包邮', '汪汪队立大功炫彩沙画（款式随机发货 ）', '¥15', '艺术熏陶 从色彩开始', 15, 0),
(7, 4, 377, 'https://s1.miniso.cn/bsimg/ec/public/images/db/cb/dbcb3105c1a57eb9e2b6c7978f09d9c2.jpg?x-oss-process=style/high', '包邮', '小猪B-BO系列-盲袋毛绒挂件', '¥10', '细腻绒面  趣味盲抽', 15, 0),
(7, 4, 378, 'https://s1.miniso.cn/bsimg/ec/public/images/4c/06/4c0672f4d60d7f46a2ae2022a262c19c.png', '包邮', '小猪B-BO系列-趴姿毛绒公仔', '¥79.9', '细腻绒面 柔软蓬松', 15, 0),
(7, 4, 379, 'https://s1.miniso.cn/bsimg/ec/public/images/30/c8/30c8f9d4f8693400b9002dc2d77303e2.png', '', '软萌趴姿猫咪公仔', '¥29.9', '肉肉小萌猫 治愈小时光', 15, 0),
(7, 4, 380, 'https://s1.miniso.cn/bsimg/ec/public/images/ed/67/ed67f1d6ba09cedcecfcabbef9533a33.png', '包邮', '可爱卡通牛油果公仔', '¥29.9', '软萌兼施 只想抱着睡    ', 15, 1),
(7, 4, 381, 'https://s1.miniso.cn/bsimg/ec/public/images/cc/71/cc718cf098e51f9daa5378efe127584d.png', '包邮', '合金变形 KY308LC 变形机器人玩具', '¥49.9', '酷炫双形态 满足大小童心', 15, 1),
(7, 4, 382, 'https://s1.miniso.cn/bsimg/ec/public/images/74/4d/744de09a024ee2a7360d3bdb2289feac.png', '包邮', '趣味拼接玩具积木 M1412', '¥10', '汽车飞机趣味拼 集齐6款变机器人', 15, 0),
(7, 4, 383, 'https://s1.miniso.cn/bsimg/ec/public/images/31/45/3145bfbf04211c761fe44fd935c5541a.jpg?x-oss-process=style/high', '', '铠甲勇士积木人偶盲盒（款式随机发货）', '¥10', '一抽二拼三玩 尽享三重乐趣', 15, 0),
(7, 4, 384, 'https://s1.miniso.cn/bsimg/ec/public/images/9c/70/9c706457259bec4e4faeec73f8801b70.png', '包邮', '静态塑胶玩具泡泡玩具（款式随机发货）', '¥10', '轻轻挥动 畅玩泡泡', 15, 0),
(7, 4, 385, 'https://s1.miniso.cn/bsimg/ec/public/images/4a/8f/4a8f7128dd7f351398440b3363bbba41.png', '包邮', '液晶涂鸦手绘画板', '¥29.9', '放飞想象 随心描绘', 15, 0),
(7, 4, 386, 'https://s1.miniso.cn/bsimg/ec/public/images/04/b2/04b234bc030167a5caf071a1032febbe.png', '', '萌趣柯基趴姿公仔', '¥29.9', '桃心屁屁  可爱值“爆表”', 15, 0),
(7, 4, 387, 'https://s1.miniso.cn/bsimg/ec/public/images/1d/c0/1dc0d2cdff897c7bfdc753a888047ac9.png', '包邮', '反反车盲盒 463915（款式随机发货）', '¥12.5', '惊喜变形 乐趣翻倍', 15, 1),
(7, 4, 388, 'https://s1.miniso.cn/bsimg/ec/public/images/c9/ca/c9ca6bd7e64df2bf9dc1d5062e7a6225.png', '包邮', '机器人积木 M3102', '¥15', '三重形态 三倍快乐', 15, 0),
(7, 4, 389, 'https://s1.miniso.cn/bsimg/ec/public/images/a9/b6/a9b609830fcc8c07a82d870b37134fc0.png', '包邮', '永生花毛绒钥匙扣挂件（颜色随机发货）', '¥15', '随身佩戴 个性出行', 15, 0),
(7, 4, 390, 'https://s1.miniso.cn/bsimg/ec/public/images/a2/72/a272fd37c41f0d6b30ee91e42840548d.png', '包邮', '儿童环保益智拼装玩具积木 M4101', '¥15', '', 15, 0),
(7, 4, 391, 'https://s1.miniso.cn/bsimg/ec/public/images/2e/53/2e5372856b30299aee57c03c8c17476f.png', '', '积木玩具-QL1488/单个(款式随机发货)', '¥5', '一款八套 组装大场景', 15, 0),
(7, 4, 392, 'https://s1.miniso.cn/bsimg/ec/public/images/53/fc/53fcfaac701905d6222f776bcccec50e.png', '', '海洋系列-鲨鱼公仔', '¥29.9', '柔软亲肤  萌趣爱宠', 15, 0),
(7, 4, 393, 'https://s1.miniso.cn/bsimg/ec/public/images/f4/1c/f41c341d7ab41d281f4e52e54f7a98b0.png', '包邮', '旋力大套装', '¥35', '旋力竞技，双重对战', 15, 0),
(7, 4, 394, 'https://s1.miniso.cn/bsimg/ec/public/images/03/9b/039be2dd6f8d27b142296dcf6b2a5b4f.png', '包邮', 'ALiPET长脚宠物玩具', '¥29.9', '耐咬橡胶、内置发声器', 15, 0),
(7, 4, 395, 'https://s1.miniso.cn/bsimg/ec/public/images/83/c7/83c725b772cb224df63e0de080fa16ce.png', '包邮', '三色棉绳结', '¥10', '精制棉线 结实耐咬', 15, 0),
(7, 4, 396, 'https://s1.miniso.cn/bsimg/ec/public/images/26/86/268696b2d6eeee5ffa5c864b8fe3aa68.png', '', 'ALiPET橡胶哨子刺圆球  ', '¥29.9', '环保健康，富有弹性', 15, 0),
(7, 4, 397, 'https://s1.miniso.cn/bsimg/ec/public/images/5a/b0/5ab0646ed81298b1c2bbfb641134717d.png', '', 'ALiPET漏食器 ', '¥29.9', '玩耍解闷，清洁牙齿', 15, 0),
(7, 4, 398, 'https://s1.miniso.cn/bsimg/ec/public/images/95/21/95212afec9240cdb5a6ca24adfa72f75.png', '', '100水球加1个打气筒', '¥10', '新颖益智，质量保证', 15, 0),
(7, 4, 399, 'https://s1.miniso.cn/bsimg/ec/public/images/5a/77/5a7713cf9fd3370e81f9bb7833c217d0.png', '包邮', '变形合金车', '¥25', '随意变形，耐摔耐磨', 15, 1),
(7, 4, 400, 'https://s1.miniso.cn/bsimg/ec/public/images/cd/52/cd522b1bd9a010ffc5d62197dd3c2a65.png', '', '柴犬系列毛绒公仔', '¥39.9', '回弹性好，耐用不变形', 15, 0),
(8, 1, 401, 'https://s1.miniso.cn/bsimg/ec/public/images/3e/87/3e87e4d099aef22700040873d2f9a94f.png', '', '粉红豹-时尚款毛绒公仔(款式随机发货)', '¥49.9', '幽默时尚粉豹子 让你每天都“粉”开心', 15, 0),
(8, 1, 402, 'https://s1.miniso.cn/bsimg/ec/public/images/88/e7/88e724b6b8956b77e9454dde1d3e9d37.png', '', 'Miniso粉红豹新款彩页精装本180页', '¥15', '纸张柔和，纸面平滑', 15, 0),
(8, 2, 403, 'https://s1.miniso.cn/bsimg/ec/public/images/33/f5/33f5feed5148e61a8bb17b3c1bd379d9.png', '包邮', '芝麻街可爱小刺绣针织帽', '¥39.9', '随心搭配  玩转街潮', 15, 0),
(8, 2, 404, 'https://s1.miniso.cn/bsimg/ec/public/images/29/0c/290c29da790d1b25df2f756215699e70.png', '包邮', '芝麻街异型小线圈本2本装', '¥15', '趣味携带  记录重要节点', 15, 0),
(8, 2, 405, 'https://s1.miniso.cn/bsimg/ec/public/images/84/30/843060bb3e73958f3d93aa32f48d48d0.png', '', '芝麻街拔盖钢丝夹中性笔0.5mm', '¥2.5', '出水均匀，不易断墨', 15, 0),
(8, 2, 406, 'https://s1.miniso.cn/bsimg/ec/public/images/a4/47/a447952e5f4290fcd04f1e7416e5b65c.png', '包邮', '芝麻街学院风双肩包', '¥49.9', '芝麻街正品授权，大容量收纳', 15, 0),
(8, 2, 407, 'https://s1.miniso.cn/bsimg/ec/public/images/6e/11/6e11f681b96874d15a0cd499835b005b.png', '包邮', '芝麻街-嘉年华迷你10000毫安移动电源', '¥89.9', '满满正能量', 15, 0),
(8, 2, 408, 'https://s1.miniso.cn/bsimg/ec/public/images/80/d5/80d5bca7945c21588444d0a808e1d03c.png', '包邮', '正版芝麻街手偶', '¥35', '趣味哄宝，欢乐逗趣', 15, 0),
(8, 2, 409, 'https://s1.miniso.cn/bsimg/ec/public/images/5a/39/5a390b6ce61bca3abc9714635de2d9a1.png', '包邮', '正版芝麻街暖手枕', '¥39.9', '午睡的软萌陪伴', 15, 0),
(8, 2, 410, 'https://s1.miniso.cn/bsimg/ec/public/images/50/9a/509a9c978ee26f107fdff4dbd27a0fa2.png', '包邮', '正版芝麻街系列抱枕', '¥39.9', '时尚简约 午睡休闲', 15, 0),
(8, 3, 411, 'https://s1.miniso.cn/bsimg/ec/public/images/1c/9d/1c9d6a5a61d1fea4ef253fefe36ef3f0.png', '', '花木兰系列购物袋', '¥25', '实用大容量 装下你的出行物品', 15, 0),
(8, 3, 412, 'https://s1.miniso.cn/bsimg/ec/public/images/8a/2e/8a2e8f21a674da1099813d9dae3252da.png', '包邮', '花木兰系列清爽洁肤湿巾', '¥15', '保湿滋润 多用清洁', 15, 0),
(8, 4, 413, 'https://s1.miniso.cn/bsimg/ec/public/images/bb/eb/bbeb61afdcf1f05f3d8552567198225d.png', '包邮', '1200Ah可爱小飞机桌面风扇', '¥49.9', '开起小飞机 清爽瞬间到家', 15, 0),
(8, 4, 414, 'https://s1.miniso.cn/bsimg/ec/public/images/7a/31/7a3180cab45da4beb14a8f081e6b8ccf.png', '包邮', 'Sanrio-Characters手机桌面支架', '¥19.9', '横竖都能放，娱乐学习解放双手', 15, 0),
(8, 4, 415, 'https://s1.miniso.cn/bsimg/ec/public/images/e0/8a/e08acf85bbe2f31bbda58e08bb8885d3.png', '包邮', 'Hello Kitty刺绣购物袋', '¥29.9', '出街必备，实用大容量', 15, 0),
(8, 4, 416, 'https://s1.miniso.cn/bsimg/ec/public/images/1f/08/1f0856fcb65d7c62c9ab80a0d90c92aa.png', '包邮', 'Hello Kitty8片装暖身系列暖身贴*3包装', '¥29.9', '暖暖萌萌 做你的小确幸', 15, 0),
(8, 4, 417, 'https://s1.miniso.cn/bsimg/ec/public/images/f9/da/f9daca652acee2df62221d7a1dde13e9.png', '包邮', 'Sanrio Characters 5片装蒸汽眼罩', '¥15', '恒温发热 舒缓疲劳', 15, 0),
(8, 4, 418, 'https://s1.miniso.cn/bsimg/ec/public/images/2d/3e/2d3e8cb2c7f82a65f4406245b1b9a99f.jpg?x-oss-process=style/high', '包邮', 'Hello Kitty 45周年限量款蒸汽眼罩（12片）', '¥29.9', '可爱集结 宠护眼眸', 15, 0),
(8, 4, 419, 'https://s1.miniso.cn/bsimg/ec/public/images/a6/d1/a6d17fd3dca75eb6c8f2938414b7f16f.png', '包邮', 'Hello Kitty8片装暖身系列暖身贴', '¥10', '轻薄小巧，多用护理', 15, 0),
(8, 4, 420, 'https://s1.miniso.cn/bsimg/ec/public/images/81/b7/81b7c622f023853cdb8e4f63ceeff458.jpg?x-oss-process=style/high', '', 'Sanrio Characters泡棉贴(混)', '¥5', '', 15, 0),
(8, 4, 421, 'https://s1.miniso.cn/bsimg/ec/public/images/26/59/2659102a45dd6d84c748baed75132664.png', '', 'Sanrio Characters水晶贴(混)', '¥5', '', 15, 0),
(8, 4, 422, 'https://s1.miniso.cn/bsimg/ec/public/images/10/9a/109a442ca72820347efb2340497f7539.png', '包邮', 'Gudetama系列化妆包', '¥15', '化妆收纳，整洁有序', 15, 0),
(8, 4, 423, 'https://s1.miniso.cn/bsimg/ec/public/images/3a/95/3a95f96b6f11488d2a75cd3639fccef0.png', '', 'Hello Kitty手机气囊支架两只装', '¥15', '可搭配车载支架', 15, 0),
(8, 4, 424, 'https://s1.miniso.cn/bsimg/ec/public/images/32/89/32892e7af990b294d5c7d972ecc4ad3a.png', '包邮', 'Hello-Kitty-iPhone-3D碳纤维钢化前后膜', '¥29.9', '高清高透，全屏覆盖', 15, 0),
(8, 4, 425, 'https://s1.miniso.cn/bsimg/ec/public/images/dc/81/dc81f536ab9fc86c4dfc9e7a6c18320a.png', '包邮', 'Sanrio Characters系列毛绒双肩包', '¥39.9', '柔软毛绒，造型可爱', 15, 0),
(8, 4, 426, 'https://s1.miniso.cn/bsimg/ec/public/images/56/ac/56acc62b01fbb96e0abdbdfee82a8940.png', '', 'Sanrio Characters创意毛绒按摩捶', '¥15', '可爱经典，时尚实用', 15, 0),
(8, 5, 427, 'https://s1.miniso.cn/bsimg/ec/public/images/70/08/700809ec77fd1cda667355216428a89c.png', '', 'PANTONE系列 杜邦纸笔袋', '¥10', '杜邦纸/210D涤纶里布', 15, 0),
(8, 5, 428, 'https://s1.miniso.cn/bsimg/ec/public/images/b5/db/b5db3a38958cd2dc829498c2105c6a04.png', '包邮', 'PANTONEA6线圈本60页2本装', '¥15', '螺旋线圈，牢固不易松动', 15, 0),
(8, 5, 429, 'https://s1.miniso.cn/bsimg/ec/public/images/03/28/03281961588291c0ef1bf609bde5cac9.png', '', 'PANTONE系列PU精装本80页', '¥19.9', 'PU皮革 耐磨性好', 15, 0),
(8, 5, 430, 'https://s1.miniso.cn/bsimg/ec/public/images/df/23/df23efd8dba2016136fd601ba517c5d1.png', '包邮', 'PANTONE系列-带支架手机保护壳', '¥25', '轻薄坚韧，不易摔坏', 15, 0),
(8, 5, 431, 'https://s1.miniso.cn/bsimg/ec/public/images/74/fa/74fa0548326e211e041092b61b55f523.png', '', 'PANTONE系列手机壳', '¥10', '周全保护，久用如新', 15, 0),
(8, 5, 432, 'https://s1.miniso.cn/bsimg/ec/public/images/a3/7a/a37a6c1edca0fe5d77f1256e0f656385.png', '包邮', 'PANTONE系列-3D 碳纤维手感钢化玻璃前后膜', '¥29.9', '高清高透，裸机触感', 15, 0),
(8, 6, 433, 'https://s1.miniso.cn/bsimg/ec/public/images/87/70/87706a1a24861024e032fe77f36c317e.png', '', 'Kakao Friends趣味气垫BB霜', '¥49.9', '轻薄水润，精致妆容', 15, 0),
(8, 6, 434, 'https://s1.miniso.cn/bsimg/ec/public/images/22/16/2216b418f6239cce339c4e2b164f7d33.png', '包邮', 'Kakao Friends 晒精灵舒缓倍护防晒乳SPF36 PA', '¥29.9', '多重防护，轻松抵抗日晒伤害', 15, 0),
(8, 7, 435, 'https://s1.miniso.cn/bsimg/ec/public/images/90/ea/90ea3d562d7aeb748ad35ccaf8d9c479.jpg?x-oss-process=style/high', '包邮', '米奇系列1200mAh挂绳迷你风扇 MS-L2933', '¥39.9', '闪片流沙装饰 个性满满', 15, 0),
(8, 7, 436, 'https://s1.miniso.cn/bsimg/ec/public/images/39/54/395408b3b79322ab526c3feacadaab78.png', '', '米奇系列活性益生菌软糖', '¥10', '菌菌联手  健康添活力', 15, 0),
(8, 7, 437, 'https://s1.miniso.cn/bsimg/ec/public/images/0b/25/0b253f8b5aedcc0d2228d2ab07145e50.png', '包邮', '迪士尼系列公仔手机斜挎包', '¥29.9', '轻便趣味 小包出行', 15, 0),
(8, 7, 438, 'https://s1.miniso.cn/bsimg/ec/public/images/7b/9f/7b9f44238965d82e90316d6bdae8e621.jpg?x-oss-process=style/high', '包邮', '迪士尼TsumTsum迷你公仔盲盒', '¥69', '幸运盲抽 随时萌翻', 15, 0),
(8, 7, 439, 'https://s1.miniso.cn/bsimg/ec/public/images/21/49/214928795e56bbde9729ea7206276d95.png', '包邮', '米奇系列趣味装饰毛绒玩具', '¥25', '灵动可爱 给你欢乐童年', 15, 0),
(8, 7, 440, 'https://s1.miniso.cn/bsimg/ec/public/images/fc/a6/fca69f8983ecc34f92d5073b7582a5a2.png', '包邮', '米奇系列经典坐姿公仔', '¥39.9', '温暖环抱  舒服入睡', 15, 0),
(8, 7, 441, 'https://s1.miniso.cn/bsimg/ec/public/images/0f/1c/0f1c2493a5dc8c4466d66ed3af481005.png', '包邮', '米奇系列5000毫安移动电源', '¥59.9', '掌上迷你 轻便随行', 15, 0),
(8, 7, 442, 'https://s1.miniso.cn/bsimg/ec/public/images/8f/bb/8fbb20964fcac5d39a991d71b86606a5.png', '包邮', '经典米奇-唐老鸭系列趣味抱枕', '¥39.9', '温暖环抱 舒服入睡', 15, 0),
(8, 7, 443, 'https://s1.miniso.cn/bsimg/ec/public/images/9a/04/9a046bf50e2de393f2e368de47488675.png', '包邮', '米奇系列休闲斜挎腰包', '¥59.9', '趣味斜挎 演绎街头潮流', 15, 0),
(8, 7, 444, 'https://s1.miniso.cn/bsimg/ec/public/images/fd/c4/fdc439be65b31ea35e0e26a59197f9ff.png', '包邮', '米奇系列纯色收纳桶收纳筐', '¥25', '贴心设计 多用途收纳', 15, 0),
(8, 7, 445, 'https://s1.miniso.cn/bsimg/ec/public/images/7d/ca/7dcaa94067c3bbc5e91067ce7d28760b.png', '包邮', '米奇系列口罩（黑色）', '¥15', '防尘挡风  守护呼吸', 15, 0),
(8, 7, 446, 'https://s1.miniso.cn/bsimg/ec/public/images/92/2d/922dbb573b73c6a41eeca1d1a32a3bfe.png', '包邮', '米奇系列1米安卓数据线（颜色随机发货）', '¥19.9', '可爱爆表 给无趣生活充充电', 15, 0),
(8, 7, 447, 'https://s1.miniso.cn/bsimg/ec/public/images/0f/cd/0fcd8db353e7f13eb909d23041e4f098.png', '包邮', '米奇系列经典图标棒球帽', '¥39.9', '经典红黑 潮范百搭款', 15, 0),
(8, 7, 448, 'https://s1.miniso.cn/bsimg/ec/public/images/8c/e6/8ce62dfdb24977a31db91ecd8c997bcd.png', '包邮', '米奇系列记忆棉护颈U枕', '¥39.9', '软萌治愈 护你好眠', 15, 0),
(8, 7, 449, 'https://s1.miniso.cn/bsimg/ec/public/images/a1/e6/a1e6e8bbf761e42b6232cc4db0144734.png', '包邮', '迪士尼系列限量版大号坐姿唐老鸭公仔', '¥99.9', '加大的可爱 每天都要“加油鸭”', 15, 0),
(8, 7, 450, 'https://s1.miniso.cn/bsimg/ec/public/images/93/29/9329391ba45d375181b2ecb180e078b2.png', '', '米奇系列“鼠于你”蓝色礼盒', '¥99.9', '喜气满盒  只“鼠于你”', 15, 0),
(8, 7, 451, 'https://s1.miniso.cn/bsimg/ec/public/images/b0/c3/b0c3b86cdb1fb055be18de5f4abc981d.png', '包邮', '迪士尼系列暖手枕', '¥35', '冬天手冷常备', 15, 0),
(8, 7, 452, 'https://s1.miniso.cn/bsimg/ec/public/images/fa/6a/fa6a599b7a0c0af55f3f20e7a41fdb29.png', '包邮', '迪士尼系列香水30ml', '¥39.9', '自信从容 做自己人生的公主', 15, 0),
(8, 7, 453, 'https://s1.miniso.cn/bsimg/ec/public/images/5a/e1/5ae1cbed22c23ef8c509dfba9d22a552.png', '包邮', '米奇铁盒拼图100片', '¥15', '片片趣味拼接', 15, 0),
(8, 7, 454, 'https://s1.miniso.cn/bsimg/ec/public/images/7f/cf/7fcf262cae51fab0d0ce02c164623972.png', '包邮', '米奇系列3D立体拼图', '¥19.9', '好玩好看', 15, 0),
(8, 7, 455, 'https://s1.miniso.cn/bsimg/ec/public/images/58/77/58778dd66be4222b7aff6aaae288166e.png', '包邮', '米奇系列行李牌', '¥15', '标记专属所有   标记旅途好心情', 15, 0),
(8, 7, 456, 'https://s1.miniso.cn/bsimg/ec/public/images/3c/43/3c43a7665f60e28a397fae28b16e3d2e.png', '包邮', '米奇系列Q版儿童背包', '¥59.9', '萌宝潮童出行包', 15, 0),
(8, 7, 457, 'https://s1.miniso.cn/bsimg/ec/public/images/59/b7/59b7b1fa88228c4b8cdd771f2d1ce704.png', '包邮', '迪士尼-小飞象记忆棉护颈U枕', '¥39.9', '软萌治愈 护你好眠', 15, 0),
(8, 8, 458, 'https://s1.miniso.cn/bsimg/ec/public/images/da/ab/daabbf9605ff35fa0fe11161a9088864.png', '包邮', '冰雪奇缘系列闪片流砂手机壳', '¥29.9', '星辉闪烁  流动的冰雪世界', 15, 0),
(8, 8, 459, 'https://s1.miniso.cn/bsimg/ec/public/images/33/76/337626cea7100288bd2aa26909b6643e.png', '包邮', '公主系列鼓励印章（冰雪奇缘）', '¥10', '多彩迷你印章  给孩子的奖励', 15, 0),
(8, 8, 460, 'https://s1.miniso.cn/bsimg/ec/public/images/73/11/73118df5e7ec4dcc04a95d45698d393f.png', '包邮', '冰雪奇缘印章', '¥10', '迷你印章随心印', 15, 0),
(8, 8, 461, 'https://s1.miniso.cn/bsimg/ec/public/images/f8/7f/f87ff988b1dcdb036f2a945591118a78.png', '包邮', '冰雪奇缘系列香水', '¥39.9', '自信从容， 做自己的公主', 15, 0),
(8, 8, 462, 'https://s1.miniso.cn/bsimg/ec/public/images/b9/9e/b99e3be2d86bdf1def0bb8125c5164d7.png', '包邮', '冰雪奇缘系列2可湿水手帕纸（18包）', '¥15', '三层柔韧细腻 照顾你的日常', 15, 0);

-- --------------------------------------------------------

--
-- 表的结构 `mc_nav`
--

CREATE TABLE `mc_nav` (
  `id` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mc_nav`
--

INSERT INTO `mc_nav` (`id`, `bid`, `cid`, `name`, `img`) VALUES
(0, 0, NULL, '首页', NULL),
(1, 0, NULL, '居家', 'https://s1.miniso.cn/bsimg/ec/public/images/6e/97/6e97d8d0ce5f0f0c352a896f21da5150.jpg?x-oss-process=style/high'),
(2, 0, NULL, '餐厨', 'https://s1.miniso.cn/bsimg/ec/public/images/7e/03/7e036339b50bcfb18c426308f02b5f87.jpg?x-oss-process=style/high'),
(3, 0, NULL, '服装', 'https://s1.miniso.cn/bsimg/ec/public/images/a2/29/a22922d252a5d8c65c07066c4d729fd5.jpg?x-oss-process=style/high'),
(4, 0, NULL, '美护', 'https://s1.miniso.cn/bsimg/ec/public/images/46/c5/46c5fe6699b2a5617cca51830f5f7b17.jpg?x-oss-process=style/high'),
(5, 0, NULL, '出行', 'https://s1.miniso.cn/bsimg/ec/public/images/c9/14/c914dd24441c2915cfdb20857568f3bd.jpg?x-oss-process=style/high'),
(6, 0, NULL, '电器', 'https://s1.miniso.cn/bsimg/ec/public/images/8e/a1/8ea1e32e93300f6950c56b7e1ce6567c.jpg?x-oss-process=style/high'),
(7, 0, NULL, '杂货', 'https://s1.miniso.cn/bsimg/ec/public/images/0e/ec/0eeceb8db62da7c6d2c28f850e34cddb.jpg?x-oss-process=style/high'),
(8, 0, NULL, '系列', 'https://s1.miniso.cn/bsimg/ec/public/images/61/5e/615ea654e1e4a101176b30aad10f56c4.jpg?x-oss-process=style/high'),
(10, 1, 1, '拖鞋', 'https://s1.miniso.cn/bsimg/ec/public/images/e8/77/e8774700c28a9bd652fcd2a932cd89cb.png'),
(11, 1, 2, '清洁保鲜', 'https://s1.miniso.cn/bsimg/ec/public/images/7d/17/7d17d26d75b30d2399327cbdc844e803.png'),
(12, 1, 3, '家饰', 'https://s1.miniso.cn/bsimg/ec/public/images/3d/6d/3d6d3e4cbd7dbba4be986ce7b2bc6b37.png'),
(13, 1, 4, '收纳', 'https://s1.miniso.cn/bsimg/ec/public/images/30/82/30826bdc5bd0d6a03e443d3f0e9e92fa.png'),
(14, 1, 5, '浴室用品', 'https://s1.miniso.cn/bsimg/ec/public/images/23/e9/23e95cd68ee4ddc09a960f9356655c9f.png'),
(15, 1, 6, '床品', 'https://s1.miniso.cn/bsimg/ec/public/images/74/b2/74b2962babf2484953ceccc2d0afa0f9.png'),
(16, 2, 1, '餐具', 'https://s1.miniso.cn/bsimg/ec/public/images/5a/29/5a2982231560ac1a2bb6bc93ff69f390.png'),
(17, 2, 2, '杯壶', 'https://s1.miniso.cn/bsimg/ec/public/images/ca/3a/ca3aca05172fcb5b9f0c1fd3acf6546c.png'),
(18, 2, 3, '功能厨具', 'https://s1.miniso.cn/bsimg/ec/public/images/5f/58/5f58f1406c0495dcdc706ac69530dcba.png'),
(19, 3, 1, '内衣', 'https://s1.miniso.cn/bsimg/ec/public/images/4e/f2/4ef214b4d837f76d029e237c753bce5c.png'),
(20, 3, 2, '袜子', 'https://s1.miniso.cn/bsimg/ec/public/images/e6/cc/e6cc448cfbf9f9710b89b3800e5047a7.png'),
(21, 3, 3, '内裤', 'https://s1.miniso.cn/bsimg/ec/public/images/33/df/33dfee385249917f6f11907a986cc3f0.png'),
(22, 3, 4, '配饰', 'https://s1.miniso.cn/bsimg/ec/public/images/32/c8/32c85c60ca62bc31c8426223857aac5d.png'),
(23, 3, 5, '运动服饰', 'https://s1.miniso.cn/bsimg/ec/public/images/a2/62/a262d33b41f5349dc4c8477db9309ab6.png'),
(24, 3, 6, 'T恤', 'https://s1.miniso.cn/bsimg/ec/public/images/de/ca/deca7090242243346ff945524f96de82.png'),
(25, 3, 7, '丝袜', 'https://s1.miniso.cn/bsimg/ec/public/images/6b/9f/6b9f7eda29a6ad0fb5f8f90deab61c27.png'),
(26, 4, 1, '美妆', 'https://s1.miniso.cn/bsimg/ec/public/images/d3/ba/d3bab8cad77b7b2182921a60be4bdfff.png'),
(27, 4, 2, '身体护理', 'https://s1.miniso.cn/bsimg/ec/public/images/ca/e0/cae04bde18981a7d1d2445417c179e0c.png'),
(28, 4, 3, '护肤品', 'https://s1.miniso.cn/bsimg/ec/public/images/80/1f/801f6c2e5e55f1be770e7447996e5243.png'),
(29, 4, 4, '口腔护理', 'https://s1.miniso.cn/bsimg/ec/public/images/01/9b/019b25cfce32eba0e105d43d8d00716a.png'),
(30, 4, 5, '洗发护发', 'https://s1.miniso.cn/bsimg/ec/public/images/ff/ff/ffff95659fd8e6a927dfc7bb75d0f8f8.png'),
(31, 4, 6, '美护工具', 'https://s1.miniso.cn/bsimg/ec/public/images/1f/d1/1fd1716bbdd74ed25266cf6a1c9b73b6.png'),
(32, 5, 1, '旅行用品', 'https://s1.miniso.cn/bsimg/ec/public/images/2f/2a/2f2a172c62799a95994a79dd4f53cf57.png'),
(33, 5, 2, '箱包', 'https://s1.miniso.cn/bsimg/ec/public/images/ba/d1/bad1705e6c2e70b27d41ce599bf76a52.png'),
(34, 6, 1, '生活电器', 'https://s1.miniso.cn/bsimg/ec/public/images/47/85/4785ed6cca6bf5c3ab9cc2bd7bc8d6cd.png'),
(35, 6, 2, '数码', 'https://s1.miniso.cn/bsimg/ec/public/images/9e/c0/9ec0640fbf4112a48ded4689656f2be5.png'),
(36, 7, 1, '雨具', 'https://s1.miniso.cn/bsimg/ec/public/images/07/33/0733f76d2e222b46bbf772c5edac4c19.png'),
(37, 7, 2, '零食', 'https://s1.miniso.cn/bsimg/ec/public/images/3c/7a/3c7a578f0f7e3f06bd8dedce7b234c3c.png'),
(38, 7, 3, '文具', 'https://s1.miniso.cn/bsimg/ec/public/images/c0/9e/c09eacd07920ad6a51c0a4da71d69686.png'),
(39, 7, 4, '玩具', 'https://s1.miniso.cn/bsimg/ec/public/images/a2/a4/a2a4389f38f0d45149befe95958ae060.png'),
(40, 8, 1, '粉红豹', 'https://s1.miniso.cn/bsimg/ec/public/images/12/5c/125cbbb8c10f3da24b6b084a1cf80369.png'),
(41, 8, 8, '冰雪奇缘', 'https://s1.miniso.cn/bsimg/ec/public/images/71/96/7196b0759b2efcb25e31678390c75e37.png'),
(42, 8, 2, '芝麻街', 'https://s1.miniso.cn/bsimg/ec/public/images/e4/11/e411368e474a52c0b8ff0981465e9e1e.png'),
(43, 8, 3, '花木兰', 'https://s1.miniso.cn/bsimg/ec/public/images/07/35/07352da0977009c762aabbe3396274d4.png'),
(44, 8, 4, '三丽鸥', 'https://s1.miniso.cn/bsimg/ec/public/images/26/4c/264ca8101bcbfc1b2d1a108485e99302.png'),
(45, 8, 5, '潘通', 'https://s1.miniso.cn/bsimg/ec/public/images/d9/20/d920997f7bcf7be9044cee4e77fd8a8d.png'),
(46, 8, 6, 'Kakao Friends', 'https://s1.miniso.cn/bsimg/ec/public/images/b1/a1/b1a15dafbc59a7b0f031cc65535796bf.png'),
(47, 8, 7, '迪士尼', 'https://s1.miniso.cn/bsimg/ec/public/images/41/92/41929e464e0cb4b86a6a9a48894504af.png'),
(48, 8, 9, '裸熊', 'https://s1.miniso.cn/bsimg/ec/public/images/85/cf/85cf4ffcb0de9b549323803fd4c00faf.png'),
(9, 9, 0, '新品', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'id',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'abc', '123456'),
(2, '', ''),
(3, '55', '5895'),
(4, 'DASD', 'DASDASD'),
(5, 'ewt', 'qree'),
(6, 'sehrs', 'xghxd'),
(7, 'xhgf', 'fxj'),
(8, 'ere', 'wre'),
(9, 'sdfdfg', 'gjhk');

--
-- 转储表的索引
--

--
-- 表的索引 `mc_banner`
--
ALTER TABLE `mc_banner`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `mc_goods`
--
ALTER TABLE `mc_goods`
  ADD PRIMARY KEY (`goods_id`);

--
-- 表的索引 `mc_nav`
--
ALTER TABLE `mc_nav`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mc_banner`
--
ALTER TABLE `mc_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `mc_goods`
--
ALTER TABLE `mc_goods`
  MODIFY `goods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- 使用表AUTO_INCREMENT `mc_nav`
--
ALTER TABLE `mc_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
