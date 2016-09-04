-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-09-04 13:22:24
-- 服务器版本： 5.5.42-log
-- PHP Version: 5.6.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_admin`
--

CREATE TABLE IF NOT EXISTS `think_admin` (
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `lastip` varchar(64) NOT NULL,
  `lasttime` int(11) NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_admin`
--

INSERT INTO `think_admin` (`aid`, `uid`, `lastip`, `lasttime`, `info`) VALUES
(1, 1, '36.149.70.171', 1472912827, '[{"lastip":"127.0.0.1","lasttime":1469604074},{"lastip":"127.0.0.1","lasttime":1469604078},{"lastip":"127.0.0.1","lasttime":1469604126},{"lastip":"127.0.0.1","lasttime":1470059871},{"lastip":"127.0.0.1","lasttime":1470096574},{"lastip":"127.0.0.1","lasttime":1470105595},{"lastip":"36.149.197.200","lasttime":1470107254},{"lastip":"115.199.105.85","lasttime":1470107949},{"lastip":"36.149.197.200","lasttime":1470130736},{"lastip":"36.149.197.58","lasttime":1470230533},{"lastip":"36.149.70.171","lasttime":1472912827}]');

-- --------------------------------------------------------

--
-- 表的结构 `think_board`
--

CREATE TABLE IF NOT EXISTS `think_board` (
  `bid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_board`
--

INSERT INTO `think_board` (`bid`, `aid`, `uid`, `name`, `time`) VALUES
(13, 1, 1, '灌水', 1470107271),
(14, 1, 1, '电影', 1470107282),
(15, 1, 1, '技巧.分享', 1470107300),
(16, 1, 1, '哲♂学', 1472912902);

-- --------------------------------------------------------

--
-- 表的结构 `think_love`
--

CREATE TABLE IF NOT EXISTS `think_love` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `ul` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_message`
--

CREATE TABLE IF NOT EXISTS `think_message` (
  `mid` int(11) NOT NULL,
  `start_uid` int(11) NOT NULL,
  `connect_uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `retime` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `remind` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_post`
--

CREATE TABLE IF NOT EXISTS `think_post` (
  `pid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `retime` int(11) NOT NULL,
  `love` int(11) NOT NULL,
  `unlove` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_post`
--

INSERT INTO `think_post` (`pid`, `bid`, `uid`, `name`, `title`, `text`, `time`, `retime`, `love`, `unlove`, `view`, `num`) VALUES
(29, 13, 1, '', '忙了一夜 感觉好困', '<p>感觉身体被掏空！！！！<img src="http://img.baidu.com/hi/jx2/j_0004.gif"/></p>', 1470107446, 1470134741, 0, 0, 39, 3),
(30, 13, 21, '', '悠久的翼', '<p>来战！prprprprprprpr！！！</p><p><img src="http://img.baidu.com/hi/jx2/j_0003.gif"/></p><p><img src="http://img.baidu.com/hi/jx2/j_0003.gif" style="white-space: normal;"/><img src="http://img.baidu.com/hi/jx2/j_0003.gif" style="white-space: normal;"/></p>', 1470108575, 1472965900, 0, 0, 35, 5),
(31, 14, 21, '', '来看看电影啦！', '<p><img src="/Uploads/image/20160802/1470130644101628.jpg" title="1470130644101628.jpg" alt="sf24_195.jpg"/></p>', 1470130648, 1470134792, 0, 0, 28, 1),
(32, 14, 1, '', '美好世界 女神 sexfriend', '<p><img src="/Uploads/image/20160802/1470136000131798.jpg" title="1470136000131798.jpg"/><img src="/Uploads/image/20160802/1470136000335419.jpg" style="" title="1470136000335419.jpg"/></p><p><br/></p>', 1470136009, 1472964305, 0, 0, 71, 4),
(33, 13, 21, '', '精灵球的玩法', '<p><img src="/Uploads/image/20160803/1470205229932084.gif" title="1470205229932084.gif" alt="3 - 1.gif"/></p><p><br/></p><p>如图 233</p>', 1470205245, 1470228112, 0, 0, 32, 3),
(34, 13, 1, '', '滴滴 开车啦', '<p><img src="/Uploads/image/20160803/1470233295590480.jpg" title="1470233295590480.jpg" alt="58148913_p0.jpg"/></p>', 1470233479, 1470238250, 0, 0, 31, 3),
(35, 13, 22, '', '你的名字', '<p><img src="/Uploads/image/20160803/1470238486125756.jpg" title="1470238486125756.jpg" alt="1449739002872.jpg"/></p><p><br/></p><p>就是那个随便截图就可以当壁纸的新海诚拍的！</p>', 1470238529, 1470302811, 0, 0, 33, 2),
(36, 13, 22, '', 'A站居然在施工中！', '喜闻乐见<img src="/Uploads/image/20160804/1470302782293764.png" title="1470302782293764.png" alt="ac.png"/><p><br/></p>', 1470302743, 1470469506, 0, 0, 32, 2),
(37, 15, 21, '', 'AutoCAD 2014 ', '<pre id="best-content-1725381446" accuse="aContent" class="best-text mb-10" style="margin-top: 0px; margin-bottom: 10px; padding: 0px; font-family: arial, &#39;courier new&#39;, courier, 宋体, monospace, &#39;Microsoft YaHei&#39;; white-space: pre-wrap; word-wrap: break-word; font-size: 14px; color: rgb(51, 51, 51); line-height: 24px; background-color: rgb(243, 255, 236);">CAD2014&nbsp;序列号：666-69696969&nbsp;密匙001F1</pre><p><br/></p>', 1470553168, 1472919703, 0, 0, 35, 4),
(38, 13, 1, '', '七夕啦！！', '<p><img src="/Uploads/image/20160809/1470678708885159.jpg" title="1470678708885159.jpg" alt="CpV74iOUAAEZ5F-.jpg"/></p><p>233</p>', 1470678721, 1472965321, 0, 0, 82, 30),
(39, 13, 1, '', '顺便水一帖', '<p>感觉 好困啊！！！<br/></p><p><br/></p><p><img src="/Uploads/image/20160903/1472908411450842.jpg" title="1472908411450842.jpg" alt="aa64034f78f0f73662d65d4d0c55b319ebc41355.jpg"/></p><p><br/></p><p><br/></p><p>不怎么想动！</p><p><br/></p><p><br/></p><p><img src="/Uploads/image/20160903/1472908447111805.png" title="1472908447111805.png" alt="20150428195945_rjxF4.thumb.700_0.png"/></p><p><br/></p>', 1472908459, 1472964248, 0, 0, 21, 6),
(40, 16, 1, '', '共产党宣言', '<h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">引言</h3><p>一个幽灵，共产主义的幽灵，在欧洲大陆徘徊。为了对这个幽灵进行神圣的围剿，旧欧洲的一切势力，教皇和沙皇、梅特涅和基佐、法国的激进派和德国的警察，都联合起来了。</p><p>有哪一个反对党不被它的当政的敌人骂为共产党呢？又有哪一个反对党不拿共产主义这个罪名去回敬更进步的反对党人和自己的反动敌人呢？</p><p>从这一事实中可以得出两个结论：</p><p>共产主义已经被欧洲的一切势力公认为一种势力；</p><p>现在是共产党人向全世界公开说明自己的观点、自己的目的、自己的意图并且拿党自己的宣言来反驳关于共产主义幽灵的神话的时候了。</p><p>为了这个目的，各国共产党人集会于伦敦，拟定了如下的宣言，用英文、法文、德文、意大利文、弗拉芒文和丹麦文公布于世。</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="2_2"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_2_2"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="资产者和无产者"></a></p><h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">资产者和无产者</h3><p>至今一切社会的历史都是阶级斗争的历史。</p><p>自由民和奴隶、贵族和平民、领主和农奴、行会师傅和帮工，一句话，压迫者和被压迫者，始终处于相互对立的地位，进行不断的、有时隐蔽有时公开的斗争，而每一次斗争的结局是整个社会受到革命改造或者斗争的各阶级同归于尽。</p><p>在过去的各个历史时代，我们几乎到处都可以看到社会完全划分为各个不同的等级，看到社会地位分成的多种多样的层次。在古罗马，有贵族、骑士、平民、奴隶，在中世纪，有封建主、臣仆、行会师傅、帮工、农奴，而且几乎在每一个阶级内部又有一些特殊的阶层。</p><p>从封建社会的灭亡中产生出来的现代资产阶级社会并没有消灭阶级对立。它只是用新的阶级、新的压迫条件、新的斗争形式代替了旧的。</p><p>但是，我们的时代，资产阶级时代，却有一个特点：它使阶级对立简单化了。整个社会日益分裂为两大敌对的阵营，分裂为两大相互直接对立的阶级：资产阶级和无产阶级。</p><p>从中世纪的农奴中产生了初期城市的城关市民；从这个市民等级中发展出最初的资产阶级分子。</p><p>美洲的发现、绕过非洲的航行，给新兴的资产阶级开辟了新天地。东印度和中国的市场、美洲的殖民化、对殖民地的贸易、交换手段和一般的商品的增加，使商业、航海业和工业空前高涨，因而使正在崩溃的封建社会内部的革命因素迅速发展。</p><p>以前那种封建的或行会的工业经营方式已经不能满足随着新市场的出现而增加的需求了。工场手工业代替了这种经营方式。行会师傅被工业的中间等级排挤掉了；各种行业组织之间的分工随着各个作坊内部的分工的出现而消失了。</p><p>但是，市场总是在扩大，需求总是在增加。甚至工场手工业也不再能满足需要了。于是，蒸汽和机器引起了工业生产的革命。现代大工业代替了工场手工业；工业中的百万富翁，一支一支产业大军的首领，现代资产者，代替了工业的中间等级。</p><p>大工业建立了由美洲的发现所准备好的世界市场。世界市场使商业、航海业和陆路交通得到了巨大的发展。这种发展又反过来促进了工业的扩展，同时，随着工业、商业、航海业和铁路的扩展，资产阶级也在同一程度上得到发展，增加自己的资本，把中世纪遗留下来的一切阶级都排挤到后面去。</p><p>由此可见，现代资产阶级本身是一个长期发展过程的产物，是生产方式和交换方式的一系列变革的产物。</p><p>资产阶级的这种发展的每一个阶段，都伴随着相应的政治上进展。它在封建主统治下是被压迫的等级，在公社里是武装的和自治的团体，在一些地方组成独立的城市共和国，在另一些地方组成君主国中的纳税的第三等级；后来，在工场手工业时期，它是等级制君主国或专制君主国中同贵族抗衡的势力，而且是大君主国的主要基础；最后，从大工业和世界市场建立的时候起，它在现代的代议制国家里夺得了独占的政治统治。现代的国家政权不过是管理整个资产阶级的共同事务的委员会罢了。</p><p>资产阶级在历史上曾经起过非常革命的作用。</p><p>资产阶级在它已经取得了统治的地方把一切封建的、宗法的和田园诗般的关系都破坏了。它无情地斩断了把人们束缚于天然尊长的形形色色的封建羁绊，它使人和人之间除了赤裸裸的利害关系，除了冷酷无情的“现金交易”，就再也没有任何别的联系了。它把宗教虔诚、骑士热忱、小市民伤感这些情感的神圣发作，淹没在利己主义打算的冰水之中。它把人的尊严变成了交换价值，用一种没有良心的贸易自由代替了无数特许的和自力挣得的自由。总而言之，它用公开的、无耻的、直接的、露骨的剥削代替了由宗教幻想和政治幻想掩盖着的剥削。</p><p>资产阶级抹去了一切向来受人尊崇和令人敬畏的职业的神圣光环。它把医生、律师、教士、诗人和学者变成了它出钱招雇的雇佣劳动者。</p><p>资产阶级撕下了罩在家庭关系上的温情脉脉的面纱，把这种关系变成了纯粹的金钱关系。</p><p>资产阶级揭示了，在中世纪深受反动派称许的那种人力的野蛮使用，是以极端怠惰作为相应补充的。它第一个证明了，人的活动能够取得什么样的成就。它创造了完全不同于埃及金字塔、罗马水道和哥特式教堂的奇迹；它完成了完全不同于民族大迁徙和十字军东征的远征。</p><p>资产阶级除非对生产工具，从而对生产关系，从而对全部社会关系不断地进行革命，否则就不能生存下去。反之，原封不动地保持旧的生产方式，却是过去的一切工业阶级生存的首要条件。生产的不断变革，一切社会状况不停的动荡，永远的不安定和变动，这就是资产阶级时代不同于过去一切时代的地方。一切固定的僵化的关系以及与之相适应的素被尊崇的观念和见解都被消除了，一切新形成的关系等不到固定下来就陈旧了。一切等级的和固定的东西都烟消云散了，一切神圣的东西都被亵渎了。人们终于不得不用冷静的眼光来看他们的生活地位、他们的相互关系。</p><p>不断扩大产品销路的需要，驱使资产阶级奔走于全球各地。它必须到处落户，到处创业，到处建立联系。</p><p>资产阶级，由于开拓了世界市场，使一切国家的生产和消费都成为世界性的了。使反动派大为惋惜的是，资产阶级挖掉了工业脚下的民族基础。古老的民族工业被消灭了，并且每天都还在被消灭。它们被新的工业排挤掉了，新的工业的建立已经成为一切文明民族的生命攸关的问题；这些工业所加工的，已经不是本地的原料，而是来自极其遥远的地区的原料；它们的产品不仅供本国消费，而且同时供世界各地消费。旧的、靠本国产品来满足的需要，被新的、要靠极其遥远的国家和地带的产品来满足的需要所代替了。过去那种地方的和民族的自给自足和闭关自守状态，被各民族的各方面的互相往来和各方面的互相依赖所代替了。物质的生产是如此，精神的生产也是如此。各民族的精神产品成了公共的财产。民族的片面性和局限性日益成为不可能，于是由许多种民族的和地方的文学形成了一种世界的文学。</p><p>资产阶级，由于一切生产工具的迅速改进，由于交通的极其便利，把一切民族甚至最野蛮的民族都卷到文明中来了。它的商品的低廉价格，是它用来摧毁一切万里长城、征服野蛮人最顽强的仇外心理的重炮。它迫使一切民族----如果它们不想灭亡的话----采用资产阶级的生产方式；它迫使它们在自己那里推行所谓文明，即变成资产者。一句话，它按照自己的面貌为自己创造出一个世界。</p><p>资产阶级使农村屈服于城市的统治。它创立了巨大的城市，使城市人口比农村人口大大增加起来，因而使很大一部分居民脱离了农村生活的愚昧状态。正象它使农村从属于城市一样，它使未开化和半开化的国家从属于文明的国家，使农民的民族从属于资产阶级的民族，使东方从属于西方。</p><p>资产阶级日甚一日地消灭生产资料、财产和人口的分散状态。它使人口密集起来，使生产资料集中起来，使财产聚集在少数人的手里。由此必然产生的结果就是政治的集中。各自独立的、几乎只有同盟关系的、各有不同利益、不同法律、不同政府、不同关税的各个地区，现在已经结合为一个拥有统一的政府、统一的法律、统一的民族阶级利益和统一的关税的统一的民族。</p><p>资产阶级在它的不到一百年的阶级统治中所创造的生产力，比过去一切世代创造的全部生产力还要多，还要大。自然力的征服，机器的采用，化学在工业和农业中的应用，轮船的行驶，铁路的通行，电报的使用，整个大陆的开垦，河川的通航，仿佛用法术从地下呼唤出来的大量人口，----过去哪一个世纪料想到在社会劳动里蕴藏有这样的生产力呢？</p><p>由此可见，资产阶级赖以形成的生产资料和交换手段，是在封建社会里造成的。在这些生产资料和交换手段发展的一定阶段上，封建社会的生产和交换在其中进行的关系，封建的农业和工场手工业组织，一句话，封建的所有制关系，就不再适应已经发展的生产力了。这种关系已经在阻碍生产而不是促进生产了。它变成了束缚生产的桎梏。它必须被炸毁，而且已经被炸毁了。</p><p>起而代之的是自由竞争以及与自由竞争相适应的社会制度和政治制度、资产阶级的经济统治和政治统治。</p><p>现在，我们眼前又进行着类似的运动。资产阶级的生产关系和交换关系，资产阶级的所有制关系，这个曾经仿佛用法术创造了如此庞大的生产资料和交换手段的现代资产阶级社会，现在像一个魔法师一样不能再支配自己用法术呼唤出来的魔鬼了。几十年来的工业和商业的历史，只不过是现代生产力反抗现代生产关系、反抗作为资产阶级及其统治的存在条件的所有制关系的历史。只要指出在周期性的重复中越来越危及整个资产阶级社会生存的商业危机就够了。在商业危机期间，总是不仅有很大一部分制成的产品被毁灭掉，而且有很大一部分已经造成的生产力被毁灭掉。在危机期间，发生一种在过去一切时代看来都好像是荒唐现象的社会瘟疫，即生产过剩的瘟疫。社会突然发现自己回到了一时的野蛮状态；仿佛是一次饥荒、一场普遍的毁灭性战争，使社会失去了全部生活资料；仿佛是工业和商业全被毁灭了，----这是什么缘故呢？因为社会上文明过度，生活资料太多，工业和商业太发达。社会所拥有的生产力已经不能再促进资产阶级文明和资产阶级所有制关系的发展；相反，生产力已经强大到这种关系所不能适应的地步，它已经受到这种关系的阻碍；而它一着手克服这种障碍，就使整个资产阶级社会陷入混乱，就使资产阶级所有制的存在受到威胁。资产阶级的关系已经太狭窄了，再容纳不了它本身所造成的财富了。——资产阶级用什么办法来克服这种危机呢？一方面不得不消灭大量生产力，另一方面夺取新的市场，更加彻底地利用旧的市场。这究竟是怎样的一种办法呢？这不过是资产阶级准备更全面更猛烈的危机的办法，不过是使防止危机的手段越来越少的办法。</p><p>资产阶级用来推翻封建制度的武器，现在却对准资产阶级自己了。</p><p>但是，资产阶级不仅锻造了置自身于死地的武器；它还产生了将要运用这种武器的人----现代的工人，即无产者。</p><p>当厂主对工人的剥削告一段落，工人领到了用现钱支付的工资的时候，马上就有资产阶级中的另一部分人----房东、小店主、当铺老板等等向他们扑来。</p><p>以前的中间等级的下层，即小工业家、小商人和小食利者，手工业者和农民----所有这些阶级都降落到无产阶级的队伍里来了，有的是因为他们的小资本不足以经营大工业，经不起较大资本家的竞争；有的是因为他们的手艺已经被新的生产方法弄得不值钱了。无产阶级的队伍就是这样从居民的所有阶级中得到补充的。</p><p>无产阶级经历了各个不同的发展阶段。它反对资产阶级的斗争是和它的存在同时开始的。</p><p>最初是单个的工人，然后是某一工厂的工人，然后是某一地方的某一劳动部门的工人，同直接剥削他们的单个资产者作斗争。他们不仅仅攻击资产阶级的生产关系，而且攻击生产工具本身；他们毁坏那些来竞争的外国商品，捣毁机器，烧毁工厂，力图恢复已经失去的中世纪工人的地位。</p><p>在这个阶段上，工人们还是分散在全国各地并为竞争所分裂的群众。工人的大规模集结，还不是他们自己联合的结果，而是资产阶级联合的结果，当时资产阶级为了达到自己的政治目的必须而且暂时还能够把整个无产阶级发动起来。因此，在这个阶段上，无产者不是同自己的敌人作斗争，而是同自己的敌人的敌人作斗争，即同专制君主制的残余、地主、非工业资产阶级和小资产者作斗争。因此，整个历史运动都集中在资产阶级手里；在这种条件下取得的每一个胜利都是资产阶级的胜利。</p><p>但是，随着工业的发展，无产阶级不仅人数增加了，而且它结合成更大的集体，它的力量日益增长，它越来越感觉到自己的力量。机器使劳动的差别越来越小，使工资几乎到处都降到同样低的水平，因而无产阶级内部的利益和生活状况也越来越趋于一致。资产者彼此间日益加剧的竞争以及由此引起的商业危机，使工人的工资越来越不稳定；机器的日益迅速的和继续不断的改良，使工人的整个生活地位越来越没有保障；单个工人和单个资产者之间的冲突越来越具有两个阶级的冲突的性质。工人开始成立反对资产者的同盟；他们联合起来保卫自己的工资。他们甚至建立了经常性的团体，以便为可能发生的反抗准备食品。有些地方，斗争爆发为起义。</p><p>工人有时也得到胜利，但这种胜利只是暂时的。他们斗争的真正成果并不是直接取得的成功，而是工人的越来越扩大的联合。这种联合由于大工业所造成的日益发达的交通工具而得到发展，这种交通工具把各地的工人彼此联系起来。只要有了这种联系，就能把许多性质相同的地方性的斗争汇合成全国性的斗争，汇合成阶级斗争。而一切阶级斗争都是政治斗争。中世纪的市民靠乡间小道需要几百年才能达到的联合，现代的无产者利用铁路只要几年就可以达到了。</p><p>无产者组织成为阶级，从而组织成为政党这件事，不断地由于工人的自相竞争而受到破坏。但是，这种组织总是重新产生，并且一次比一次更强大，更坚固，更有力。它利用资产阶级内部的分裂，迫使他们用法律形式承认工人的个别利益。英国的十小时工作日法案就是一个例子。</p><p>旧社会内部的所有冲突在许多方面都促进了无产阶级的发展。资产阶级处于不断的斗争中：最初反对贵族：后来反对同工业进步有利害冲突的那部分资产阶级；经常反对一切外国的资产阶级。在这一切斗争中，资产阶级都不得不向无产阶级呼吁，要求无产阶级援助，这样就把无产阶级卷进了政治运动。于是，资产阶级自己就把自己的教育因素即反对自身的武器给予了无产阶级。</p><p>其次，我们已经看到，工业的进步把统治阶级的整批成员抛到无产阶级队伍里去，或者至少也使他们的生活条件受到威胁。他们也给无产阶级带来了大量的教育因素。</p><p>中间等级，即小工业家、小商人、手工业者、农民，他们同资产阶级作斗争，都是为了维护他们这种中间等级的生存，以免于灭亡。所以，他们不是革命的，而是保守的。不仅如此，他们甚至是反动的，因为他们力图使历史的车轮倒转。如果说他们是革命的，那是鉴于他们行将转入无产阶级的队伍，这样，他们就不是维护他们目前的利益，而是维护他们将来的利益，他们就离开自己原来的立场，而站到无产阶级的立场上来。</p><p>流氓无产阶级是旧社会最下层中消极的腐化的部分，他们在一些地方也被无产阶级革命卷到运动里来，但是，由于他们的整个生活状况，他们更甘心于被人收买，去干反动的勾当。</p><p>在无产阶级的生活条件中，旧社会的生活条件已经被消灭了。无产者是没有财产的；他们和妻子儿女的关系同资产阶级的家庭关系再没有任何共同之处了；现代的工业劳动，现代的资本压迫，无论在英国或法国，无论在美国或德国，都是一样的，都使无产者失去了任何民族性。法律、道德、宗教，在他们看来全都是资产阶级偏见，隐藏在这些偏见后面的全都是资产阶级利益。</p><p>过去一切阶级在争得统治之后，总是使整个社会服从于它们发财致富的条件，企图以此来巩固它们已经获得的生活地位。无产者只有废除自己的现存的占有方式，从而废除全部现存的占有方式，才能取得社会生产力。无产者没有什么自己的东西必须加以保护，他们必须摧毁至今保护和保障私有财产的一切。</p><p>过去的一切运动都是少数人的或者为少数人谋利益的运动。无产阶级的运动是绝大多数人的、为绝大多数人谋利益的独立的运动。无产阶级，现今社会的最下层，如果不炸毁构成官方社会的整个上层，就不能抬起头来，挺起胸来。</p><p>如果不就内容而就形式来说，无产阶级反对资产阶级的斗争首先是一国范围内的斗争。每一个国家的无产阶级当然首先应该打倒本国的资产阶级。</p><p>在叙述无产阶级发展的最一般的阶段的时候，我们循序探讨了现存社会内部或多或少隐蔽着的国内战争，直到这个战争爆发为公开的革命，无产阶级用暴力推翻资产阶级而建立自己的统治。</p><p>我们已经看到，至今的一切社会都是建立在压迫阶级和被压迫阶级的对立之上的。但是，为了有可能压迫一个阶级，就必须保证这个阶级至少有能够勉强维持它的奴隶般的生存的条件。农奴曾经在农奴制度下挣扎到公社社员的地位，小资产者曾经在封建专制制度的束缚下挣扎到资产者的地位。现代的工人却相反，他们并不是随着工业的进步而上升，而是越来越降到本阶级的生存条件以下。工人变成赤贫者，贫困比人口和财富增长得还要快。由此可以明显地看出，资产阶级再不能做社会的统治阶级了，再不能把自己阶级的生存条件当做支配一切的规律强加于社会了。资产阶级不能统治下去了，因为它甚至不能保证自己的奴隶维持奴隶的生活，因为它不得不让自己的奴隶落到不能养活它反而要它来养活的地步。社会再不能在它统治下生活下去了，就是说，它的存在不再同社会相容了。</p><p>资产阶级生存和统治的根本条件，是财富在私人手里的积累，是资本的形成和增殖；资本的条件是雇佣劳动。雇佣劳动完全是建立在工人的自相竞争之上的。资产阶级无意中造成而又无力抵抗的工业进步，使工人通过结社而达到的革命联合代替了他们由于竞争而造成的分散状态。于是，随着大工业的发展，资产阶级赖以生产和占有产品的基础本身也就从它的脚下被挖掉了。它首先生产的是它自身的掘墓人。资产阶级的灭亡和无产阶级的胜利是同样不可避免的。</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="2_3"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_2_3"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="无产者和共产党人"></a></p><h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">无产者和共产党人</h3><p>共产党人同全体无产者的关系是怎样的呢？</p><p>共产党人不是同其他工人政党相对立的特殊政党。</p><p>他们没有任何同整个无产阶级的利益不同的利益。</p><p>他们不提出任何特殊的原则，用以塑造无产阶级的运动。</p><p>共产党人同其他无产阶级政党不同的地方只是：一方面，在各国无产者的斗争中，共产党人强调和坚持整个无产阶级共同的不分民族的利益；另一方面，在无产阶级和资产阶级的斗争所经历的各个发展阶段上，共产党人始终代表整个运动的利益。</p><p>因此，在实践方面，共产党人是各国工人政党中最坚决的、始终起推动作用的部分；在理论方面，他们胜过其余的无产阶级群众的地方在于他们了解无产阶级运动的条件、进程和一般结果。</p><p>共产党人的最近目的是和其他一切无产阶级政党的最近目的一样的：使无产阶级形成为阶级，推翻资产阶级的统治，由无产阶级夺取政权。</p><p>共产党人的理论原理，决不是以这个或那个世界改革家所发明或发现的思想、原则为根据的。</p><p>这些原理不过是现在的阶级斗争、我们眼前的历史运动的真实关系的一般表述。废除先前存在的所有制关系，并不是共产主义所独具的特征。</p><p>一切所有制关系都经历了经常的历史更替、经常的历史变更。</p><p>例如，法国革命废除了封建的所有制，代之以资产阶级的所有制。</p><p>共产主义的特征并不是要废除一般的所有制，而是要废除资产阶级的所有制。</p><p>但是，现代的资产阶级私有制是建立在阶级对立上面、建立在一些人对另一些人的剥削上面的产品生产和占有的最后而又最完备的表现。</p><p>从这个意义上说，共产党人可以把自己的理论概括为一句话：消灭私有制。</p><p>有人责备我们共产党人，说我们要消灭个人挣得的、自己劳动得来的财产，要消灭构成个人的一切自由、活动和独立的基础的财产。</p><p>好一个劳动得来的、自己挣得的、自己赚来的财产！你们说的是资产阶级所有制以前的那种小资产阶级的、小农的财产吗？那种财产用不着我们去消灭，工业的发展已经把它消灭了，而且每天都在消灭它。</p><p>或者，你们说的是现代的资产阶级的私有财产吧？</p><p>但是，难道雇佣劳动，无产者的劳动，会给无产者创造出财产来吗？没有的事。这种劳动所创造的是资本，即剥削雇佣劳动的财产，只有在不断产生出新的雇佣劳动来重新加以剥削的条件下才能增加起来的财产。现今的这种财产是在资本和雇佣劳动的对立中运动的。让我们来看看这种对立的两个方面吧。</p><p>做一个资本家，这就是说，他在生产中不仅占有一种纯粹个人的地位，而且占有一种社会的地位。资本是集体的产物，它只有通过社会许多成员的共同活动，而且归根到底只有通过社会全体成员的共同活动，才能运动起来。</p><p>因此，资本不是一种个人力量，而是一种社会力量。</p><p>因此，把资本变为公共的、属于社会全体成员的财产，这并不是把个人财产变为社会财产。这时所改变的只是财产的社会性质。它将失掉它的阶级性质。</p><p>现在，我们来看看雇佣劳动。</p><p>雇佣劳动的平均价格是最低限度的工资，即工人为维持其工人的生活所必需的生活资料的数额。因此，雇佣工人靠自己的劳动所占有的东西，只够勉强维持他的生命的再生产。我们决不打算消灭这种供直接生命再生产用的劳动产品的个人占有，这种占有并不会留下任何剩余的东西使人们有可能支配别人的劳动。我们要消灭的只是这种占有的可怜的性质，在这种占有下，工人仅仅为增殖资本而活着，只有在统治阶级的利益需要他活着的时候才能活着。</p><p>在资产阶级社会里，活的劳动只是增殖已经积累起来的劳动的一种手段。在共产主义社会里，已经积累起来的劳动只是扩大、丰富和提高工人的生活的一种手段。</p><p>因此，在资产阶级社会里是过去支配现在，在共产主义社会里是现在支配过去。在资产阶级社会里，资本具有独立性和个性，而活动着的个人却没有独立性和个性。</p><p>而资产阶级却把消灭这种关系说成是消灭个性和自由！说对了。的确，正是要消灭资产者的个性、独立性和自由。</p><p>在现今的资产阶级生产关系的范围内，所谓自由就是自由贸易，自由买卖。</p><p>但是，买卖一消失，自由买卖也就会消失。关于自由买卖的言论，也象我们的资产阶级的其他一切关于自由的大话一样，仅仅对于不自由的买卖来说，对于中世纪被奴役的市民来说，才是有意义的，而对于共产主义要消灭买卖、消灭资产阶级生产关系和资产阶级本身这一点来说，却是毫无意义的。</p><p>我们要消灭私有制，你们就惊慌起来。但是，在你们的现存社会里，私有财产对十分之九的成员来说已经被消灭了；这种私有制之所以存在，正是因为私有财产对十分之九的成员来说已经不存在。可见，你们责备我们，是说我们要消灭那种以社会上的绝大多数人没有财产为必要条件的所有制。</p><p>总而言之，你们责备我们，是说我们要消灭你们的那种所有制。的确，我们是要这样做的。</p><p>从劳动不再能变为资本、货币、地租，一句话，不再能变为可以垄断的社会力量的时候起，就是说，从个人财产不再能变为资产阶级财产的时候起，你们说，个性就被消灭了。</p><p>由此可见，你们是承认，你们所理解的个性，不外是资产者、资产阶级私有者。这样的个性确实应当被消灭。</p><p>共产主义并不剥夺任何人占有社会产品的权力，它只剥夺利用这种占有去奴役他人劳动的权力。</p><p>有人反驳说，私有制一消灭，一切活动就会停止，懒惰之风就会兴起。</p><p>这样说来，资产阶级社会早就应该因懒惰而灭亡了，因为在这个社会里是劳者不获，获者不劳的。所有这些顾虑，都可以归结为这样一个同义反复：一旦没有资本，也就不再有雇佣劳动了。</p><p>所有这些对共产主义的物质产品的占有方式和生产方式的责备， 也被扩及到精神产品的占有和生产方面。正如阶级的所有制的终止在资产者看来是生产本身的终止一样，阶级的教育的终止在他们看来就等于一切教育的终止。</p><p>资产者唯恐失去的那种教育，对绝大多数人来说是把人训练成机器。</p><p>但是，你们既然用你们资产阶级关于自由、教育、法等等的观念来衡量废除资产阶级所有制的主张，那就请你们不要同我们争论了。你们的观念本身是资产阶级的生产关系和所有制关系的产物，正象你们的法不过是被奉为法律的你们这个阶级的意志一样，而这种意志的内容是由你们这个阶级的物质生活条件来决定的。</p><p>你们的利己观念使你们把自己的生产关系和所有制关系从历史的、在生产过程中是暂时的关系变成永恒的自然规律和理性规律，这种利己观念是你们和一切灭亡了的统治阶级所共有的。谈到古代所有制的时候你们所能理解的，谈到封建所有制的时候你们所能理解的，一谈到资产阶级所有制你们就再也不能理解了。</p><p>消灭家庭！连极端的激进派也对共产党人的这种可耻的意图表示愤慨。</p><p>现代的、资产阶级的家庭是建立在什么基础上的呢？是建立在资本上面，建立在私人发财上面的。这种家庭只是在资产阶级那里才以充分发展的形式存在着，而无产者的被迫独居和公开的卖淫则是它的补充。</p><p>资产者的家庭自然会随着它的这种补充的消失而消失，两者都要随着资本的消失而消失。</p><p>你们是责备我们要消灭父母对子女的剥削吗？我们承认这种罪状。</p><p>但是，你们说，我们用社会教育代替家庭教育，就是要消灭人们最亲密的关系。</p><p>而你们的教育不也是由社会决定的吗？不也是由你们进行教育的那种社会关系决定的吗？不也是由社会通过学校等等进行的直接的或间接的干涉决定的吗？共产党人并没有发明社会对教育的影响；他们仅仅是要改变这种影响的性质，要使教育摆脱统治阶级的影响。</p><p>无产者的一切家庭联系越是由于大工业的发展而被破坏，他们的子女越是由于这种发展而被变成单纯的商品和劳动工具，资产阶级关于家庭和教育、关于父母和子女的亲密关系的空话就越是令人作呕。</p><p>但是，你们共产党人是要实行“公妻制”的啊，----整个资产阶级异口同声地向我们这样叫喊。</p><p>资产者是把自己的妻子看作单纯的生产工具的。他们听说生产工具将要公共使用，自然就不能不想到妇女也会遭到同样的命运。</p><p>他们想也没有想到，问题正在于使妇女不再处于单纯生产工具的地位。</p><p>其实，我们的资产者装得道貌岸然，对所谓的共产党人的正式公妻制表示惊讶，那是再可笑不过了。公妻制无需共产党人来实行，它差不多是一向就有的。</p><p>我们的资产者不以他们的无产者的妻子和女儿受他们支配为满足，正式的卖淫更不必说了，他们还以互相诱奸妻子为最大的享乐。</p><p>资产阶级的婚姻实际上是公妻制。人们至多只能责备共产党人，说他们想用正式的、公开的公妻制来代替伪善地掩蔽着的公妻制。其实，不言而喻，随着现在的生产关系的消灭，从这种关系中产生的公妻制，即正式的和非正式的卖淫，也就消失了。</p><p>还有人责备共产党人，说他们要取消祖国，取消民族。</p><p>工人没有祖国。决不能剥夺他们所没有的东西。因为无产阶级首先必须取得政治统治，上升为民族的阶级，把自身组织成为民族，所以它本身还是民族的，虽然完全不是资产阶级所理解的那种意思。</p><p>随着资产阶级的发展，随着贸易自由的实现和世界市场的建立，随着工业生产以及与之相适应的生活条件的趋于一致，各国人民之间的民族隔绝和对立日益消失。</p><p>无产阶级的统治将使它们更快地消失。联合的行动，至少是各文明国家的联合的行动，是无产阶级获得解放的首要条件之一。</p><p>人对人的剥削一消灭，民族对民族的剥削就会随之消灭。</p><p>民族内部的阶级对立一消失，民族之间的敌对关系就会随之消失。</p><p>从宗教的、哲学的和一般意识形态的观点对共产主义提出的种种责难，都不值得详细讨论了。</p><p>人们的观念、观点和概念，一句话，人们的意识，随着人们的生活条件、人们的社会关系、人们的社会存在的改变而改变，这难道需要经过深思才能了解吗？</p><p>思想的历史除了证明精神生产随着物质生产的改造而改造，还证明了什么呢？任何一个时代的统治思想始终都不过是统治阶级的思想。</p><p>当人们谈到使整个社会革命化的思想时，他们只是表明了一个事实：在旧社会内部已经形成了新社会的因素，旧思想的瓦解是同旧生活条件的瓦解步调一致的。</p><p>当古代世界走向灭亡的时候，古代的各种宗教就被基督教战胜了。当基督教思想在18世纪被启蒙思想击败的时候，封建社会正在同当时革命的资产阶级进行殊死的斗争。信仰自由和宗教自由的思想，不过表明自由竞争在信仰的领域里占统治地位罢了。</p><p>“但是”，有人会说，“宗教的、道德的、哲学的、政治的、法的观念等等在历史发展的进程中固然是不断改变的，而宗教、道德、哲学、政治和法在这种变化中却始终保存着。</p><p>此外，还存在着一切社会状态所共有的永恒的真理，如自由、正义等等。但是共产主义要废除永恒真理，它要废除宗教、道德，而不是加以革新，所以共产主义是同至今的全部历史发展进程相矛盾的。”</p><p>这种责难归结为什么呢？至今的一切社会的历史都是在阶级对立中运动的，而这种对立在各个不同的时代具有不同的形式。</p><p>但是，不管阶级对立具有什么样的形式，社会上一部分人对另一部分人的剥削却是过去各个世纪所共有的事实。因此，毫不奇怪，各个世纪的社会意识，尽管形形色色、千差万别，总是在某些共同的形式中运动的，这些形式，这些意识形式，只有当阶级对立完全消失的时候才会完全消失。</p><p>共产主义革命就是同传统的所有制关系实行最彻底的决裂；毫不奇怪，它在自己的发展进程中要同传统的观念实行最彻底的决裂。</p><p>不过，我们还是把资产阶级对共产主义的种种责难撇开吧。</p><p>前面我们已经看到，工人革命的第一步就是使无产阶级上升为统治阶级，争得民主。</p><p>无产阶级将利用自己的政治统治，一步一步地夺取资产阶级的全部资本，把一切生产工具集中在国家即组织成为统治阶级的无产阶级手里，并且尽可能快地增加生产力的总量。</p><p>要做到这一点，当然首先必须对所有权和资产阶级生产关系实行强制性的干涉，也就是采取这样一些措施，这些措施在经济上似乎是不够充分的和没有力量的，但是在运动进程中它们会越出本身，而且作为变革全部生产方式的手段是必不可少的。</p><p>这些措施在不同的国家里当然会是不同的。</p><p>但是，最先进的国家几乎都可以采取下面的措施：</p><p>1．剥夺地产，把地租用于国家支出。</p><p>2．征收高额累进税。</p><p>3．废除继承权。</p><p>4．没收一切流亡分子和叛乱分子的财产。</p><p>5．通过拥有国家资本和独享垄断权的国家银行，把信贷集中在国家手里。</p><p>6．把全部运输业集中在国家手里。</p><p>7．按照总的计划增加国营工厂和生产工具，开垦荒地和改良土壤。</p><p>8．实行普遍劳动义务制，成立产业军，特别是在农业方面。</p><p>9．把农业和工业结合起来，促使城乡对立逐步消灭。</p><p>10．对所有儿童实行公共的和免费的教育。取消现在这种形式的儿童的工厂劳动。把教育同物质生产结合起来，等等。</p><p>当阶级差别在发展进程中已经消失而全部生产集中在联合起来的个人的手里的时候，公共权力就失去政治性质。原来意义上的政治权力，是一个阶级用以压迫另一个阶级的有组织的暴力。如果说无产阶级在反对资产阶级的斗争中一定要联合为阶级，如果说它通过革命使自己成为统治阶级，并以统治阶级的资格用暴力消灭旧的生产关系，那么它在消灭这种生产关系的同时，也就消灭了阶级对立和阶级本身的存在条件，从而消灭了它自己这个阶级的统治。</p><p>代替那存在着阶级和阶级对立的资产阶级旧社会的，将是这样一个联合体，在那里，每个人的自由发展是一切人的自由发展的条件。</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="2_4"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_2_4"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="社会主义的和共产主义的文献"></a></p><h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">社会主义的和共产主义的文献</h3><p>1．反动的社会主义</p><p>(甲)封建的社会主义</p><p>法国和英国的贵族，按照他们的历史地位所负的使命，就是写一些抨击现代资产阶级社会的作品。在法国的1830年七月革命和英国的改革运动中，他们再一次被可恨的暴发户打败了。从此就再谈不上严重的政治斗争了。他们还能进行的只是文字斗争。但是，即使在文字方面也不可能重弹复辟时期的老调了。为了激起同情，贵族们不得不装模做样，似乎他们已经不关心自身的利益，只是为了被剥削的工人阶级的利益才去写对资产阶级的控诉书。他们用来泄愤的手段是：唱唱诅咒他们的新统治者的歌，并向他叽叽咕咕地说一些或多或少凶险的预言。</p><p>这样就产生了封建的社会主义，半是挽歌，半是谤文；半是过去的回音，半是未来的恫吓；它有时也能用辛辣、俏皮而尖刻的评论刺中资产阶级的心，但是它由于完全不能理解现代历史的进程而总是令人感到可笑。</p><p>为了拉拢人民，贵族们把无产阶级的乞食袋当做旗帜来挥舞。但是，每当人民跟着他们走的时候，都发现他们的臀部带有旧的封建纹章，于是就哈哈大笑，一哄而散。</p><p>一部分法国正统派和“青年英国”，都演过这出戏。</p><p>封建主说，他们的剥削方式和资产阶级的剥削不同，那他们只是忘记了，他们是在完全不同的、目前已经过时的情况和条件下进行剥削的。他们说，在他们的统治下并没有出现过现代的无产阶级，那他们只是忘记了，现代的资产阶级正是他们的社会制度的必然产物。</p><p>不过，他们毫不掩饰自己的批评的反动性质，他们控告资产阶级的主要罪状正是在于：在资产阶级的统治下有一个将把整个旧社会制度炸毁的阶级发展起来。</p><p>他们责备资产阶级，与其说是因为它产生了无产阶级，不如说是因为它产生了革命的无产阶级。</p><p>因此，在政治实践中，他们参与对工人阶级采取的一切暴力措施，在日常生活中，他们违背自己的那一套冠冕堂皇的言词，屈尊拾取金苹果，不顾信义、仁爱和名誉去做羊毛、甜菜和烧酒的买卖。</p><p>正如僧侣总是同封建主携手同行一样，僧侣的社会主义也总是同封建的社会主义携手同行的。</p><p>要给基督教禁欲主义涂上一层社会主义的色彩，是再容易不过了。基督教不是也激烈反对私有制，反对婚姻，反对国家吗？它不是提倡用行善和求乞、独身和禁欲、修道和礼拜来代替这一切吗？基督教的社会主义，只不过是僧侣用来使贵族的怨愤神圣化的圣水罢了。</p><p>（乙）小资产阶级的社会主义</p><p>封建贵族并不是被资产阶级所推翻的、其生活条件在现代资产阶级社会里日益恶化和消失的唯一阶级。中世纪的城关市民和小农等级是现代资产阶级的前身。在工商业不很发达的国家里，这个阶级还在新兴的资产阶级身旁勉强生存着。</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="2_5"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_2_5"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="共产党人对各种反对党派的态度"></a></p><h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">共产党人对各种反对党派的态度</h3><p>看过第二章之后，就可以了解共产党人同已经形成的工人政党的关系，因而也就可以了解他们同英国宪章派和北美土地改革派的关系。</p><p>共产党人为工人阶级的最近的目的和利益而斗争，但是他们在当前的运动中同时代表运动的未来。在法国，共产党人同社会主义民主党联合起来反对保守的和激进的资产阶级，但是并不因此放弃对那些从革命的传统中承袭下来的空谈和幻想采取批判态度的权利。</p><p>在瑞士，共产党人支持激进派，但是并不忽略这个政党是由互相矛盾的分子组成的，其中一部分是法国式的民主社会主义者，一部分是激进的资产者。</p><p>在波兰人中间，共产党人支持那个把土地革命当做民族解放的条件的政党，即发动过1846年克拉科夫起义的政党。[1]在德国，只要资产阶级采取革命的行动，共产党就同它一起去反对专制君主制、封建土地所有制和小市民的反动性。</p><p>但是，共产党一分钟也不忽略教育工人尽可能明确地意识到资产阶级和无产阶级的敌对的对立，以便德国工人能够立刻利用资产阶级统治所必然带来的社会的和政治的条件作为反对资产阶级的武器，以便在推翻德国的反动阶级之后立即开始反对资产阶级本身的斗争。</p><p>共产党人把自己的主要注意力集中在德国，因为德国正处在资产阶级革命的前夜，因为同17世纪的英国和18世纪的法国相比，德国将在整个欧洲文明更进步的条件下，拥有发展得多的无产阶级去实现这个变革，因而德国的资产阶级革命只能是无产阶级革命的直接序幕。</p><p>总之，共产党人到处都支持一切反对现存的社会制度和政治制度的革命运动。</p><p>在所有这些运动中，他们都特别强调所有制问题，把它作为运动的基本问题，不管这个问题当时的发展程度怎样。</p><p>最后，共产党人到处都努力争取全世界的民主政党之间的团结和协调。</p><p>共产党人不屑于隐瞒自己的观点和意图。他们公开宣布：他们的目的只有用暴力推翻全部现存的社会制度才能达到。让统治阶级在共产主义革命面前发抖吧。无产者在这个革命中失去的只是锁链。他们获得的将是整个世界。</p><p>全世界无产者，联合起来！[1]</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="3"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_3"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="序言"></a></p><h2 class="title-text" style="margin: 0px; padding: 0px 8px 0px 18px; font-size: 22px; color: rgb(0, 0, 0); float: left; font-weight: 400; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">序言</h2><p><span class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma" style="font-family: baikeFont_layout; -webkit-font-smoothing: antialiased; speak: none; line-height: 1; outline: 0px; margin: 0px 3px 0px 0px; vertical-align: text-bottom; color: rgb(170, 170, 170);"></span>编辑</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="3_1"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_3_1"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="1872年德文版"></a></p><h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">1872年德文版</h3><p>共产主义者同盟这个在当时条件下自然只能是秘密团体的国际工人组织，1847年11 月在伦敦代表大会上委托我们两人起草一个准备公布的周祥的理论和实践的党纲。结果就产生了这个《宣言》，《宣言》原稿在二月革命前几星期寄到伦敦复印。《宣言》最初用德文出版，后来又用德文在德国、英国和美国至少翻印过十二次。第一个英译本是由艾琳·麦克法林女士翻译的，于1850年在伦敦《红色共和党人》杂志上发表，后来在1871年至少又有三种不同的英译本在美国出版。法译本于1848年六月起义前不久第一次在巴黎印行，最近又在纽约《社会主义者报》上登载；现在又有人在准备新译本。波兰文译本在德国本初版问世后不久就在伦敦出现。俄译本是于六十年代在日内瓦出版的。丹麦文译本也是在原书问世后不久就出版了。</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="3_2"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_3_2"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="1883年德文版"></a></p><h3 class="title-text" style="margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;">1883年德文版</h3><p>本版序言不幸只能由我一个人署名了。马克思这位比其他任何人都更应受到欧美整个工人阶级感谢的人物，已经长眠于海格特公墓，他的墓上已经初次长出了青草。在他逝世以后，就更谈不上对《宣言》作什么修改或补充了。因此，我认为更有必要在这里再一次明确地申述下面这一点。</p><p>贯穿《宣言》的基本思想：每一历史时代的经济生产以及必然由此产生的社会结构，是该时代政治的和精神的历史的基础；因此(从原始土地公有制解体以来)全部历史都是阶级斗争的历史，即社会发展各个阶段上被剥削阶级和剥削阶级之间、被统治阶级和统治阶级之间斗争的历史；而这个斗争现在已经达到这样一个阶段，即被剥削被压迫的阶级(无产阶级)，如果不同时使整个社会永远摆脱剥削、压迫和阶级斗争，就不再能使自己从剥削它压迫它的那个阶级(资产阶级)下解放出来，----这个基本思想完全是属于马克思一个人的。</p><p>这一点我已经屡次说过，但正是现在必须在《宣言》本身的前面也写明这一点。</p><p>弗·恩格斯</p><p>1883年6月28日于伦敦</p><p><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="4"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="sub18535_4"></a><a style="color: rgb(19, 110, 194); position: absolute; top: -50px;" name="结构"></a></p><p><br/></p>', 1472919194, 0, 0, 0, 3, 0);
INSERT INTO `think_post` (`pid`, `bid`, `uid`, `name`, `title`, `text`, `time`, `retime`, `love`, `unlove`, `view`, `num`) VALUES
(41, 16, 1, '', '道德经', '<p class="STYLE4" style="text-align:left;color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">01.道可道，非常道。名可名，非常名。无名天地之始。有名万物之母。故常无欲以观其妙。常有欲以观</p><p class="STYLE4" style="text-align:left;color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">其徼。此两者同出而异名，同谓之玄。玄之又玄，众妙之门。</p><p class="STYLE4" style="text-align:left;color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">02.天下皆知美之为美，斯恶矣；皆知善之为善，斯不善已。故有无相生，难易相成，长短相形，高下相</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">倾，音声相和，前後相随。是以圣人处无为之事，行不言之教。万物作焉而不辞。生而不有，为而不恃，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">功成而弗居。夫唯弗居，是以不去。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">03.不尚贤， 使民不争。不贵难得之货，使民不为盗。不见可欲，使民心不乱。是以圣人之治，虚其心，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">实其腹，弱其志，强其骨；常使民无知、无欲，使夫智者不敢为也。为无为，则无不治。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">04.道冲而用之，或不盈。渊兮似万物之宗。解其纷，和其光，同其尘，湛兮似或存。吾不知谁之子，象</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">帝之先。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">05.天地不仁，以万物为刍狗。圣人不仁，以百姓为刍狗。天地之间，其犹橐迭乎？虚而不屈，动而愈出</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。多言数穷，不如守中。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">06.谷神不死是谓玄牝。玄牝之门是谓天地根。绵绵若存，用之不勤。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">07.天长地久。天地所以能长且久者，以其不自生，故能长生。是以圣人後其身而身先，外其身而身存。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">非以其无私邪！故能成其私。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">08.上善若水。水善利万物而不争，处众人之所恶，故几於道。居善地，心善渊，与善仁，言善信，正善</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">治，事善能，动善时。夫唯不争，故无尤。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">09.持而盈之不如其己；揣而锐之不可长保；金玉满堂莫之能守；富贵而骄，自遗其咎。功遂身退，天之</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">道。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">10.载营魄抱一，能无离乎？专气致柔，能如婴儿乎？涤除玄览，能无疵乎？爱国治民，能无为乎？天门</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">开阖，能为雌乎？明白四达，能无知乎。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">11.三十幅共一毂，当其无，有车之用。埏埴以为器，当其无，有器之用。凿户牖以为室，当其无，有室</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之用。故有之以为利，无之以为用。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">12.五色令人目盲，五音令人耳聋，五味令人口爽，驰骋畋猎令人心发狂，难得之货令人行妨。是以圣人</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">，为腹不为目，故去彼取此。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">13.宠辱若惊，贵大患若身。何谓宠辱若惊？宠为下。得之若惊失之若惊是谓宠辱若惊。何谓贵大患若身</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">？吾所以有大患者，为吾有身，及吾无身，吾有何患。故贵以身为天下，若可寄天下。爱以身为天下，若</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">可托天下。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">14.视之不见名曰夷。听之不闻名曰希。抟之不得名曰微。此三者不可致诘，故混而为一。其上不皦</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">(jiǎo)，其下不昧，绳绳不可名，复归於无物。是谓无状之状，无物之象，是谓惚恍。迎之不见其首，随</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之不见其後。执古之道以御今之有。能知古始，是谓道纪。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">15.古之善为士者，微妙玄通，深不可识。夫唯不可识，故强为之容。豫兮若冬涉川；犹兮若畏四邻；俨</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">兮其若容；涣兮若冰之将释；敦兮其若朴；旷兮其若谷；混兮其若浊；澹兮其若海；飉(liáo,风的声音)兮</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">若无止。孰能浊以静之徐清。孰能安以动之徐生。保此道者不欲盈。夫唯不盈故能蔽而新成。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">16.致虚极守静笃。万物并作，吾以观复。夫物芸芸各复归其根。归根曰静，是谓复命；复命曰常，知常</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">曰明。不知常，妄作凶。知常容，容乃公，公乃全，全乃天，天乃道，道乃久，没身不殆。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">17.太上，下知有之。其次，亲而誉之。其次，畏之。其次，侮之。信不足焉，有不信焉。悠兮其贵言，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">功成事遂，百姓皆谓∶我自然。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">18.大道废有仁义；慧智出有大伪；六亲不和有孝慈；国家昏乱有忠臣。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">19.绝圣弃智，民利百倍；绝仁弃义，民复孝慈；绝巧弃利，盗贼无有；此三者，以为文不足。故令有所</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">属，见素抱朴少私寡欲。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">20.绝学无忧，唯之与阿，相去几何？善之与恶，相去若何？人之所畏，不可不畏。荒兮其未央哉！众人</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">熙熙如享太牢、如春登台。我独泊兮其未兆，如婴儿之未孩；儡儡(lěi,羸弱)兮若无所归。众人皆有馀，而</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">我独若遗。我愚人之心也哉！沌沌兮。俗人昭昭，我独昏昏；俗人察察，我独闷闷。众人皆有以，而我独</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">顽且鄙。我独异於人，而贵食母。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">21.孔德之容惟道是从。道之为物惟恍惟惚。惚兮恍兮其中有象。恍兮惚兮其中有物。窈兮冥兮其中有精</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。其精甚真。其中有信。自古及今，其名不去以阅众甫。吾何以知众甫之状哉！以此。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">22.曲则全，枉则直，洼则盈，敝则新少则得，多则惑。是以圣人抱一为天下式。不自见故明；不自是故</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">彰；不自伐故有功；不自矜故长；夫唯不争，故天下莫能与之争。古之所谓∶曲则全者」岂虚言哉！诚</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">全而归之。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">23.希言自然。故飘风不终朝，骤雨不终日。孰为此者？天地。天地尚不能久，而况於人乎？故从事於道</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">者，同於道。德者同於德。失者同於失。同於道者道亦乐得之；同於德者德亦乐得之；同於失者失於乐得</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之信不足焉有不信焉。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">24.企者不立；跨者不行。自见者不明；自是者不彰。自伐者无功；自矜者不长。其在道也曰∶馀食赘形</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。物或恶之，故有道者不处。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">25.有物混成先天地生。寂兮寥兮独立不改，周行而不殆，可以为天下母。吾不知其名，强字之曰道。强</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">为之名曰大。大曰逝，逝曰远，远曰反。故道大、天大、地大、人亦大。域中有大，而人居其一焉。人法</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">地，地法天，天法道，道法自然。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">26.重为轻根，静为躁君。是以君子终日行不离轻重。虽有荣观燕处超然。奈何万乘之主而以身轻天下。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">轻则失根，躁则失君。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">27.善行无辙迹。善言无瑕谪。善数不用筹策。善闭无关楗而不可开。善结无绳约而不可解。是以圣人常</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">善救人，故无弃人。常善救物，故无弃物。是谓袭明。故善人者不善人之师。不善人者善人之资。不贵其</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">师、不爱其资，虽智大迷，是谓要妙。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">28.知其雄，守其雌，为天下溪。为天下溪，常德不离，复归於婴儿。知其白，守其黑，为天下式。为天</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">下式，常德不忒，复归於无极。知其荣，守其辱，为天下谷。为天下谷，常德乃足，复归於朴。朴散则为</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">器，圣人用之则为官长。故大制不割。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">29.将欲取天下而为之，吾见其不得已。天下神器，不可为也，为者败之，执者失之。夫物或行或随、或</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">觑或吹、或强或羸、或挫或隳。是以圣人去甚、去奢、去泰。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">30.以道佐人主者，不以兵强天下。其事好还。师之所处荆棘生焉。军之後必有凶年。善有果而已，不敢</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">以取强。果而勿矜。果而勿伐。果而勿骄。果而不得已。果而勿强。物壮则老，是谓不道，不道早已。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">31.夫佳兵者不祥之器，物或恶之，故有道者不处。君子居则贵左，用兵则贵右。兵者不祥之器，非君子</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之器，不得已而用之，恬淡为上。胜而不美，而美之者，是乐杀人。夫乐杀人者，则不可得志於天下矣。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">吉事尚左，凶事尚右。偏将军居左，上将军居右。言以丧礼处之。杀人之众，以悲哀泣之，战胜以丧礼处</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">32.道常无名。朴虽小天下莫能臣也。侯王若能守之，万物将自宾。天地相合以降甘露，民莫之令而自均</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。始制有名，名亦既有，夫亦将知止，知止可以不殆。譬道之在天下，犹川谷之於江海。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">33.知人者智，自知者明。胜人者有力，自胜者强。知足者富。强行者有志。不失其所者久。死而不亡者</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">，寿。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">34.大道泛兮，其可左右。万物恃之以生而不辞，功成而不名有。衣养万物而不为主，常无欲可名於小。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">万物归焉，而不为主，可名为大。以其终不自为大，故能成其大。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">35.执大象天下往。往而不害安平太。乐与饵，过客止。道之出口淡乎其无味。视之不足见。听之不足闻</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。用之不足既。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">36.将欲歙之，必固张之。将欲弱之，必固强之。将欲废之，必固兴之。将欲取之，必固与之。是谓微明</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。柔弱胜刚强。鱼不可脱於渊，国之利器不可以示人。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">37.道常无为，而无不为。侯王若能守之，万物将自化。化而欲作，吾将镇之以无名之朴。无名之朴，夫</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">亦将无欲。不欲以静，天下将自定。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">38.上德不德是以有德。下德不失德是以无德。上德无为而无以为。下德无为而有以为。上仁为之而无以</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">为。上义为之而有以为。上礼为之而莫之以应，则攘臂而扔之。故失道而後德。失德而後仁。失仁而後义</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。失义而後礼。夫礼者忠信之薄而乱之首。前识者，道之华而愚之始。是以大丈夫，处其厚不居其薄。处</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">其实，不居其华。故去彼取此。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">39.昔之得一者。天得一以清。地得一以宁。神得一以灵。谷得一以盈。万物得一以生。侯王得一以为天</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">下贞。其致之。天无以清将恐裂。地无以宁将恐废。神无以灵将恐歇。谷无以盈将恐竭。万物无以生将恐</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">灭。侯王无以贞将恐蹶。故贵以贱为本，高以下为基。是以侯王自称孤、寡、不谷。此非以贱为本邪？非</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">乎。至誉无誉。不欲琭琭如玉，珞珞如石。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">40.反者道之动。弱者道之用。天下万物生於有，有生於无。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">41.上士闻道勤而行之。中士闻道若存若亡。下士闻道大笑之。不笑不足以为道。故建言有之。明道若昧</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。进道若退。夷道若纇。上德若谷。大白若辱。广德若不足。建德若偷。质真若渝。大方无隅。大器晚成</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。大音希声。大象无形。道隐无名。夫唯道善贷且成。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">42.道生一。一生二。二生三。三生万物。万物负阴而抱阳，冲气以为和。人之所恶，唯孤、寡不谷，而</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">王公以为称，故物或损之而益，或益之而损。人之所教，我亦教之，强梁者，不得其死。吾将以为教父。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">43.天下之至柔，驰骋天下之至坚。无有入无间，吾是以知无为之有益。不言之教，无为之益天下希及之。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">44.名与身孰亲。身与货孰多。得与亡孰病。是故甚爱必大费。多藏必厚亡。知足不辱。知止不殆。可以</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">长久。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">45.大成若缺，其用不弊。大盈若冲，其用不穷。大直若屈。大巧若拙。大辩若讷。静胜躁，寒胜热。清</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">静为天下正。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">46.天下有道，却走马以粪。天下无道，戎马生於郊。祸莫大於不知足。咎莫大於欲得。故知足之足常足</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">矣。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">47.不出户知天下。不窥牖见天道。其出弥远，其知弥少。是以圣人不行而知。不见而明。不为而成。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">48.为学日益。为道日损。损之又损，以至於无为。无为而不为。取天下常以无事，及其有事，不足以取</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">天下。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">49.圣人无常心。以百姓心为心。善者吾善之。不善者吾亦善之，德善。信者吾信之。不信者吾亦信之，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">德信。圣人在天下，歙歙(xīxī,无所偏执的样子)焉，为天下浑其心。百姓皆注其耳目，圣人皆孩之。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">50.出生入死。生之徒，十有三。死之徒，十有三。人之生，动之於死地，亦十有三。夫何故？以其生生</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之厚。盖闻善摄生者，陆行不遇凶虎，入军不被甲兵。凶无所投其角。虎无所用其爪。兵无所容其刃。夫</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">何故？以其无死地。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">51.道生之，德畜之，物形之，势成之。是以万物莫不尊道，而贵德。道之尊，德之贵，夫莫之命而常自</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">然。故道生之，德畜之。长之育之。亭之毒之。养之覆之。生而不有，为而不恃，长而不宰。是谓玄德。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">52.天下有始，以为天下母。既得其母，以知其子。既知其子，复守其母，没身不殆。塞其兑，闭其门，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">终身不勤。开其兑，济其事，终身不救。见其小曰明，守柔曰强。用其光，复归其明，无遗身殃。是为习</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">常。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">53.使我介然有知，行於大道，唯施是畏。大道甚夷，而人好径。朝甚除，田甚芜，仓甚虚。服文彩，带</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">利剑，厌饮食，财货有馀。是谓盗夸。非道也哉。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">54.善建者不拔。善抱者不脱。子孙以祭祀不辍。修之於身其德乃真。修之於家其德乃馀。修之於乡其德</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">乃长。修之於邦其德乃丰。修之於天下其德乃普。故以身观身，以家观家，以乡观乡，以邦观邦，以天下</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">观天下。吾何以知天下然哉？以此。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">55.含德之厚比於赤子。毒虫不螫，猛兽不据，攫鸟不抟。骨弱筋柔而握固。未知牝牡之合而全作，精之</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">至也。终日号而不嗄，和之至也。知和曰常。知常曰明。益生曰祥。心使气曰强。物壮则老。谓之不道，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">不道早已。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">56.知者不言。言者不知。挫其锐，解其纷，和其光，同其尘，是谓玄同。故不可得而亲。不可得而疏。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">不可得而利。不可得而害。不可得而贵。不可得而贱。故为天下贵。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">57.以正治国，以奇用兵，以无事取天下。吾何以知其然哉？以此。天下多忌讳而民弥贫。民多利器国家</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">滋昏。人多伎巧奇物泫起。法令滋彰盗贼多有。故圣人云我无为而民自化。我好静而民自正。我无事而民</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">自富。我无欲而民自朴。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">58.其政闷闷，其民淳淳。其政察察，其民缺缺。祸尚福之所倚。福尚祸之所伏。孰知其极，其无正。正</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">复为奇，善复为妖。人之迷其日固久。是以圣人方而不割。廉而不刿。直而不肆。光而不耀。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">59.治人事天莫若啬。夫唯啬是谓早服。早服谓之重积德。重积德则无不克。无不克则莫知其极。莫知其</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">极可以有国。有国之母可以长久。是谓深根固柢，长生久视之道。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">60.治大国若烹小鲜。以道莅天下，其迨ㄞ哄非其鬼不神，其神不伤人。非其神不伤人，圣人亦不伤人。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">夫两不相伤，故德交归焉。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">61.大国者下流，天下之交。天下之牝。牝常以静胜牡。以静为下。故大国以下小国，则取小国。小国以</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">下大国，则取大国。故或下以取，或下而取。大国不过欲兼畜人。小国不过欲入事人。夫两者各得所欲，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">大者宜为下。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">62.道者万物之奥。善人之宝，不善人之所保。美言可以市尊。美行可以加人。人之不善，何弃之有。故</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">立天子、置三公，虽有拱璧以先驷马，不如坐进此道。古之所以贵此道者何。不曰∶求以得，有罪以免邪</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">？故为天下贵。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">63.为无为，事无事，味无味。大小多少，报怨以德。图难於其易，为大於其细。天下难事必作於易。天</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">下大事必作於细。是以圣人终不为大，故能成其大。夫轻诺必寡信。多易必多难。是以圣人犹难之，故终</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">无难矣。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">64.其安易持，其未兆易谋。其脆易泮，其微易散。为之於未有，治之於未乱。合抱之木生於毫末。九层</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之台起於累土。千里之行始於足下。为者败之，执者失之。是以圣人无为故无败，无执故无失。民之从事</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">常於几成而败之。慎终如始则无败事。是以圣人欲不欲，不贵难得之货。学不学，复众人之所过，以辅万</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">物之自然而不敢为。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">65.古之善为道者，非以明民，将以愚之。民之难治，以其智多。故以智治国，国之贼。不以智治国，国</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之福。知此两者，亦稽式。常知稽式，是谓玄德。玄德深矣、远矣！与物反矣。然後乃至大顺。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">66.江海之所以能为百谷王者，以其善下之，故能为百谷王。是以圣人欲上民，必以言下之。欲先民，必</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">以身後之。是以圣人处上而民不重，处前而民不害。是以天下乐推而不厌。以其不争，故天下莫能与之争。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">67.天下皆谓我道大似不肖。夫唯大故似不肖。若肖，久矣！其细也夫。我有三宝持而保之∶一曰慈， 二</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">曰俭，三曰不敢为天下先。慈故能勇，俭故能广，不敢为天下先故能成器长。今舍慈且勇，舍俭且广，舍</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">後且先，死矣！夫慈以战则胜，以守则固。天将救之以慈卫之。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">68.善为士者不武。善战者不怒。善胜敌者不与。善用人者为之下。是谓不争之德。是谓用人之力。是谓</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">配天之极。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">69.用兵有言，吾不敢为主而为客。不敢进寸而退尺。是谓行无行。攘无臂。扔无敌。执无兵。祸莫大於</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">轻敌。轻敌几丧吾宝。故抗兵相加哀者胜矣。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">70.吾言甚易知、甚易行。天下莫能知、莫能行。言有宗、事有君。夫唯无知，是以我不知。知我者希，</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">则我者贵。是以圣被褐怀玉。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">71.知不知上，不知知病。夫唯病病，是以不病。圣人不病，以其病病。夫唯病病，是以不病。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">72.民不畏威，则大威至。无狎其所居，无厌其所生。夫唯不厌，是以不厌。是以圣人自知不自见。自爱</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">不自贵。故去彼取此。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">73.勇於敢则杀。勇於不敢则活。此两者或利或害。天之所恶孰知其故。天之道不争而善胜。不言而善应</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。不召而自来。繟(chǎn,舒缓)然而善谋。天网恢恢疏而不失。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">74.民不畏死，奈何以死惧之。若使民常畏死，而为奇者，吾得执而杀之，孰敢。常有司杀者杀。夫代司</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">杀者杀，是谓代大匠斫。夫代大匠斫者，希有不伤其手矣。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">75.民之饥以其上食税之多，是以饥。民之难治以其上之有为，是以难治。民之轻死以其求生之厚，是以</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">轻死。夫唯无以生为者，是贤於贵生。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">76.人之生也柔弱，其死也坚强。草木之生也柔脆，其死也枯槁。故坚强者死之徒，柔弱者生之徒。是以</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">兵强则灭，木强则折。强大处下，柔弱处上。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">77.天之道其犹张弓与。高者抑之，下者举之。有馀者损之，不足者补之。天之道，损有馀而补不足。人</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">之道，则不然，损不足以奉有馀。孰能有馀以奉天下，唯有道者。是以圣人为而不恃，功成而不处。其不</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">欲见贤邪！</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">78.天下莫柔弱於水。而攻坚强者，莫之能胜。以其无以易之。弱之胜强。柔之胜刚。天下莫不知莫能行</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">。是以圣人云，受国之垢是谓社稷主。受国不祥是为天下王。正言若反。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">79.和大怨必有馀怨，安可以为善。是以圣人执左契，而不责於人。有德司契，无德司彻。天道无亲常与</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">善人。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">80.小国寡民。使有什伯之器而不用。使民重死而不远徙。虽有舟舆无所乘之。虽有甲兵无所陈之。使民</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">复结绳而用之。甘其食、美其服、安其居、乐其俗。邻国相望，鸡犬之声相闻。民至老死不相往来。</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">&nbsp;</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">81.信言不美。美言不信。善者不辩。辩者不善。知者不博。博者不知。圣人不积。既以为人己愈有。既</p><p class="STYLE4" style="color: rgb(51, 51, 51); font-family: verdana, arial; white-space: normal;">以与人己愈多。天之道利而不害。圣人之道为而不争。</p><p><br/></p>', 1472919283, 1472963937, 0, 0, 9, 2),
(42, 13, 1, '', '新测试信息！！', '<p><img src="/Uploads/image/20160904/1472965787784698.jpg" style="" title="1472965787784698.jpg"/></p><p><img src="/Uploads/image/20160904/1472965787758083.jpeg" style="" title="1472965787758083.jpeg"/></p><p><img src="/Uploads/image/20160904/1472965787263132.jpg" style="" title="1472965787263132.jpg"/></p><p><img src="/Uploads/image/20160904/1472965788465850.jpg" style="" title="1472965788465850.jpg"/></p><p><img src="/Uploads/image/20160904/1472965788797509.jpg" style="" title="1472965788797509.jpg"/></p><p><img src="/Uploads/image/20160904/1472965790102627.jpg" style="" title="1472965790102627.jpg"/></p><p><img src="/Uploads/image/20160904/1472965790416866.jpg" style="" title="1472965790416866.jpg"/></p><p><img src="/Uploads/image/20160904/1472965790104611.jpg" style="" title="1472965790104611.jpg"/></p><p><img src="/Uploads/image/20160904/1472965791185331.jpg" style="" title="1472965791185331.jpg"/></p><p><img src="/Uploads/image/20160904/1472965794118105.jpg" style="" title="1472965794118105.jpg"/></p><p><br/></p><p>测试OK！！！</p><p><br/></p>', 1472965812, 1472965855, 0, 0, 4, 3),
(43, 13, 1, '', 'aa''a''a''a''a''a''a''a''a''a''a''a', '<p>啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', 1472966142, 1472966240, 0, 0, 3, 2),
(44, 13, 1, '', '测试第二次', '<p>哟哟哟哦哦、！！！！</p>', 1472966294, 1472966301, 0, 0, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_remind`
--

CREATE TABLE IF NOT EXISTS `think_remind` (
  `eid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `isread` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `xid` int(11) NOT NULL COMMENT 'for type',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_remind`
--

INSERT INTO `think_remind` (`eid`, `sid`, `uid`, `time`, `isread`, `type`, `xid`, `info`) VALUES
(14, 10, 13, 1470041027, 1, 'post', 15, 'aaa回复了您的主题<<usjdojaosjd>>。'),
(15, 10, 10, 1470041749, 1, 'repost', 166, 'aaa在主题<<usjdojaosjd>>中回复了你的回复'),
(16, 10, 10, 1470043248, 1, 'repost', 161, 'aaa在主题<<usjdojaosjd>>中回复了您的回复'),
(17, 10, 13, 1470043644, 1, 'post', 15, 'aaa回复了您的主题<<usjdojaosjd>>。'),
(18, 10, 13, 1470043932, 1, 'post', 14, 'aaa回复了您的主题<<我去恶趣味>>。'),
(19, 13, 10, 1470043953, 1, 'repost', 170, 'moma在主题<<我去恶趣味>>中回复了您的回复'),
(20, 10, 13, 1470044035, 1, 'repost', 171, 'aaa在主题<<我去恶趣味>>中回复了您的回复'),
(21, 13, 10, 1470044094, 1, 'post', 16, 'moma回复了您的主题<<正经去>>。'),
(22, 10, 13, 1470044107, 1, 'repost', 175, 'aaa在主题<<正经去>>中回复了您的回复'),
(23, 10, 13, 1470044140, 1, 'repost', 177, 'aaa在主题<<正经去>>中回复了您的回复'),
(24, 10, 13, 1470044252, 1, 'repost', 175, 'aaa在主题<<正经去>>中回复了您的回复'),
(25, 10, 13, 1470044366, 1, 'post', 17, 'aaa回复了您的主题<<散打>>。'),
(26, 13, 10, 1470044382, 1, 'repost', 181, 'moma在主题<<散打>>中回复了您的回复'),
(27, 10, 13, 1470044696, 1, 'post', 17, 'aaa回复了您的主题<<散打>>。'),
(28, 13, 10, 1470044792, 1, 'repost', 189, 'moma在主题<<散打>>中回复了您的回复'),
(29, 10, 13, 1470044810, 1, 'repost', 190, 'aaa在主题<<散打>>中回复了您的回复'),
(30, 13, 10, 1470044829, 1, 'repost', 191, 'moma在主题<<散打>>中回复了您的回复'),
(31, 13, 10, 1470045075, 1, 'repost', 192, 'moma在主题<<散打>>中回复了您的回复'),
(32, 13, 10, 1470045151, 1, 'repost', 193, 'moma在主题<<散打>>中回复了您的回复'),
(33, 10, 13, 1470045207, 1, 'repost', 194, 'aaa在主题<<散打>>中回复了您的回复'),
(34, 13, 10, 1470045229, 1, 'post', 18, 'moma回复了您的主题<<boo他>>。'),
(35, 13, 10, 1470045268, 1, 'post', 19, 'moma回复了您的主题<<滴答滴答滴答滴答滴答滴答滴答滴答滴答>>。'),
(36, 13, 10, 1470045294, 1, 'post', 20, 'moma回复了您的主题<<哒哒哒>>。'),
(37, 13, 10, 1470045319, 1, 'post', 21, 'moma回复了您的主题<<1111>>。'),
(38, 13, 10, 1470045339, 1, 'post', 22, 'moma回复了您的主题<<s>>。'),
(39, 10, 13, 1470045387, 1, 'repost', 201, 'aaa在主题《s》中回复了您的回复'),
(40, 13, 10, 1470045396, 1, 'repost', 202, 'moma在主题《s》中回复了您的回复'),
(41, 10, 13, 1470050316, 1, 'repost', 206, 'aaa在主题《s》中回复了您的回复'),
(42, 1, 10, 1470059860, 1, 'post', 22, 'admin回复了您的主题《s》。'),
(43, 10, 1, 1470072870, 1, 'repost', 212, 'aaa在主题《s》中回复了您的回复'),
(44, 1, 10, 1470074075, 1, 'repost', 213, 'admin在主题《s》中回复了您的回复'),
(45, 10, 1, 1470099045, 1, 'repost', 214, 'aaa在主题《s》中回复了您的回复'),
(46, 1, 10, 1470102408, 0, 'post', 27, 'admin回复了您的主题《wewr eeeeee》。'),
(47, 1, 10, 1470102571, 0, 'post', 27, 'admin回复了您的主题《wewr eeeeee》。'),
(48, 1, 10, 1470102599, 0, 'repost', 217, 'admin在主题《s》中回复了您的回复'),
(49, 1, 10, 1470106400, 0, 'post', 27, 'admin回复了您的主题《wewr eeeeee》。'),
(50, 21, 1, 1470108514, 1, 'post', 29, 'moe回复了您的主题《忙了一夜 感觉好困》。'),
(51, 1, 21, 1470134741, 1, 'repost', 223, 'admin在主题《忙了一夜 感觉好困》中回复了您的回复'),
(52, 1, 21, 1470134792, 1, 'post', 31, 'admin回复了您的主题《来看看电影啦！》。'),
(53, 1, 21, 1470157880, 1, 'repost', 226, 'admin在主题《悠久的翼》中回复了您的回复'),
(54, 22, 1, 1470238250, 1, 'post', 34, 'adad回复了您的主题《滴滴 开车啦》。'),
(55, 22, 1, 1470238671, 1, 'post', 32, 'adad回复了您的主题《美好世界 女神 sexfriend》。'),
(56, 21, 22, 1470300007, 1, 'post', 35, 'moe回复了您的主题《你的名字》。'),
(57, 22, 21, 1470302811, 1, 'repost', 235, 'adad在主题《你的名字》中回复了您的回复'),
(58, 21, 22, 1470333126, 0, 'post', 36, 'moe回复了您的主题《A站居然在施工中！》。'),
(59, 21, 22, 1470469506, 0, 'post', 36, 'moe回复了您的主题《A站居然在施工中！》。'),
(60, 1, 21, 1470677419, 0, 'post', 37, 'admin回复了您的主题《AutoCAD 2014 》。'),
(61, 23, 1, 1471464809, 1, 'post', 38, 'aaaa回复了您的主题《七夕啦！！》。'),
(62, 1, 21, 1472965877, 0, 'post', 30, 'admin回复了您的主题《悠久的翼》。');

-- --------------------------------------------------------

--
-- 表的结构 `think_repost`
--

CREATE TABLE IF NOT EXISTS `think_repost` (
  `rid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `lc` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=290 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_repost`
--

INSERT INTO `think_repost` (`rid`, `bid`, `pid`, `uid`, `text`, `time`, `lc`) VALUES
(87, 0, 5, 13, '<p>23</p>', 1469904392, 0),
(88, 0, 5, 13, '			', 1469904394, 0),
(89, 0, 5, 13, '			', 1469904396, 0),
(90, 0, 5, 13, '			', 1469904398, 0),
(91, 0, 5, 13, '			', 1469904400, 0),
(92, 0, 5, 13, '			', 1469904403, 0),
(93, 0, 5, 13, '			', 1469905107, 0),
(94, 0, 5, 13, '			', 1469905109, 0),
(95, 0, 5, 13, '			', 1469905111, 0),
(96, 0, 5, 13, '			', 1469905113, 0),
(97, 0, 5, 13, '<p>少时诵诗书</p>', 1469905118, 0),
(98, 0, 5, 13, '			', 1469905120, 0),
(99, 0, 5, 13, '<p>	</p><blockquote>\r\n		<p>少时诵诗书</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	<br/></p>', 1469905177, 0),
(100, 0, 5, 13, '			', 1469905243, 0),
(101, 0, 5, 13, '			', 1469905246, 0),
(102, 0, 5, 13, '<p>	</p><blockquote>\r\n						</blockquote><p>\r\n	</p><hr/><p>\r\n	<br/></p>', 1469905334, 0),
(103, 0, 5, 13, '<p>	</p><blockquote>\r\n						</blockquote><p>\r\n	</p><hr/><p>\r\n	<br/></p>', 1469905337, 0),
(104, 0, 6, 13, '<p>fdasdfasd</p>', 1469906031, 0),
(105, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>fdasdfasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	dfsfsdf</p>', 1469906035, 0),
(106, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>fdasdfasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	6521621632</p>', 1469906055, 0),
(107, 0, 9, 13, '<p>asdfsaf</p>', 1469906367, 0),
(108, 0, 9, 13, '<p>sdfsdfs</p>', 1469906370, 0),
(109, 0, 9, 13, '<p>dfsdfsdfs</p>', 1469906372, 0),
(110, 0, 9, 13, '<p>sdfsdfsdf</p>', 1469906376, 0),
(111, 0, 10, 13, '<p>sadsa</p>', 1469906461, 0),
(112, 0, 10, 13, '<p>dsfsdf</p>', 1469906463, 0),
(113, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>', 1469906519, 0),
(114, 0, 10, 13, '<p>sdasdasd</p>', 1469906527, 0),
(115, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	656545441</p>', 1469906636, 0),
(116, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>', 1469906910, 0),
(117, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdfsd</p>', 1469906915, 0),
(118, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdfsd</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	assada</p>', 1469907070, 0),
(119, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdfsd</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	assada</p>		<small>----moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sadasdasda</p>', 1469907107, 0),
(120, 0, 10, 13, '<p><img src="/Uploads/image/20160731/1469907135392535.jpg" title="1469907135392535.jpg" alt="itano22.jpg"/></p><p>222</p>', 1469907150, 0),
(121, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p><img src="/Uploads/image/20160731/1469907135392535.jpg" title="1469907135392535.jpg" alt="itano22.jpg"/></p><p>222</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160731/1469907170883356.jpg" title="1469907170883356.jpg" alt="081.jpg"/></p>', 1469907173, 0),
(122, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p><img src="/Uploads/image/20160731/1469907135392535.jpg" title="1469907135392535.jpg" alt="itano22.jpg"/></p><p>222</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160731/1469907170883356.jpg" title="1469907170883356.jpg" alt="081.jpg"/></p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160731/1469907233712735.jpg" title="1469907233712735.jpg" alt="137.jpg"/></p>', 1469907235, 0),
(123, 0, 6, 13, '<p>q&nbsp;&nbsp;&nbsp;&nbsp;w&nbsp;&nbsp;&nbsp;&nbsp;qw</p>', 1469947427, 0),
(124, 0, 6, 13, '<p>QWQ</p>', 1469947431, 0),
(125, 0, 10, 13, '<p>	</p><blockquote>\r\n		<span class="grey">引用 moma：</span>\r\n		<p>\r\n		</p><p>sdasdasd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aszasasasasa</p>', 1469947565, 0),
(126, 0, 10, 13, '<p>	</p><blockquote class="muted">\r\n		引用 moma：		<p>\r\n		</p><p>	</p><blockquote>\r\n		<span class="grey">引用 moma：</span>\r\n		<p>\r\n		</p><p>sdasdasd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aszasasasasa</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfasdasda</p>', 1469948237, 0),
(127, 0, 8, 13, '<p>sdafsdfsd</p>', 1469948272, 0),
(128, 0, 8, 13, '<p>	</p><blockquote class="muted">\r\n		引用 moma：		<p>\r\n		</p><p>sdafsdfsd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdf</p>', 1469948276, 0),
(129, 0, 8, 13, '<p>	</p><blockquote>\r\n		<span class="muted">引用 moma：</span>\r\n		<p>\r\n		</p><p>	</p><blockquote class="muted">\r\n		引用 moma：		<p>\r\n		</p><p>sdafsdfsd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdf</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdazsda</p>', 1469948295, 0),
(130, 0, 8, 13, '<p>11111111111</p>', 1469948301, 0),
(131, 0, 8, 13, '<p>	</p><blockquote>\r\n		<span class="muted">引用 moma：</span>\r\n		<p>\r\n		</p><p>11111111111</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	ewrwerwer</p>', 1469948307, 0),
(132, 0, 6, 13, '<p>	</p><blockquote>\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>QWQ</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aaaaaaaaaaaa</p>', 1469948366, 0),
(133, 0, 8, 13, '<p>	</p><blockquote class="pull-right">\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<span class="muted">引用 moma：</span>\r\n		<p>\r\n		</p><p>11111111111</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	ewrwerwer</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	asdsdaw</p>', 1469948479, 0),
(134, 0, 8, 13, '<p>1111111111111111111</p>', 1469948492, 0),
(135, 0, 8, 13, '<p>	</p><blockquote class="pull-right">\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>1111111111111111111</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	ewrwerwer</p>', 1469948497, 0),
(136, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>QWQ</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aaaaaaaaaaaa</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aaaaaaaaaaaaaaa</p>', 1469948582, 0),
(137, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>fdasdfasd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	dfwerwerwe</p>', 1469948601, 0),
(138, 0, 8, 13, '<p>f&#39;d&#39;s&#39;f&#39;s&#39;d</p>', 1469952142, 0),
(139, 0, 4, 13, '<p>第三方地方</p>', 1469980314, 0),
(140, 0, 4, 13, '<p>风格豆腐干豆腐干</p>', 1469980319, 0),
(141, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>风格豆腐干豆腐干</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	斯蒂芬斯蒂芬</p>', 1469980396, 0),
(142, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>风格豆腐干豆腐干</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	斯蒂芬斯蒂芬</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2饿&nbsp;&nbsp;&nbsp;&nbsp;2俄而且为轻微其闻气味<br/></p>', 1469980408, 0),
(143, 0, 12, 13, '<p>sdfsd&nbsp;</p>', 1469981244, 0),
(144, 0, 12, 13, '<p>fsdfsdf</p>', 1469981249, 0),
(145, 0, 4, 13, '<p>sdsdsdsdsdsdsdsdsdsdsdsd</p>', 1469981326, 0),
(146, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>azsxasd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sssssssssssss</p>', 1469981406, 0),
(147, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>azsxasd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	22222222</p>', 1469981423, 0),
(148, 0, 10, 13, '<p>sdsfsdfsdfsdf</p>', 1469981484, 0),
(149, 0, 14, 13, '<p>11111111</p>', 1469983094, 0),
(150, 0, 14, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>11111111</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	12123123</p>', 1469983098, 0),
(151, 0, 2, 13, '<p>日图尔特</p>', 1469984213, 0),
(152, 0, 2, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>日图尔特</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	豆腐干地方</p>', 1469984216, 0),
(153, 0, 15, 10, '<p>sssssssssssssssssssssssssssss</p>', 1470037106, 0),
(154, 0, 15, 10, '<p>xczxczxczxc</p>', 1470037160, 0),
(155, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	etretert</p>', 1470037777, 0),
(156, 0, 15, 10, '<p>sad</p>', 1470038323, 0),
(157, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	终身大事的</p>', 1470038608, 0),
(158, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	asdASD啊是打扫打扫</p>', 1470039971, 0),
(159, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	1515151</p>', 1470040242, 0),
(160, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>', 1470040300, 0),
(161, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>', 1470040307, 0),
(162, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>', 1470040307, 0),
(163, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>', 1470040307, 0),
(164, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxc</p>', 1470040314, 0),
(165, 0, 15, 10, '<p>asdfasdf</p>', 1470040837, 0),
(166, 0, 15, 10, '<p>的说法撒旦法</p>', 1470041026, 0),
(167, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>的说法撒旦法</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	撒打算打算打算</p>', 1470041749, 0),
(168, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	drtertert</p>', 1470043248, 0),
(169, 0, 15, 10, '<p>qwqwqwqwqwqwqwqwqwqwqwqwqwqw</p>', 1470043644, 0),
(170, 0, 14, 10, '<p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>', 1470043932, 0),
(171, 0, 14, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxcz</p>', 1470043953, 0),
(172, 0, 14, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><p><br/></p><hr/><p>卖萌可耻！！！！！<img src="http://img.baidu.com/hi/jx2/j_0013.gif"/></p>', 1470043982, 0),
(173, 0, 14, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxcz</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	我去</p>', 1470044035, 0),
(174, 0, 14, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxcz</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>呵呵呵</p>', 1470044054, 0),
(175, 0, 16, 13, '<p>不高吗？</p>', 1470044094, 0),
(176, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊</p>', 1470044107, 0),
(177, 0, 16, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	自行车ZXZXZ</p>', 1470044124, 0),
(178, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	自行车ZXZXZ</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	拭擦在市场</p>', 1470044139, 0),
(179, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	阿娥分哇</p>', 1470044176, 0),
(180, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊</p>', 1470044252, 0),
(181, 0, 17, 10, '<p>1</p>', 1470044366, 0),
(182, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>', 1470044382, 0),
(183, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	22</p>', 1470044566, 0),
(184, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3</p>', 1470044589, 0),
(185, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	22</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3</p>', 1470044621, 0),
(186, 0, 17, 10, '<p>死死死死死死死死死死死死</p>', 1470044696, 0),
(187, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>死死死死死死死死死死死死</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333333333</p>', 1470044709, 0),
(188, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>', 1470044721, 0),
(189, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>', 1470044792, 0),
(190, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', 1470044810, 0),
(191, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	下次vzczxcxzczx</p>', 1470044829, 0),
(192, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊</p>', 1470045075, 0),
(193, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	爱爱爱</p>', 1470045151, 0),
(194, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊大多数打算</p>', 1470045206, 0),
(195, 0, 18, 13, '<p>分vs</p>', 1470045229, 0),
(196, 0, 18, 10, '<p>的法撒旦发射</p>', 1470045246, 0),
(197, 0, 19, 13, '<p>跌幅大幅放大</p>', 1470045267, 0),
(198, 0, 20, 13, '<p>打发打发</p>', 1470045294, 0),
(199, 0, 21, 13, '<p>死死死死死死</p>', 1470045319, 0),
(200, 0, 22, 13, '<p>斯蒂芬森的</p>', 1470045339, 0),
(201, 0, 22, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>斯蒂芬森的</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	豆腐干豆腐干</p>', 1470045387, 0),
(202, 0, 22, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>斯蒂芬森的</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	豆腐干豆腐干</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	薪酬增长速度成为撒d</p>', 1470045396, 0),
(203, 0, 22, 10, '<p>斯蒂芬斯蒂芬</p>', 1470049914, 0),
(204, 0, 22, 10, '<p>呜呜呜呜呜呜呜呜呜呜呜</p>', 1470050204, 0),
(205, 0, 22, 10, '<p>额的点点滴滴的</p>', 1470050271, 0),
(206, 0, 22, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>斯蒂芬森的</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊色情啊为</p>', 1470050315, 0),
(207, 0, 22, 10, '<p>下次在现场</p>', 1470050879, 0),
(208, 0, 22, 10, '<p>滴滴</p>', 1470050917, 0),
(209, 0, 22, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>下次在现场</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	俄方为不</p>', 1470050929, 0),
(210, 0, 16, 10, '<p>速度vs</p>', 1470050946, 0),
(211, 0, 22, 1, '<p>yooo!</p>', 1470059860, 0),
(219, 0, 29, 1, '<p>2333</p>', 1470107639, 0),
(220, 0, 29, 21, '<p>哟 还挺忙的啊！？</p>', 1470108514, 0),
(221, 0, 30, 21, '<p><img src="/Uploads/image/20160802/1470108599643735.png" title="1470108599643735.png" alt="57944060_p0.png"/>nyanya~！！！！</p>', 1470108638, 0),
(222, 0, 30, 21, '<p>感觉如何！！</p>', 1470130568, 0),
(223, 0, 29, 1, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>哟 还挺忙的啊！？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moe</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	那是！我日理万机</p>', 1470134741, 0),
(224, 0, 31, 1, '<p>求片子 代码！！！！</p>', 1470134792, 0),
(225, 0, 32, 1, '<h2 style="box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 10px; font-size: 30px; white-space: normal; background-color: rgb(255, 255, 255);">神秘代码：</h2><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);">482E27B94FF8FD5AA344E7342258AD7E6869E65D</p><p><br/></p>', 1470141500, 0),
(226, 0, 30, 1, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160802/1470108599643735.png" title="1470108599643735.png" alt="57944060_p0.png"/>nyanya~！！！！</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moe</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2333</p>', 1470157880, 0),
(227, 0, 33, 21, '<p>玩的6 啊！！！</p>', 1470208767, 0),
(228, 0, 33, 21, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>玩的6 啊！！！</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moe</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	可以啊</p>', 1470208782, 0),
(229, 0, 33, 21, '<p>https://zh.chaturbate.com/koketochka555/</p>', 1470228112, 0),
(230, 0, 34, 1, '<p><img src="/Uploads/image/20160803/1470233506752117.jpg" title="1470233506752117.jpg" alt="51206141_p0.jpg"/></p><p><br/></p><p><br/></p><p>tyu</p>', 1470233519, 0),
(231, 0, 34, 1, '<p><img src="http://img.baidu.com/hi/jx2/j_0010.gif" style="white-space: normal;"/><img src="http://img.baidu.com/hi/jx2/j_0010.gif" style="white-space: normal;"/><img src="http://img.baidu.com/hi/jx2/j_0010.gif" style="white-space: normal;"/><img src="http://img.baidu.com/hi/jx2/j_0010.gif" style="white-space: normal;"/></p><p>233</p>', 1470233577, 0),
(232, 0, 34, 22, '<p>你的车呢？？</p>', 1470238250, 0),
(233, 0, 32, 22, '<p>这个不错<img src="http://img.baidu.com/hi/face/i_f29.gif"/><img src="http://img.baidu.com/hi/face/i_f29.gif" style="white-space: normal;"/><img src="http://img.baidu.com/hi/face/i_f29.gif" style="white-space: normal;"/></p>', 1470238671, 0),
(234, 0, 35, 21, '<p><img src="http://img.baidu.com/hi/jx2/j_0024.gif"/>新海诚...</p>', 1470300007, 0),
(235, 0, 35, 22, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="http://img.baidu.com/hi/jx2/j_0024.gif"/>新海诚...</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moe</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	有轻小说可以看！</p>', 1470302811, 0),
(236, 0, 36, 21, '<p><img src="/Uploads/image/20160805/1470333115155971.png" title="1470333115155971.png" alt="gz.png"/></p><p>现在这个吊样！！！</p>', 1470333126, 0),
(237, 0, 36, 21, '<p>全部回档到2个月前！！！<img src="http://img.baidu.com/hi/face/i_f29.gif"/></p>', 1470469506, 0),
(238, 0, 37, 1, '<pre style="margin-top: 10px; margin-bottom: 0px; padding: 10px; border: 1px dotted rgb(119, 136, 85); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; width: 685px; font-size: 12px; background-color: rgb(245, 245, 245);">&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;href=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css&quot;&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/jquery-1.8.3.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js&quot;&gt;&lt;/script&gt;</pre><p><br/></p>', 1470677419, 0),
(239, 0, 38, 1, '<p>http://img.ooacg.net/Upload/image/i_57ab566f23971.jpg</p>', 1470846639, 0),
(240, 0, 38, 1, '<p>aaaaaaaaaaaaaaaaa</p>', 1471464781, 0),
(241, 0, 38, 23, '<p>aaaaaaaaaaaaaaaa</p>', 1471464809, 0),
(242, 0, 32, 1, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><h2 style="box-sizing: border-box; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(51, 51, 51); margin-top: 20px; margin-bottom: 10px; font-size: 30px; white-space: normal; background-color: rgb(255, 255, 255);">神秘代码：</h2><p style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; line-height: 20px; white-space: normal; background-color: rgb(255, 255, 255);">482E27B94FF8FD5AA344E7342258AD7E6869E65D</p><p><br/></p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>我草！！！！！！！！</p><p><br/></p>', 1472886357, 0),
(243, 0, 39, 1, '<p>好蛋疼的一天a @@!!</p>', 1472908481, 0),
(244, 0, 39, 1, '<p><img src="/Uploads/image/20160903/1472909893106254.jpeg" title="1472909893106254.jpeg" alt="20150109090936_KFeXY.jpeg"/><br/><br/></p><p>tjf</p>', 1472909904, 0),
(245, 0, 39, 1, '<p><img src="/Uploads/image/20160903/1472909933990795.jpg" title="1472909933990795.jpg" alt="9970ca30b158faadb44828805bc5a649.jpg"/></p><p><br/></p><p>犀利的眼神</p>', 1472909961, 0),
(246, 0, 38, 1, '<p>csdcasdasdas</p>', 1472910491, 0),
(247, 0, 38, 1, '<p>asdasda</p>', 1472910495, 0),
(248, 0, 38, 1, '<p>asdasdasdasdas</p>', 1472910500, 0),
(249, 0, 38, 1, '<p>asdasdasdasdasdasdasdasd</p>', 1472910505, 0),
(250, 0, 38, 1, '<p>asdsadasdasdasdasdasda</p>', 1472910514, 0),
(251, 0, 38, 1, '<p>asdasdasdasd</p>', 1472910520, 0),
(252, 0, 38, 1, '<p>asdasdasdadasdasdasd</p>', 1472910526, 0),
(253, 0, 38, 1, '<p>aaaaaa</p>', 1472910530, 0),
(254, 0, 38, 1, '<p>aaaaaaaaaaaaaaaa</p>', 1472910535, 0),
(255, 0, 38, 1, '<p>aaaaaaddddd</p>', 1472910539, 0),
(256, 0, 38, 1, '<p>dddddddddddddddddddddddddddddddd</p>', 1472910544, 0),
(257, 0, 38, 1, '<p>ddddddddddddddddddddd</p>', 1472910548, 0),
(258, 0, 38, 1, '<p>ddddddddddddddddddddddd</p>', 1472910552, 0),
(259, 0, 38, 1, '<p>ddddddddddddddddddddaaaaaaaaaaaaaa</p>', 1472910557, 0),
(260, 0, 38, 1, '<p>aaaaaaaaaaaaaaa</p>', 1472910563, 0),
(261, 0, 38, 1, '<p>aaaaaaaaaaaaaaaaaa</p>', 1472910569, 0),
(262, 0, 38, 1, '<p>fffffffffffffff</p>', 1472910574, 0),
(263, 0, 38, 1, '<p>gggggggggggg</p>', 1472910579, 0),
(264, 0, 38, 1, '<p>hhhhhhhhhhh</p>', 1472910584, 0),
(265, 0, 38, 1, '<p>hhhhhhhhhhrrrrrrrrr</p>', 1472910589, 0),
(266, 0, 38, 1, '<p>rrrrrrrrrrrrrrrrrr</p>', 1472910595, 0),
(267, 0, 38, 1, '<p>bbbbbbbbbbbbbbb</p>', 1472910600, 0),
(268, 0, 38, 1, '<p>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>', 1472910606, 0),
(269, 0, 39, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>好蛋疼的一天a @@!!</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	对房产税的方式</p>', 1472913631, 0),
(270, 0, 41, 1, '<p><img src="http://img.baidu.com/hi/jx2/j_0002.gif"/></p><p>多学点知识 哲学</p>', 1472919598, 0),
(271, 0, 37, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><pre style="margin-top: 10px; margin-bottom: 0px; padding: 10px; border: 1px dotted rgb(119, 136, 85); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; width: 685px; font-size: 12px; background-color: rgb(245, 245, 245);">&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;href=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css&quot;&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/jquery-1.8.3.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js&quot;&gt;&lt;/script&gt;</pre><p><br/></p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	有问题~~~</p><p>这个不是这个类别里面的</p><p>Jquery Mobile</p>', 1472919666, 0),
(272, 0, 37, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><pre style="margin-top: 10px; margin-bottom: 0px; padding: 10px; border: 1px dotted rgb(119, 136, 85); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; width: 685px; font-size: 12px; background-color: rgb(245, 245, 245);">&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;href=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css&quot;&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/jquery-1.8.3.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js&quot;&gt;&lt;/script&gt;</pre><p><br/></p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	有问题~~~</p><p>这个不是这个类别里面的</p><p>Jquery Mobile</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="http://img.baidu.com/hi/jx2/j_0013.gif"/>再来一次看看</p>', 1472919688, 0),
(273, 0, 37, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><pre style="margin-top: 10px; margin-bottom: 0px; padding: 10px; border: 1px dotted rgb(119, 136, 85); font-family: Consolas, &quot;Courier New&quot;, Courier, monospace; width: 685px; font-size: 12px; background-color: rgb(245, 245, 245);">&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;href=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css&quot;&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/jquery-1.8.3.min.js&quot;&gt;&lt;/script&gt;\r\n&lt;script&nbsp;src=&quot;http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js&quot;&gt;&lt;/script&gt;</pre><p><br/></p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	有问题~~~</p><p>这个不是这个类别里面的</p><p>Jquery Mobile</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="http://img.baidu.com/hi/jx2/j_0013.gif"/>再来一次看看</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	Again~~~</p>', 1472919703, 0),
(274, 0, 41, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p><img src="http://img.baidu.com/hi/jx2/j_0002.gif"/></p><p>多学点知识 哲学</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="http://img.baidu.com/hi/face/i_f29.gif"/>哲学 你说呢</p>', 1472963937, 0),
(275, 0, 39, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>好蛋疼的一天a @@!!</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	对房产税的方式</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	不说了....</p>', 1472964217, 0),
(276, 0, 39, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160903/1472909893106254.jpeg" title="1472909893106254.jpeg" alt="20150109090936_KFeXY.jpeg"/><br/><br/></p><p>tjf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160904/1472964245240884.jpg" title="1472964245240884.jpg" alt="36c6e2bd10e32a17fb25cdc3be355c89.jpg"/></p>', 1472964248, 0),
(277, 0, 32, 1, '<p><img src="/Uploads/image/20160904/1472964298477462.jpg" title="1472964298477462.jpg" alt="082.jpg"/></p><p><br/></p><p>2333</p>', 1472964305, 0),
(278, 0, 38, 1, '<p>dcsdfdsfsdfd</p>', 1472964908, 0),
(279, 0, 38, 1, '<p>zfdsdfsdf</p>', 1472965165, 29),
(280, 0, 38, 1, '<p>0133</p>', 1472965198, 30),
(281, 0, 38, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>0133</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	vcxdvsdsdfsdf</p>', 1472965321, 31),
(282, 0, 42, 1, '<p>回复测试！</p>', 1472965828, 2),
(283, 0, 42, 1, '<p>不成功？？</p>', 1472965842, 3),
(284, 0, 42, 1, '<p>1楼。。。。。</p>', 1472965855, 4),
(285, 0, 30, 1, '<p>索命鬼</p>', 1472965877, 5),
(286, 0, 30, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>索命鬼</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	0000000000000000</p>', 1472965900, 6),
(287, 0, 43, 1, '<p>吱吱吱吱吱吱</p>', 1472966169, 2),
(288, 0, 43, 1, '<p>撒打算</p>', 1472966240, 2),
(289, 0, 44, 1, '<p>diree</p>', 1472966301, 1);

-- --------------------------------------------------------

--
-- 表的结构 `think_torrent`
--

CREATE TABLE IF NOT EXISTS `think_torrent` (
  `tid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `magnet` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `torrent` varchar(255) NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_torrent`
--

INSERT INTO `think_torrent` (`tid`, `time`, `magnet`, `hash`, `name`, `torrent`, `ip`) VALUES
(13, 1469810755, 'magnet:?xt=urn:btih:7CD73AA944D713DE74EE7DC62722D3C5864F5E08', '7CD73AA944D713DE74EE7DC62722D3C5864F5E08', '[Yoshiura Kazuya] Kizashi Ch. 1 [Chinese] [闲着没事就个人汉化组].zip.torrent', './torrent/579b8843ab86a.torrent', ''),
(14, 1469810802, 'magnet:?xt=urn:btih:593E96220B628E2C11790ACE7C9F36B8D1B7E5D6', '593E96220B628E2C11790ACE7C9F36B8D1B7E5D6', '[大嘘] 街角あんよ (COMIC BAVEL 2016年8月号) [中国翻訳] [DL版].zip.torrent', './torrent/579b8872d51c0.torrent', ''),
(15, 1469810912, 'magnet:?xt=urn:btih:11AC14786D585ECDA7A93686D86C5B8F6F57E78E', '11AC14786D585ECDA7A93686D86C5B8F6F57E78E', '[Tsuttsu] マフラーの中でー (COMIC Koh Vol.3) [Chinese] [无毒汉化组].zip.torrent', './torrent/579b88e0a9b06.torrent', '');

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

CREATE TABLE IF NOT EXISTS `think_user` (
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `pnum` int(11) NOT NULL,
  `rnum` int(11) NOT NULL,
  `jointime` int(11) NOT NULL,
  `joinip` varchar(128) NOT NULL,
  `lasttime` int(11) NOT NULL,
  `lastip` varchar(128) NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `joininfo` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `cookie` varchar(128) NOT NULL,
  `point` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`uid`, `gid`, `name`, `image`, `password`, `pnum`, `rnum`, `jointime`, `joinip`, `lasttime`, `lastip`, `info`, `joininfo`, `cookie`, `point`) VALUES
(1, 1, 'admin', '/Uploads/tx/1.jpg', 'a66abb5684c45962d887564f08346e8d', 15, 67, 0, '', 1472963914, '106.185.35.244', '', '[{"lasttime":1469511467,"lastip":"127.0.0.1"},{"lasttime":1469511595,"lastip":"127.0.0.1"},{"lasttime":1469511704,"lastip":"127.0.0.1"},{"lasttime":1469512610,"lastip":"127.0.0.1"},{"lasttime":1469512726,"lastip":"127.0.0.1"},{"lasttime":1469512856,"lastip":"127.0.0.1"},{"lasttime":1469512914,"lastip":"127.0.0.1"},{"lasttime":1469513114,"lastip":"127.0.0.1"},{"lasttime":1469513143,"lastip":"127.0.0.1"},{"lasttime":1469513262,"lastip":"127.0.0.1"},{"lasttime":1469513263,"lastip":"127.0.0.1"},{"lasttime":1469513279,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469520369,"lastip":"127.0.0.1"},{"lasttime":1469520484,"lastip":"127.0.0.1"},{"lasttime":1469520707,"lastip":"127.0.0.1"},{"lasttime":1470059849,"lastip":"127.0.0.1"},{"lasttime":1470096559,"lastip":"127.0.0.1"},{"lasttime":1470105561,"lastip":"127.0.0.1"},{"lasttime":1470107231,"lastip":"36.149.197.200"},{"lasttime":1470107947,"lastip":"115.199.105.85"},{"lasttime":1470130734,"lastip":"36.149.197.200"},{"lasttime":1470230532,"lastip":"36.149.197.58"},{"lasttime":1470283166,"lastip":"36.149.197.58"},{"lasttime":1470677375,"lastip":"106.185.35.244"},{"lasttime":1470846632,"lastip":"36.149.197.83"},{"lasttime":1471464770,"lastip":"36.149.69.65"},{"lasttime":1471464828,"lastip":"36.149.69.65"},{"lasttime":1472831334,"lastip":"36.149.197.235"},{"lasttime":1472886341,"lastip":"36.149.70.171"},{"lasttime":1472912825,"lastip":"36.149.70.171"},{"lasttime":1472963914,"lastip":"106.185.35.244"}]', 'd2798fd175c3386d069cdb873ee5d412', 3),
(5, 0, 'aaaaaa', '', 'dsfsdfsdfs', 0, 0, 1469520234, '127.0.0.1', 1469520234, '127.0.0.1', '', '', 'ffb9d06d744fc88459fb7feca668ec15', 0),
(6, 0, 'sdfsdfsdf', '', 'sdfsdfsdf', 0, 0, 1469520247, '127.0.0.1', 1469520247, '127.0.0.1', '', '', 'a816aa8e16d33a77855872798d236901', 0),
(10, 0, 'aaa', '/Uploads/tx/10.jpg', '552e6a97297c53e592208cf97fbb3b60', 5, 42, 1469522851, '127.0.0.1', 1470097670, '127.0.0.1', '', '[{"lasttime":1469523069,"lastip":"127.0.0.1"},{"lasttime":1469523102,"lastip":"127.0.0.1"},{"lasttime":1469554182,"lastip":"127.0.0.1"},{"lasttime":1470037106,"lastip":"127.0.0.1"},{"lasttime":1470072230,"lastip":"127.0.0.1"},{"lasttime":1470097670,"lastip":"127.0.0.1"}]', '81fd232cc051a619a140e6e9b29e7bd0', 0),
(11, 0, 'mom', '', '863eabdc5516ea49a5c85c7a8cd3979e', 0, 0, 1469882797, '127.0.0.1', 1469883897, '127.0.0.1', '', '[{"lasttime":1469883897,"lastip":"127.0.0.1"}]', '', 0),
(12, 0, 'mom7', '', 'c50c223afa2d625a86f32c270e3710ed', 0, 0, 1469884121, '127.0.0.1', 1469884121, '127.0.0.1', '', '', '', 0),
(13, 0, 'moma', '/Uploads/tx/13.jpg', '9811aa4d32e2217e12e0bff4fb8fb35a', -1, 33, 1469884139, '127.0.0.1', 1470059742, '127.0.0.1', '', '[{"lasttime":1469980313,"lastip":"127.0.0.1"},{"lasttime":1470039327,"lastip":"127.0.0.1"},{"lasttime":1470043552,"lastip":"127.0.0.1"},{"lasttime":1470059742,"lastip":"127.0.0.1"}]', '', 0),
(14, 0, 'admin下次', '', '151c700edf12eeb0f163aec969cf9a51', 0, 0, 1470072542, '127.0.0.1', 1470072542, '127.0.0.1', '', '', '', 0),
(15, 0, '斯蒂芬斯蒂芬', '', 'c0d9b6518f95a97650228ee147997423', 0, 0, 1470072560, '127.0.0.1', 1470072560, '127.0.0.1', '', '', '', 0),
(16, 0, '电风扇地方', '', '7de0723def52fd86d2a65fa210a087c1', 0, 0, 1470072667, '127.0.0.1', 1470072667, '127.0.0.1', '', '', '', 0),
(17, 0, '阿萨斯阿萨德', '', 'ce7a47438e2823e5c23aeecde5984179', 0, 0, 1470073482, '127.0.0.1', 1470073482, '127.0.0.1', '', '', '', 0),
(20, 0, '阿斯达萨斯', '', '7b72094bf9ac5f8082114a23c109d825', 0, 0, 1470074234, '127.0.0.1', 1470074234, '127.0.0.1', '', '', '', 0),
(21, 0, 'moe', '/Uploads/tx/21.jpg', '6bd987edb55c16d2fb86008058bc6030', 4, 9, 1470108377, '36.149.197.200', 1470553136, '183.249.162.224', '', '[{"lasttime":1470130568,"lastip":"36.149.197.200"},{"lasttime":1470205183,"lastip":"36.149.197.58"},{"lasttime":1470222211,"lastip":"36.149.197.58"},{"lasttime":1470300007,"lastip":"36.149.197.58"},{"lasttime":1470469469,"lastip":"183.249.163.116"},{"lasttime":1470553136,"lastip":"183.249.162.224"}]', 'ffb19e7f801936fd2a78853859634527', 0),
(22, 0, 'adad', '/Uploads/tx/22.jpg', '0684a1fb81d37b3bab672863708130ce', 2, 3, 1470238228, '36.149.197.58', 1470302728, '36.149.197.58', '', '[{"lasttime":1470302728,"lastip":"36.149.197.58"}]', 'c59074512b3da3fe1402e76036db8fff', 0),
(23, 0, 'aaaa', '', '6da39cbce5bd7e3bdd4547a0a6d4e72f', 0, 1, 1471464801, '36.149.69.65', 1471464801, '36.149.69.65', '', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_admin`
--
ALTER TABLE `think_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `think_board`
--
ALTER TABLE `think_board`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `think_love`
--
ALTER TABLE `think_love`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `think_message`
--
ALTER TABLE `think_message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `think_post`
--
ALTER TABLE `think_post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `think_remind`
--
ALTER TABLE `think_remind`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `think_repost`
--
ALTER TABLE `think_repost`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `think_torrent`
--
ALTER TABLE `think_torrent`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `think_user`
--
ALTER TABLE `think_user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `think_admin`
--
ALTER TABLE `think_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `think_board`
--
ALTER TABLE `think_board`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `think_love`
--
ALTER TABLE `think_love`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `think_message`
--
ALTER TABLE `think_message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `think_post`
--
ALTER TABLE `think_post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `think_remind`
--
ALTER TABLE `think_remind`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `think_repost`
--
ALTER TABLE `think_repost`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT for table `think_torrent`
--
ALTER TABLE `think_torrent`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `think_user`
--
ALTER TABLE `think_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
