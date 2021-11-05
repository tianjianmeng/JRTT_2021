-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        8.0.19 - MySQL Community Server - GPL
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  10.3.0.5855
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 jrtt_database 的数据库结构
CREATE DATABASE IF NOT EXISTS `jrtt_database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jrtt_database`;

-- 导出  表 jrtt_database.article 结构
CREATE TABLE IF NOT EXISTS `article` (
  `aut_id` int NOT NULL,
  `art_id` int NOT NULL,
  `aut_name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `aut_photo` varchar(500) DEFAULT NULL,
  `pubdate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`art_id`),
  UNIQUE KEY `title` (`title`),
  KEY `FK_article_user` (`aut_id`),
  KEY `FK_article_user_3` (`aut_photo`),
  KEY `FK_article_user_2` (`aut_name`),
  CONSTRAINT `FK_article_user` FOREIGN KEY (`aut_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_article_user_2` FOREIGN KEY (`aut_name`) REFERENCES `user` (`name`),
  CONSTRAINT `FK_article_user_3` FOREIGN KEY (`aut_photo`) REFERENCES `user` (`photo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.article 的数据：~25 rows (大约)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT IGNORE INTO `article` (`aut_id`, `art_id`, `aut_name`, `title`, `content`, `aut_photo`, `pubdate`) VALUES
	(1, 1, '封面网', '紧急！10岁男孩被困电梯40多分钟！获救时竟在淡定写作业…', '10月12日中午11点40分左右，福建福州市一小区电梯发生故障，当消防人员好不容易将电梯门破拆后，发现一名10岁左右的男孩正在电梯里席地而坐，正淡定地写着作业......此时孩子被困在电梯内已有40分钟了，从电梯里走出来时孩子捧着当桌子的书包上面还有一本作业。10岁的孩子怎么会如此淡定？母亲郑女士表示：因为电梯故障太频繁了。郑女士告诉记者，事发时，她在家里等儿子回来听到外面有人喊“有小孩困在电梯里”感觉就是自己儿子，立刻冲了出去走到电梯口，保安把电梯门撬了一条缝，让空气进去。郑女士从门缝里看到儿子席地而坐，正埋头写作业。不久，消防和公安来到现场孩子被顺利救出。事后她从儿子口中得知，他进去以后发现电梯有点抖，到了自家楼层7楼以后，电梯门却怎么也打不开，电梯又下去了，下去后，门依然打不开电梯就又上去了，孩子立刻按紧急铃报警，保安听到报警后发现电梯一直上上下下没有办法处理就先关闭了电源然后打维修电话找人来。郑女士说，儿子还曾用佩戴的电话手表尝试报警求助因为电梯里的信号不好就在断断续续中不停重复自己的位置，最后得到了民警和消防的帮助。虽然儿子没有受到伤害，但郑女士有点气愤因为这已经不是她的家人第一次被电梯困住。“之前人被困在里面半小时，我们都反映过这个问题了，物业也没人回复。”\n记者找到小区保安，保安大哥称，这是个20多年的老小区，电梯确实有一些老毛病。小区保安称：“老电梯偶尔线路故障，开关有时候送一下它又会恢复，保安能操作的就操作一下，不能操作的就报修电梯的过来，他们这次要重新买零件，大修一下。”为男孩的电梯自救点个赞！', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120630.png', '2021/10/22'),
	(2, 2, '观察者网', '中国与不丹签署边界谈判备忘录，印媒密集报道，印度外交部发言人火速回应', '据中国外交部网站消息，中国与不丹14日签署《关于加快中不边界谈判“三步走”路线图的谅解备忘录》。《印度快报》《印度时报》等多家印度媒体报道称，印方已经“注意”到这一消息。“我们注意到不丹和中国今天签署了谅解备忘录。你们知道，不丹和中国自1984年以来一直在进行边界谈判。印度也同样一直在与中国进行边界谈判。”印度外交部发言人阿林达姆·巴格奇14日这样说道。《印度斯坦时报》提到，对于不丹是否让印度知晓与中国签署备忘录的消息，阿林达姆·巴格奇没有做出回应。不过该报道宣称，由于印度和不丹在外交政策议题上的紧密合作，印方不太可能被这一事态发展弄得措手不及。报道还援引专家分析称，考虑到谅解备忘录可能会对印度与中国之间本已令人担忧的关系产生影响，印度的谨慎反应是可以理解的。而印媒在报道上述消息时，几乎都提到了2017年中印持续70多天的洞朗对峙。印度军方人员2017年非法越界，在洞朗地区与中国边防部队对峙。印度打出所谓“保护不丹”的幌子，将洞朗地区说成是中国、印度、不丹的“三国交界点”，为其越界侵犯中国领土“正名”，企图制造洞朗地区争议，阻止并牵制中不边界谈判进程。不过值得一提的是，2017年8月11日，印度外长与不丹外相丹曲·多吉举行会谈，这也是当时印中对峙之后两人的首次见面。鉴于印度媒体此前频频逼不丹就洞朗对峙事件表态，希望不丹给日益站不住脚的“帮不丹抵抗中国侵略”的说法站台，此次会谈备受印度方面期待。但让印媒大失所望的是，不丹外相对记者只是表示“希望洞朗的对峙能够以和平方式解决”。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121543.png', '2021/10/23'),
	(2, 3, '观察者网', '美国退群再返回，中国位置已发生了很大改变', '“在戏剧性地退出三年半之后，美国正在重返联合国人权理事会”，法新社14日报道称，“中国抓住了这个时间来坚定维护自己更广泛的影响力”。联合国大会当天选举联合国人权理事会的18个新成员，各国将从明年1月1日开始为期三年的任期，包括美国。联合国人权理事会是联合国大会的下属机构，总部设在瑞士的日内瓦。人权理事会由47个成员组成，按照地域原则分配，成员任期三年，在连续两任后不能连任。理事会每年改选1/3左右的成员。法新社称，虽然成员国是通过无记名投票选出的，但选举是非竞争性的，18个候选成员国“竞争”18个席位。“美国之音”称，美国是18个候选成员国中的一个，只需要简单多数就能加入。但这18个候选成员国在各自的地区组别中都不面临任何竞争，投票结果几乎没有悬念。2018年6月，特朗普政府宣布美国退出联合国人权理事会，称其对以色列“存在偏见”以及“无法有效保护人权”。法新社称，当美国在拜登的领导下回归时，它将面对一个更有信心的中国，“中国利用美国的缺席来展示自己的力量”。报道引述不具名欧洲外交官的话挑拨称，“一些欧洲国家认为，中国和从根本上反对人权的国家在人权理事会变得越来越强大”。报道称，近年来，中国和白俄罗斯、委内瑞拉等伙伴多次在人权理事会发表联合声明，支持北京在香港、新疆和西藏的行动，并谴责西方国家的“侵犯人权行为”，包括加拿大针对原住民的行为。“面对日益加剧的两极分化，一些人担心华盛顿的回归将加强这一趋势，并导致人权理事会被亲美和亲中团体的对抗主导。”法新社称，日内瓦世界人权组织智囊团执行董事马克·里蒙表示，自今年早些时候以观察员身份重新加入人权理事会以来，美国“基本上只关注一件事，那就是中国”。他说，美国对中国的攻击和中国的报复正在“吸走人权理事会所有其他重要工作的氧气”，“很多国家已经受够了，因为他们不想看到多边体系被这些地缘政治大国博弈所挟持”。他敦促美国在人权理事会扩大关注范围，以赢回其缺席期间对北京友好的发展中国家的支持。\n', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121543.png', '2021/10/24'),
	(2, 4, '观察者网', '探访“煤炭之乡”山西乡宁：矿场24小时赶工，煤在路上回不来，运费5天疯涨25%', '10月13日下午，王华又绕着整个煤矿巡逻了一遍。这一次没有发现险情，令他安心不少。王华年过五旬，是山西乡宁焦煤集团申南凹焦煤有限公司（下称“申南凹焦煤有限公司”）的一名矿工。山西10月突降暴雨以来，他肩负起了安全巡逻的重要任务。10月2日至10月7日，山西出现有气象记录以来最强秋汛，主要受灾地区集中在山西中南部，降雨量之大、持续时间之长、有极端性表现，导致山西省60座煤矿停产。截至10月12日，仍有4座未恢复生产，其中3座位于临汾市。临汾位于山西省西南部，矿产资源丰富，是煤炭大市。其中，乡宁县是全国三大主焦煤基地之一，境内煤田面积约1600平方公里，占总面积78%以上，总储量153亿吨，可采储量107亿吨，是有名的“煤炭之乡”。在这场罕见的秋汛之下，临汾平均降雨量远超历史同期最高值。乡宁县境内多条国省道及农村公路出现不同程度山体滑坡、塌方、落石等险情，部分路段通行中断，这给乡宁县煤炭的运输造成了一定影响。“这次暴雨对全县煤矿生产未造成影响，县里的煤矿都处于正常生产状态。”10月13日，乡宁县能源局相关负责人对时代周报记者表示。而乡宁县多家煤矿企业相关负责人也对时代周报记者称，暴雨未对煤矿生产造成影响。“国庆至今都没有停产，一直都在全力生产，会更加注重安全生产。最近，公司每天都安排人员加强矿区巡逻，及时排查山体滑坡等地质灾害隐患。”10月13日，山西乡宁焦煤集团一名工作人员对时代周报记者表示，洪灾引发了多处山体滑坡，更多是影响了煤炭的对外运输。汛情给焦煤产业链带来的蝴蝶效应正在发酵。山西煤矿生产与发运受到影响，焦煤供应维持偏紧态势，煤价维持高位。乡宁县的焦煤供货商无法定价，“一天一价”。“燃煤之急”未解，煤炭产业链上下游所受冲击进一步加剧。由于缺乏原煤、道路运输受阻，加上暴雨对工作环境造成影响，乡宁部分洗煤厂（除去原煤中矿物杂质，并将煤分成不同规格产品的煤炭加工厂）陷入停工停业状态。与此形成强烈对比的是，临汾运煤车供应吃紧，运费出现暴涨，5天内涨幅约25%。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121543.png', '2021/10/25'),
	(3, 5, '人民日报', '特鲁多吐槽美英澳联盟，普京称中国是俄罗斯高度信任的伙伴', '眼下，“五眼联盟”之中“三眼”抱团，加拿大和新西兰被排除在外，难免心生不满，而被半路截胡单子的法国更是气不打一处来。近日，有消息报道称法国总统马克龙希望能和加拿大总理特鲁多尽快举行面对面会晤。同为美国的盟友，如今却似乎“同病相怜”，两人真碰面了会擦出怎样的火花？马克龙和特鲁多曾在今年6月的G7领导人峰会上举行会晤 法国驻加拿大大使凯伦·里斯帕尔日前透露，除了商讨两国在疫情前就已开始但如今却未完成的一些事务之外，马克龙还想听一听特鲁多对美英澳三国上个月结成“AUKUS”联盟的看法。9月15日，美国总统拜登、英国首相约翰逊和澳大利亚总理莫里森提出要组成新的印太安全联盟“AUKUS”，除开映射中国，其中最重要的一项合作内容是美英帮助澳大利亚获得核动力攻击潜艇，这就让澳大利亚与法国之间价值900亿澳元的潜艇协议被取消。看来，马克龙也想好好找个人诉诉苦，而这个人选择特鲁多就再合适不过了。作为“五眼联盟”成员，加拿大如今处境尴尬。虽然新西兰也在排除在外，但好在新西兰聪明啊！在美英澳说要组建AUKUS组织、给澳大利亚核潜艇以后，新西兰直接划清界限，说新西兰将维持1985年以来禁止核动力船舰进入所属水域的规定。这就意味着，未来澳核潜艇将无法进入新西兰所属水域。新西兰方面是军事力量薄弱，那咱们惹不起躲得起。再加上新西兰与亚洲地区的经济联系非常紧密。新西兰去年对华出口总额逾870亿元，占比超出口总额的1/4，靠中国吃大头饭，在“印太战略”问题上，新西兰或许真的无所谓能不能加入AUKUS。反正，新西兰“独自美丽”不就行了。但加拿大就惨得多了，一直以来，加拿大都是美国的“铁杆盟友”。但由于自身实力远不如美国，与其说是盟友，倒不如说是美国的“小弟”。明里称兄道弟，两国因为关税问题其实早就结下梁子。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015133922.png', '2021/10/22'),
	(3, 6, '人民日报', '乘务员不让带活螃蟹上高铁，男子踩死8只后带上车', '10月14日下午1时许，浙江省永康南站内，一名男乘客携带一袋活螃蟹乘高铁时，乘务员进行了劝阻，男子当场踩死螃蟹后带上车。铁路部门表示，禁止携带鲜活农产品乘车，但螃蟹如包装妥当可以在部分车站上车。一段网络视频显示，一名男乘客携带一袋活螃蟹乘坐火车时，遇乘务员劝阻。一名女乘务员称，螃蟹严重污染了环境，肯定不能携带。男子倒出螃蟹后，用脚踩死它们。该视频引发网友关注，部分网友对为何不能携带活螃蟹乘火车感到不解。14日晚，视频发布者告诉记者，此事发生在14日下午1时许，地点在永康南站。当时，视频中男乘客携带一袋活螃蟹，准备乘坐一趟前往福建方向的高铁，乘务员表示不能携带活物上车。随后，男乘客将袋子里的约8只螃蟹倒在地上，一一踩死，随后带着这些死螃蟹上了车。12306的一位客服人员告诉记者，根据中国铁路总公司的相关规定，乘客是不允许携带活螃蟹之类的鲜活农产品乘坐火车的，但不同的火车站对此有不同的规定，如武汉站和汉口站，乘客可以携带使用密封的泡沫纸盒装好的螃蟹。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015133922.png', '2021/10/22'),
	(3, 7, '人民日报', '江苏情侣深夜遭陌生男子破门闯入，报警后遭围殴，警方：正抓捕', '近日，江苏泰州一女子在网上爆料称，凌晨时分她正在睡梦中，一陌生男子砸破木门闯入她住所。据她曝光的视频与聊天记录，凌晨她和男友在家中睡觉，被踹门声惊醒，一陌生男子踹破了她家的房门，手从破洞里伸进打开门锁闯了进来。其感叹，“如果男朋友不在，我都不知道会发生什么事情”。视频显示，破门而入的是一名身穿黑色T恤的男子。该女子的男友去厨房拿了一把菜刀制服了该男子，将其按倒在地，等待警方到来。但是男子听到警车声音后，趁人不备逃跑。女子称自己不认识该男子。在他逃跑后，因男友脚受伤没追上人。但他们看到了陌生男子的家就在隔壁楼栋，他拍打窗户让父亲出面解决问题。而后，警察在父子俩住处没有找到该男子，便让其父亲告知儿子自首后离开。就在被害人准备去医院的路上，该男子突然叫来多人殴打被害女子及其男友，还摔碎了她正在录视频的手机。该女子对媒体表示，她现在都不敢回家住了，准备去住酒店。10月15日，泰州市公安局姜堰分局对媒体表示，案发10月5日，警方当已立案，但涉案男子张某在逃，目前警方仍在抓捕他。据姜堰警方介绍，初步了解张某与被害人是邻居，张某家属称可能由于噪音原因张某闯入被害人家。\n姜堰区公安宣传部网络舆情中心，其表示，已注意到网络上的舆论，根据事情的最新进展，后续会向公众发布通报。受理此案的派出所值班人员表示，具体处理措施将会根据事情严重程度而定。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015133922.png', '2021/10/22'),
	(3, 8, '人民日报', '中美这场较量：钢铁意志VS“坚如磐石”', '我们不会放弃和平解决台湾问题的努力，但和平的终点必须是两岸统一，而不是“两个中国”或“一中一台”。那些分裂中国者决不会找到一条通往其目标的和平之路。美国多名官员近日高频次宣示“美国对台湾的承诺坚如磐石”，同时指责解放军在台海地区的演训“破坏和平与稳定”。美台勾连也在加码，台“陆军司令”近日访美，美副国务卿公开会见台“驻美代表”等都在发生。“坚如磐石说”可以欺骗、安抚岛内激进势力，但对中国大陆起不到任何吓阻作用。大陆会坚定不移地不断强化军事斗争准备，为最终解决台湾问题塑造关键且压倒性的筹码。我们要告诫岛内社会，切莫笃信美方“坚如磐石的承诺”，美国决不会为了“台独”与中国大陆殊死一搏，它现在做的一切不过是在玩弄地缘政治花招。它想通过打“台湾牌”制造中国崛起的最大阻力，但“台湾牌”不是美国需要不惜代价、宁愿付出大量生命来捍卫的“生死之牌”。美国自己的利益始终是它设计台海政策的出发点。捍卫国家主权和领土完整，实现国家的完全统一是大陆的真决心，我们为此是敢于与任何挑战者和阻挠者进行殊死之战的。阻力小，两岸统一要完成，阻力大，我们将迎战、击垮那些阻力。对中国大陆来说根本不存在容易就统一、困难就放弃统一的二元选择。聪明的人都能看懂，中美针对台海局势的决心和意志有着完全不同的份量。过去中美关系合作的内容多，双方的台海政策有求同的需求，加上国民党执政那八年两岸关系缓和，中美在台海的“异”没有激烈碰撞。现在美国对华战略陡变，台湾问题成了最突出的对抗点，双方的意志对撞变得越来越难以避免。让我们打开天窗说亮话：美国今天已经失去了向台湾做所谓“坚如磐石”承诺的资本。台海地区以及周围地区完全处在了解放军的有效打击范围内，大陆解决台湾问题时对外部军事干涉的遏阻力空前强大、成熟。美国使用海空军协防台湾将是让那些军人送死。中国作为拥有东风-41和巨浪-3等可信二次核打击能力核大国，亦能有效压制美国铤而走险动用核武器的邪念。一句话，美国不再是能够对中国实施军事讹诈的国家。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015133922.png', '2021/10/22'),
	(3, 9, '人民日报', '刘和平：大陆军机绕台奏效，拜登政府预感到可怕后果', '其实，此前岛内有政客曾经叫嚣，假如解放军军机进入了台湾的所谓“领空”，那台军方就将坚决予以击落。因此，相较于这一激进言论，台防务部门提出的 “解放军军机愈接近本岛、台军反制力愈强”的应对策略，还算是相对含蓄的。那么，台军方为什么会在这个节骨眼上抛出这种语带威慑的话？我认为，这背后反映出了台军与蔡英文当局两种心态，其一是不耐烦的心态，面对解放军近况空前的军机绕台强度与密度，台军方已经陷入了严重的不堪重负状态，甚至因此而产生了焦躁与不耐烦心理；其二是恐惧的心态，蔡英文当局尤其是台军方担心解放军军机有一天会突然打破常规，不仅进入台湾单方面划定的“防空识别区”，而且突然进入台湾方面声称的所谓“领空“”范围内。虽然根据中国大陆根据台湾是中国一部分的一个中国原则，台湾是既没有权力单方面划定所谓的“防空识别区”，更没有权力单方面划定所谓的“领空”的，大陆方面完全可以忽视它的存在想进就进想出就出，然而，在蔡英文当局看来，所谓的“领空”与“防空识别区”还是性质完全不同的两个东西，“防空识别区”被大陆突破了尚且可以忍受，但是所谓的“领空”，则既是台军方必须坚守的所谓军事上的防线，也是台湾民众最后的心理防线。一旦解放军军机进入了台湾所谓的“领空”，那不仅台湾的军事防线被突破了，而且台湾民众的心理防线也将彻底崩溃。尤其让蔡英文当局感到难办的是，一旦解放军军机进入了台湾所谓的“领空”，台湾军方将不知道如何应对。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015133922.png', '2021/10/22'),
	(4, 10, '搜狐新闻', '南京应天大街高架上特斯拉“无人驾驶”，网友吵翻了', '10月14日早高峰，南京应天大街高架上，一辆上海牌照特斯拉汽车“自动驾驶”，驾驶员双手脱离方向盘，闭目养神……这一幕被路过人员拍下发到网上，并质疑：“你的车有自动驾驶，也不能这么开呀！”引发大量网友围观和讨论。这样的行为违法吗？车辆具有辅助驾驶功能，能双手脱离方向盘上路吗？万一发生了交通违法或者事故，处罚和事故责任如何认定？记者对此进行了调查。早高峰高架上“无人驾驶”，视频引发近千万网友围观。记者看到，发布在网上的视频字幕显示，“无人驾驶”发生在早高峰的应天大街高架上，车辆是一辆上海牌照特斯拉轿车。从画面上看，车辆驾驶人倚靠在驾驶室座椅上，双手都脱离了方向盘。视频拍摄者称，男子没有在开车，而是在车内睡觉，并质疑其车辆有自动驾驶功能，也不能这么开。那么，这样的行为违法吗？对此，记者随后联系南京交警部门。对此，交警部门表示，目前已经关注到这一视频，正在进一步调查了解情况。一位在基层从业多年的民警表示，根据《道路交通安全法》规定，驾驶人在驾驶车辆时，不得有妨碍安全驾驶的行为，同时即便车辆有辅助驾驶功能，双手也不应当脱离方向盘。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png', '2021/10/22'),
	(4, 11, '搜狐新闻', '“中国拍《长津湖》一类的电影是在威胁世界”？抖音影评人因不当言论被封号', '近日，以抗美援朝战争中长津湖战役为背景的电影《长津湖》正在热映。在票房节节攀升的同时，这部电影也引发越来越多的关注与讨论。而就在昨日（10月13日），@上帝之鹰_5zn、@帝吧官微 等微博大V纷纷爆料称，抖音平台影评人“米路和恩恩”表示“中国拍《长津湖》一类的电影是在威胁世界”。今日，@上帝之鹰_5zn又跟进称，“在大家的合力举报下，此人已被封号”。而经查询，由于违反《抖音社区自律公约》的相关规定，该账号确实已被封禁。根据@上帝之鹰_5zn昨日发布的一段65秒微博视频（现已被删除），抖音号为“MiLuENEN99”，抖音昵称为“米路哲光影业”的用户，在打着“电影没那么简单”、“独立思考与判断”等标签下，写下有关电影《长津湖》的“反思”：“狂欢的背后，不可忽视的危机感。”\n根据视频，“米路哲光影业”表示，自己突然间想到一个问题：在当下的世界环境中，大规模的战争可能不会再出现，但小规模的摩擦可能难以避免。不过更多的是，人们会把聚焦点放在文化、科技等领域。“在这种情况下，我们的电影《长津湖》的出现，频繁的抗战影片的出现，是否是在向世界传达着一种不够友好、不够维稳的这样的一种意识形态？它里面是不是包含有威胁的意味呢......”这样的一席言论在该视频的大范围传播下，不久便引发了大批网友的批评。有不少网友质问：“拍中国军人保家卫国的电影怎么就需要反思了？”还有许多网友拿美国举例，反问“美国拍那么多战争片是在威胁全世界吗”。而随着此事的不断发酵，触犯众怒的“米路哲光影业”账号目前已因“不符合社区规范”被抖音平台封禁，相关视频无法查看。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png', '2021/10/22'),
	(4, 12, '搜狐新闻', '5555', '10月15日至17日，北京将迎来一场大风降温天气。据介绍，此轮天气是今年下半年以来，北京面临的最强冷空气影响过程。大风降温影响时间长、降温幅度大、风寒效应明显，气温比常年平均偏低，接近去年同期。“除了要提醒大家穿秋裤之外，早晚也适宜穿棉衣或薄羽绒类的冬装。户外活动要戴好帽子、围巾和手套，初冬穿衣的装备都要备好了。”针对未来几天的大幅降温天气，北京市气象服务中心服务首席尤焕苓提醒说。这场冷空气影响何时结束？北京会不会提前供暖？北京何时入冬？在今天下午的发布会上，北京市气象台、北京市气象服务中心两位首席进行了解答。未来三天将有大风降温，白天最高气温降至12℃-13℃北京市气象台首席预报员赵玮介绍，受强冷空气影响，15日至17日，北京地区将出现大风降温天气。具体来看，预计15日至16日北京有3、4级偏北风，阵风6、7级，山区可达8级以上。15日午后至傍晚和16日白天为风力最强时段，16日入夜后风力逐渐减弱。“与此同时，北京的气温有一个大幅的下降，尤其是在16日、17日白天，白天最高气温将由前期的20℃降至12℃-13℃，夜间最低气温将降至1℃-2℃。”赵玮说。预计18日至20日，气温略有回升。白天最高气温可以达到14℃-15℃，夜间最低气温为2℃-4℃。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png', '2021/10/22'),
	(4, 13, '搜狐新闻', '遇到别惊讶！北京启动自动驾驶无人化测试', '经常到访亦庄的司机有可能会看到，旁边行驶的汽车驾驶位上没有司机。10月15日，北京市智能网联汽车政策先行区（以下简称政策先行区）正式开放无人化测试场景，首批为百度、小马智行两家企业颁发北京市智能网联汽车政策先行区无人化道路测试通知书。测试分为“副驾有人”“后排有人”“车外远程”3个阶段，使测试活动安全有序地开展。在哪测试？经开区100多公里城市道路。开放政策先行区所在地北京经济技术开发区20平方公里，共100多公里城市道路为无人化测试路段，同时规定企业在开展道路测试时，避开早晚高峰时段并在车身张贴醒目无人化测试标识。为何测试？产业化必经阶段。“当前国内外具备自动驾驶示范应用的城市基本都在开展主驾有人的道路测试验证，而无人化是智能网联汽车产业的必经阶段，更是技术研发的制高点和科技竞争的聚焦点。”市自驾办相关负责人公开解读了国内首个针对智能网联汽车无人化道路测试特点的规范性政策文件。此次发布是政策先行区在国内率先允许无人配送车上路、开放高速公路测试后的又一创新型管理政策。针对行业日益关注的智能网联汽车网络安全问题，政策先行区首次将网络安全测试纳入无人化管理政策中，并制定相应技术规范，明确规定通过网络安全测试是开展无人化道路测试的必备条件之一。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png', '2021/10/22'),
	(5, 14, '新浪新闻', '北京：信号灯要保证老人能安全通过', '记者昨天(13日)从市老龄委了解到，被称为“友好九条”的《北京市推进老年友好型社会建设行动方案(2021-2023年)》已于日前印发。“友好九条”明确提出，人行横道信号灯绿灯时长设定应充分考虑老年人出行实际，保证老年人安全通过。据了解，“友好九条”主要从居家生活、家庭关系、社区环境、健康支持、智能应用、交通出行、社会参与、公共服务、人文环境等方面营造老年友好环境，针对当前在公共服务、交通出行、智能应用等领域存在对老年人不够友好的现象提出了解决方案。“友好九条”重点关注老人的居家养老环境。居家生活友好方面，本市将积极引导和支持城乡老年人家庭进行适老化改造，降低老年人居家生活风险。家庭关系方面，倡导亲情陪伴，完善家庭照护支持政策，研究制定子女照料老人护理假制度。社区环境方面，将加大老年友好型社区创建工作力度，全面提升社区为老服务水平。健康支持方面，将持续推进老年友善医疗机构建设，实现全市中医健康养老服务保障全覆盖。在智能应用友好方面，本市将加大适老化智能终端产品的研发力度，全面推进“智慧助老”专项行动，加大对网络诈骗的打击力度。社会参与方面，将加大老年人力资源开发，引导有劳动能力和就业意愿的老年人继续就业。公共服务方面，本市将完善生活服务，保留现金支付和线下办理渠道，积极推进“一刻钟社区服务圈”建设，增强日常生活和服务消费的便捷性。人文环境方面，将加强人口老龄化国情市情教育，营造敬老爱老助老氛围。“友好九条”还关注了老人的出行难题。交通出行友好方面，“友好九条”明确提出，人行横道信号灯绿灯时长应依据老年人出行实际设定，确保老年人安全通过。新建地下通道、人行天桥应设置供轮椅推行的平缓坡道，地面公交站台的设置应方便老年人候车和上下车，具备条件的应设置座椅，供老年人短时休息。“友好九条”还提出，要保障老年人的绿色通行，不得将“健康码”作为人员通行的唯一凭证，老年人现场购票、换乘优先安排。市老龄委相关负责人介绍，“友好九条”以破解瓶颈问题为切入口，关注难点痛点问题，坚持设施改造与氛围营造相结合，坚持服务保障与社会参与相结合，引导全社会积极看待老年人和老年生活。为保障“友好九条”落实，本市明确了相关部门的工作职责，建立目标考核机制，加大对推进老年友好型社会建设各项工作任务落实情况的监督检查力度。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121504.png', '2021/10/22'),
	(5, 15, '新浪新闻', '法国记者当面质问布林肯：你会说法语，是亲法派，我们原本期待颇高', '“你知道法国觉得被美国人背叛了吗？”在5日的采访中，法国记者就美英澳三国核潜艇协议质问美国国务卿布林肯，“你会说法语，是亲法派，我们原本期待（两国）会有更好的对话”。面对记者的逼问，布林肯只得连连安抚，强调美法之间存在“重要而深刻”的关系，并称他“理解”法国人的心情，美国已经意识到两国间沟通“本可以做得更好”。此次采访是在布林肯访法期间进行。对于布林肯此次“修复关系”的行程，法国国内反应冷静：马克龙只说会对拜登政府“拭目以待”，媒体也强调应“听其言观其行”。根据美国国务院公布信息，当地时间10月5日，布林肯在巴黎接受了法国第二电视台的节目采访。采访中，布林肯全程法语作答。在采访一开始，法国记者直截了当，提及美英澳此前签订的和潜艇协议及其引发的外交风波。“法国外长表达了法国的愤怒和不解，你知道法国觉得被美国人背叛了吗？”这名记者质问布林肯，“你会说法语，是亲法派，我们原本期待（两国）会有更好的对话”。布林肯在9岁到18岁之间，一直住在巴黎，在此期间完成小学和中学学业。值得一提的是，在今年6月布林肯首次访问法国时，法国外长勒德里昂称其为“亲爱的托尼”，并欢迎他“回家”。显然，在这一次访法行程中，布林肯受到的待遇完全不同了。“我非常理解（法国的心情）。”面对记者的逼问，布林肯只得连连安抚。他说：“我认为我们注意到了两件事：首先，在沟通方面，我们本可以、本应该做得更好……但最重要的是，我们有时倾向于认为，像法国和美国之间的关系这样重要和深刻的关系是理所当然的。”', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121504.png', '2021/10/22'),
	(4, 16, '搜狐新闻', '金正恩现身朝鲜国庆阅兵式：瘦了，黑了，更有活力了', '9月9日，朝鲜举行了一场午夜阅兵式，以纪念建国73周年。在这场阅兵式上，朝鲜最高领导人金正恩形象出现明显变化，引发外界关注。从朝鲜中央通讯社发布的照片中可以发现，金正恩看上去变瘦了，肤色也黑了，显得更有活力。与此同时，周四的阅兵式也比以往更低调，规模更小。外界认为，在新冠疫情未解和经济困顿的当下，最高领导人“瘦身”与低调阅兵彼此呼应，表明平壤更关注国内事务，强调国家团结，而不是向美国或韩国发出信息。身穿浅灰色西装，系着银白色领带，在9日午夜零点钟声敲响时，金正恩一身西式装束出现在阅兵式现场。夜晚，平壤金日成广场灯火通明。金正恩面带微笑，向人群挥手致意，亲吻向他献花的孩子们。然后，他走到主席台中央观看阅兵式。有关报道称，在整个阅兵过程中，金正恩或是开怀大笑，或是为游行队伍鼓掌，同时还与身边的高级官员们兴致勃勃地交谈。当参加阅兵式的表演者和现场观众爆发雷鸣般的掌声时，金正恩报以微笑。从朝中社发布的照片中，外界发现，相比以往，金正恩的形象发生明显变化：人瘦了，肤色变黑了，更有活力了。首尔梨花女子大学研究朝鲜问题的教授朴元刚（Park Won-gon，音译）说：“他的脸明显瘦了，行动也更为有力。”今年6月，金正恩主持召开朝鲜劳动党第八届中央委员会第三次全体会议。那是他数周以来首次公开露面，看上去体重明显下降。有报道称，据韩国情报机构7月份提交给一名韩国议员的简报显示，在过去数月里，金正恩可能瘦了至少20公斤。而这次阅兵式上，金正恩看起来比当时更消瘦些。外界报道也援引一些朝鲜观察人士的说法称，金正恩身高约170厘米，此前体重为140公斤，现在可能下降10-20公斤。尽管有所消瘦，但是金正恩的发型仍保持原样，以向祖父金日成致敬。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png', '2021/10/22'),
	(4, 17, '搜狐新闻', '德外交部：没有迹象表明驻华大使去世有政治原因', '在6日早些时候宣布德国新任驻华大使贺岩（Jan Hecker）离世的消息后，德国外交部当天又在记者会上强调，没有迹象表明驻华大使去世有政治原因。\n德外交部：没有迹象表明驻华大使去世有政治原因据路透社9月6日报道，德国外交部发言人安德里亚·沙瑟（Andrea Sasse）在柏林的例行记者会上说：“没有迹象表明他的去世与其政治职能有关。”德外交部此前表示，“获悉德国驻华大使突然离世，我们深感悲痛和震惊。在这一时刻，我们心系他的家人以及他的亲友和同事。”《华盛顿邮报》报道称，周一早些时候，德国外交部在一份简短声明中宣布贺岩“突然去世”，并未详细说明死亡时间、地点以及原因。当被问及是否会公布更多细节时，沙瑟表示，德国外交部目前没有什么要补充的。另据德国驻华大使馆介绍，贺岩1967年2月15日出生于基尔，于2017年历任对外政策、安全和发展政策司司长以及德国总理默克尔的对外政策顾问。贺岩还是一名资格律师，主攻公法和欧洲法方向。8月1日，贺岩抵华，并于8月24日递交国书副本。他履新后表示：“我们希望通过自身的工作为德中关系长期稳定的发展做出贡献。这符合两国民众的利益，也是我们为应对全球性任务负有的共同责任。为此，我们应当进一步加强对话和伙伴合作。”默克尔在声明中对他去世的消息表示“深感震惊”与哀悼，对与他共事多年“满怀感激”，并向他的家人表示慰问。9月6日，外交部发言人汪文斌也表示，中方对贺岩大使突然离世深感震惊。贺岩大使到任后，积极推动双边关系，我们对他的辞世表示哀悼和惋惜，向他的亲属表示深切同情和慰问。我们愿为其家人和德国驻华使馆处理后续事宜尽可能提供便利。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png', '2021/10/22'),
	(1, 18, '封面网', '一只蜘蛛，挡了茶百道的道', '刚传出赴港上市消息不久的茶饮连锁品牌茶百道，日前遭遇多事之秋，近两周内接连曝出食品安全问题，被指使用过期原材料，甚至被顾客投诉在奶茶中发现蜘蛛。其中针对消费者关注的过期原材料问题，浙江市场监管局还专门进行了食品安全专项检查。一时间，茶百道这家从四川起步的奶茶品牌陷入食品安全的漩涡。之前据上证报等多家媒体报道，茶百道计划最早于2022年在香港首次公开募股（IPO），筹资约5亿美元，茶百道已向银行征询有关香港IPO的建议。这意味着，继奈雪的茶之后，又一家新式茶饮明星公司将登陆资本市场。在食品安全黑天鹅事件之下，关于上市，茶百道称，未来不排斥也不拒绝用更高的标准要求自己。半月内被检查上千次。9月30日，一位自称“内幕纠察局”的博主发布了一条话题为“茶百道使用过期原材料”的视频，发现茶百道多家门店存在过期材料更换标签使用的情况，并且店员声称是为了防止监管部门检查。当天，#茶百道使用过期原材料#的话题冲上热搜。10月1日凌晨，茶百道发布致歉信称，个别门店出现了不符合卫生标准、私自更改操作流程等问题，对此表示歉意。将针对所有店铺进行全面排查并整改，不符合要求的门店一律采取闭店处理，严重者直接取消签约资格。根据浙江市场监管局的信息，10月2日-6日，其对 茶百道在浙江的710家门店（其中停业5家，网络经营682家）组织开展食品安全专项突击检查，约谈门店负责人和相关管理人员。5天累计出动执法人员1362人次，发现问题门店36家。浙江市场监管局通报称，从检查情况看，总体状况较好，未发现曝光的“过期原材料更换标签继续使用、宣传鲜果制作但部分产品用果浆替代”等问题。检查中发现部分门店存在食品贮存不规范，原料与成品混放，食品处理区垃圾桶未加盖，开封食品原料未标示开封时间或使用期限、未密封贮存等现象，均已全部落实整改。10月10日，茶百道声明称，10月以来，全国各地市场监管部门对茶百道门店进行了1000余次的现场检查，经检查，未发现门店存在食品安全问题，但部分门店存在食品贮存不规范、原料与成品混放、食品处理区垃圾桶未加盖、开封原料未密封贮存等现象。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120630.png', '2021/10/22'),
	(1, 19, '封面网', '微软将关闭领英中国服务？领英官方辟谣：不实消息，系战略调整', '有媒体报道，微软14日晚宣布，将关闭领英中国服务。之后微软将在中国推出一个求职网站，但不具备领英的社交功能。随后，领英官方微博回应关闭服务：不实消息。并表示领英将对战略进行调整，于今年内发布一系列全新产品及服务。并发布致会员的一封信，称将专注干提供“连接职业机会”的价值，不再涵盖用户原创内容的发布与互动功能。微软在一份声明中称：“我们在中国市场的新战略是，把重点放在帮助中国的专业人士找到工作，帮助中国公司找到合格的候选人。今年晚些时候，我们将推出‘InJobs’，这是一款面向中国市场的新的独立求职应用程序，不包括社交订阅源（feed）、分享帖子或文章等功能。我们还将继续与中国企业合作，帮助他们创造经济机会。”', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120630.png', '2021/10/22'),
	(1, 20, '封面网', '领英中国总裁陆坚：领英没有减少对中国的投入，还会加大', '10月15日消息，领英中国总裁陆坚朋友圈回应“领英中国关闭”传闻称：感谢各位朋友对我和领英中国的关心。借用美国作家马克·吐温的一个幽默，“关于我死亡的报道实在是太夸张了”。领英中国将做一些产品和业务战略的调整，但是领英没有减少对中国的投入，还会加大；不会减员，更不会离开中国。\n延伸阅读：微软将关闭领英中国服务？领英官方辟谣：不实消息，系战略调整 来源: 每日经济新闻\n有媒体报道，微软14日晚宣布，将关闭领英中国服务。之后微软将在中国推出一个求职网站，但不具备领英的社交功能。\n随后，领英官方微博回应关闭服务：不实消息。并表示领英将对战略进行调整，于今年内发布一系列全新产品及服务。并发布致会员的一封信，称将专注干提供“连接职业机会”的价值，不再涵盖用户原创内容的发布与互动功能。微软在一份声明中称：“我们在中国市场的新战略是，把重点放在帮助中国的专业人士找到工作，帮助中国公司找到合格的候选人。今年晚些时候，我们将推出‘InJobs’，这是一款面向中国市场的新的独立求职应用程序，不包括社交订阅源（feed）、分享帖子或文章等功能。我们还将继续与中国企业合作，帮助他们创造经济机会。”', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120630.png', '2021/10/22'),
	(6, 21, '环球网', '梅西炮轰巴西主裁:似乎每次执法我们时都故意乱吹', '在阿根廷1-0小胜秘鲁之后，梅西发了Ins庆祝胜利，但同时也批评了巴西籍主裁的执法表现。“这是场艰苦的比赛，非常难踢，对手留给我们的空间很小。”梅西写道，“这位裁判每次执法我们时都这样，他似乎是故意要这种吹。但无论如何，全取三分让我们更接近于目标。前进吧，阿根廷！”梅西为何不满主裁？在针对双方时，主裁判疑似采用了双重标准。秘鲁获得的点球有假摔嫌疑，但主裁并没有理会VAR。但主裁此役取消了阿根廷两个进球，其中第一个就是听从了VAR的意见后判罚罗梅罗越位。秘鲁全场20次犯规只吃到两次黄牌，而且还有多次粗野犯规压根没被吹罚。拉帕杜拉下半场曾爆头罗梅罗，但却连黄牌都没吃。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121413.png', '2021/10/22'),
	(6, 22, '环球网', '每体：林加德明夏将成自由球员，巴萨将其视为引援目标', '据《每日体育报》今日报道，考虑到目前巴萨的经济形势，他们希望能够以尽可能低的成本引进球员，以提升球队水平。因此，合同将在明夏到期的林加德成为他们的目标。此前，巴萨已经签下自由球员阿圭罗、埃里克-加西亚和德佩，这样的情况很适合引进林加德。因为这名攻击手与曼联的合同将于明年6月30日到期，届时他将成为自由球员。本赛季林加德在曼联得到的比赛时间并不多，他愿意改变现在的局面，对于离开英超他也持开放态度。本赛季到目前为止，林加德代表曼联在各项赛事出战6场比赛，贡献2球1次助攻。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121413.png', '2021/10/22'),
	(6, 23, '环球网', '售价80万 高合HiPhi X创始版4座成都车展发售\n', '在本届成都车展上，高合HiPhi X（参数丨图片）创始版4座正式发售，新车售价为80万元。这也是该车自亮相以来，量产版首次与大家见面，新车将从成都车展开始正式开启交付。作为一款纯电动SUV，新车延续了高合家族独特的设计风格，前脸采用封闭式中网的同时，通过分体式大灯组和下方的智能交互灯组组成了功能复杂的大灯组结构。同时，尾部的设计很好的与前大灯组进行了呼应，而外观上最大的亮点在于车门多达6种的开启方式，高调吸睛。内饰方面，高合HiPhi X创始版4座与家族其他车型保持一致，采用三块大尺寸屏幕，形成了环抱式座舱，其中全液晶仪表的尺寸为14.6英寸，中控多媒体屏幕尺寸为16.9英寸，副驾驶位前方的娱乐显示屏更是达到了19.9英寸，给予前排乘客更便捷的娱乐选择。值得一提的是，新车的内饰质感也十分精致，此次在高合HiPhi X 6座车型上全球首发首用的LUXSENSE™️有机硅皮革，其具备独特的亲肤触感与细腻手感，更在耐磨性、耐老化、防污性、阻燃性等方面达到全新水平，且不含有害溶剂和增塑剂，无味无挥发，更加安全健康。动力与续航方面，新车搭载效达97.2%的前后220千瓦双电机以及97千瓦·时大容量电池，百公里加速3.9秒，NEDC工况下续航里程达550公里，满足用户在城市、城际、高速等多场景下的用车需求。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121413.png', '2021/10/22'),
	(7, 24, '中新网', '欧拉樱桃猫正式亮相 纯电紧凑级SUV续航600km', '日前，长城欧拉樱桃猫（参数丨图片）正式亮相。新车是长城柠檬平台纯电架构下打造的A+级纯电SUV，预计推出两驱和四驱两种动力版本，最长续航版本续航能力将有望达到600km。早在产品命名之初，欧拉便摒弃冰冷的代续了欧拉品牌的“猫系”设计元素，大灯采用上扬的设计，相比起欧拉好猫等先推出的车型，欧拉樱桃猫既有传统A+级SUV的轮廓，又不失优美的线条。侧面采用前低后高，更为流线的设计，尾灯造型也贴合侧面的流线装饰，与前大灯交相呼应，动感十足。内饰方面，新车采用了整体偏向驾驶位的内饰设计布局，能够在方便驾驶者操控的同时让设计在视觉上更加美观，加上“bling bling的中控台配色，非常能种草女性用户。座舱内分层式设计、更易塑造女性驾驶者对于直观功能的使用感受。虚拟三屏座舱则带来了科技化的联动交互体验，构成了玻璃化座舱的绚丽内饰风格，尺寸较大的液晶屏也符合了当下的设计审美，全液晶的仪表盘和HUD抬头显示功能结合，不仅增强了设计的科技感，也可以让操作变得更加便捷。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120723.png', '2021/10/22'),
	(7, 25, '中新网', '售价20.98万 全新威马W6 520km ACE极智版发布', '成马W6 ACE极智版车型的售价正式公布，售20.98万元。此次发布的威马W6 520km ACE极智版车型，采用全新的竞速橙配色，配备超强算力的7nm制程车规级高通8155芯片。并得益于全新的OTA2.0版本，多项智能化配置得到显著优化与升级。作为国内率先实现特定场景下L4级无人驾驶的量产车型，威马W6搭载了AVP无人自主泊车系统。依托全车部署的23个传感器，并借助百度Apollo平台的百万级云算力，用户可通过手机一键式完成无人干预情况下的自动驾驶、障碍物躲避、车位智能搜索和自主泊入、泊出等功能。年内，具有更高自主程度的PAVP（高精地图泊车）功能将以OTA的形式正式上线，在北上广成四座城市的五大核心商圈停车场率先开放，并陆续向全国范围内推广。威马W6还提供多项聚焦城市高频用车场景的智能化配置，自定义场景编程SOA，通过对车内多项功能的自由组合，创造用户专属的使用场景；采用双备份冗余设计的全域OTA，能够不断满足用户多元化需求，让车越用越好用；全新智能语音助手WIMI，支持分区识别、连续对话与自由打断，实现超过120项全场景精准语音车控；全系标配的华为智慧系统，将华为音乐、华为视频、华为智慧助手、华为快应用等丰富功能融入智能座舱，打通“手机-车-家”场景。威马与华为两大国货之光品牌的强强联合，为用户提供高趣味性和高便利性的人车应用。\n动力方面，新车预计将会沿用现款车型的动力配置，搭载一台永磁同步电机，最大功率160kW，峰值扭矩225Nm，配备三元锂电池组，NEDC工况续航里程520km。此外，威马汽车为首购用户特别推出“随心贷”购车方案，用户可根据自身实际情况，享受最低10%的首付比例、最高可达60期的还款期数及低至0.88%的年化费率。为回馈用户，威马汽车推出了老车主及置换用户专属购车福利，将“随心贷”升级为“无忧购”购车方案。在超低首付、超长贷款周期及超低费率的基础上，为用户增加了12期0息的优惠方案！同时，威马汽车还针对老车主及置换用户推出10万元“定额贷”购车方案，提供24/36期0息优惠，月供金额低至2,778元，消除购车压力。', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120723.png', '2021/10/1');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- 导出  表 jrtt_database.attitude 结构
CREATE TABLE IF NOT EXISTS `attitude` (
  `user_id` int NOT NULL,
  `attitude` int DEFAULT NULL,
  `article_id` int NOT NULL,
  KEY `FK__user` (`user_id`),
  KEY `FK__article` (`article_id`),
  CONSTRAINT `FK__article` FOREIGN KEY (`article_id`) REFERENCES `article` (`art_id`),
  CONSTRAINT `FK__user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.attitude 的数据：~23 rows (大约)
/*!40000 ALTER TABLE `attitude` DISABLE KEYS */;
INSERT IGNORE INTO `attitude` (`user_id`, `attitude`, `article_id`) VALUES
	(1, 1, 1),
	(1, 1, 1),
	(1, 1, 1),
	(1, 1, 1),
	(2, 1, 2),
	(3, 1, 3),
	(4, 1, 1),
	(5, 1, 2),
	(6, 1, 2),
	(7, 1, 4),
	(8, 1, 5),
	(9, 1, 6),
	(10, 1, 7),
	(1, 1, 2),
	(2, 1, 5),
	(3, 1, 8),
	(4, 1, 6),
	(5, 1, 4),
	(6, 1, 6),
	(7, 1, 2),
	(8, 1, 3),
	(9, 1, 1),
	(10, 1, 6);
/*!40000 ALTER TABLE `attitude` ENABLE KEYS */;

-- 导出  表 jrtt_database.channel 结构
CREATE TABLE IF NOT EXISTS `channel` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.channel 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT IGNORE INTO `channel` (`id`, `name`) VALUES
	(1, '体育'),
	(2, '军事'),
	(3, '生活');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;

-- 导出  表 jrtt_database.comment 结构
CREATE TABLE IF NOT EXISTS `comment` (
  `user_id` int DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `comment_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_comment_user` (`user_id`),
  KEY `FK_comment_article` (`article_id`),
  CONSTRAINT `FK_comment_article` FOREIGN KEY (`article_id`) REFERENCES `article` (`art_id`),
  CONSTRAINT `FK_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.comment 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- 导出  表 jrtt_database.subscribe 结构
CREATE TABLE IF NOT EXISTS `subscribe` (
  `subscriber_id` int NOT NULL,
  `besubscribed_id` int NOT NULL,
  KEY `FK_subscribe_user` (`subscriber_id`),
  KEY `FK_subscribe_user_2` (`besubscribed_id`),
  CONSTRAINT `FK_subscribe_user` FOREIGN KEY (`subscriber_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_subscribe_user_2` FOREIGN KEY (`besubscribed_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.subscribe 的数据：~12 rows (大约)
/*!40000 ALTER TABLE `subscribe` DISABLE KEYS */;
INSERT IGNORE INTO `subscribe` (`subscriber_id`, `besubscribed_id`) VALUES
	(1, 2),
	(3, 2),
	(4, 2),
	(2, 1),
	(1, 3),
	(5, 4),
	(1, 4),
	(8, 5),
	(4, 3),
	(2, 6),
	(1, 7),
	(5, 9);
/*!40000 ALTER TABLE `subscribe` ENABLE KEYS */;

-- 导出  表 jrtt_database.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(12) NOT NULL DEFAULT '',
  `photo` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `photo` (`photo`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 正在导出表  jrtt_database.user 的数据：~11 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT IGNORE INTO `user` (`id`, `name`, `password`, `photo`) VALUES
	(1, '封面网', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120630.png'),
	(2, '观察者网', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121543.png'),
	(3, '人民日报', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015133922.png'),
	(4, '搜狐新闻', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121252.png'),
	(5, '新浪新闻', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121504.png'),
	(6, '环球网', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015121413.png'),
	(7, '中新网', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/%E8%BD%AF%E4%BB%B6%E7%BB%BC%E5%90%88%E5%AE%9E%E8%B7%B5%E5%9B%BE%E7%89%87/QQ%E6%B5%8F%E8%A7%88%E5%99%A8%E6%88%AA%E5%9B%BE20211015120723.png'),
	(8, '小刘', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/MZ2.jpg'),
	(9, '小王', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/222/QQ%E5%9B%BE%E7%89%8720190414110924.jpg'),
	(10, '小药', '123456', 'https://maiwo-file-read.oss-cn-beijing.aliyuncs.com/headphoto/202025/1583645804660830.jpg'),
	(11, '18811776536', '111111', 'https://img.yzcdn.cn/vant/cat.jpeg');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
