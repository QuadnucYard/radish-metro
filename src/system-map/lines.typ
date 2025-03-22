#import "../deps.typ": radishom
#import radishom: *


#let (N, S, W, E, NW, NE, SW, SE) = dirs

#let corner-radius = 0.2
#let pin-round = pin.with(corner-radius: corner-radius)

#let lines = (
  line(
    id: "1",
    color: rgb("#009ace"),
    start-date: datetime(year: 2000, month: 4, day: 18),
    open-date: datetime(year: 2005, month: 5, day: 15),

    pin(x: 4.5, y: 11., cfg: "L1-N"),
    station([八卦洲大桥南], [BAGUAZHOUDAQIAONAN], anchor: W, logo-anchor: S),
    station([笆斗山], [BADOUSHAN], x: 3.),
    pin-round(x: 2.),
    station([燕子矶], [YANZIJI], y: 10.),
    station([吉祥庵], [JIXIANG'AN]),
    station([晓庄], [XIAOZHUANG]),
    pin(y: 7., cfg: none),
    station([迈皋桥], [MAIGAOQIAO], y: 7., logo-anchor: SE),
    pin-round(y: 6.5),
    station([红山动物园], [HONGSHAN ZOO], y: 6.1, anchor: SE),
    station([南京站], [NANJING RAILWAY STATION], anchor: E),
    pin-round(x: 0., d: SW),
    station([新模范马路], [XINMOFANMALU], y: 4),
    station([玄武门], [XUANWUMEN]),
    station([鼓楼], [GULOU]),
    station([珠江路], [ZHUJIANGLU], alt: ([地铁大厦], [])),
    station([新街口], [XINJIEKOU]),
    station([张府园], [ZHANGFUYUAN]),
    station([三山街], [SANSHANJIE], y: -2.),
    pin-round(y: -3.5),
    station([中华门], [ZHONGHUAMEN], y: -4.),
    station([安德门], [ANDEMEN], y: -5.25),
    pin-round(x: -2., d: SW),
    station([天隆寺], [TIANLONGSI], y: -6.5),
    pin-round(y: -7.),
    station([软件大道], [RUANJIANDADAO], x: -1.),
    station([花神庙], [HUASHENMIAO], x: 0.),
    pin-round(x: 1. + 0.1),
    station([南京南站], [NANJING SOUTH RAILWAY STATION], y: -8., anchor: NW),
    pin-round(y: -8.5),
    pin-round(x: 2.5),
    station([双龙大道], [SHUANGLONGDADAO], y: -9.),
    station([河定桥], [HEDINGQIAO]),
    station([胜太路], [SHENGTAILU], y: -11.),
    station([百家湖], [BAIJIAHU], y: -12.75),
    pin-round(y: -13.),
    station([小龙湾], [XIAOLONGWAN], anchor: N),
    station([竹山路], [ZHUSHANLU]),
    station([天印大道], [TIANYINDADAO], x: 6.),
    station([龙眠大道], [LONGMIANDADAO], x: 7.),
    pin-round(x: 7.5),
    station([南医大·江苏经贸学院], [NMU/JIETT]),
    station([南京交院], [NJCI]),
    station([中国药科大学], [CPU], logo-anchor: NW),
    pin(y: -15., d: SE),
  ),
  line(
    id: "2",
    color: rgb("#a6093d"),
    start-date: datetime(year: 2005, month: 12, day: 28),
    open-date: datetime(year: 2010, month: 5, day: 28),

    pin(
      x: -10.0,
      y: -8.0,
      cfg: "L2-W",
      start-date: datetime(year: 2018, month: 9, day: 2),
      open-date: datetime(year: 2021, month: 12, day: 28),
    ),
    station([鱼嘴], [YUZUI], marker-rotation: 90deg, logo-anchor: SE),
    station([天保街], [TIAOBAOJIE]),
    station([青莲街], [QINGLIANJIE], anchor: N, x: -8.25),
    station([螺塘路], [LUOTANGLU], anchor: NW),
    pin-round(x: -6.5 + 0.15),
    pin(x: -5.8, d: NE, cfg: none, start-date: auto, open-date: auto),
    station([油坊桥], [YOUFANGQIAO], r: 0, anchor: W, logo-anchor: NE),
    pin-round(x: -5.0, d: NE),
    station([雨润大街], [YUANTONG], y: -5.75, anchor: NE),
    pin-round(x: -6.25, d: NW),
    station([元通], [YUANTONG]),
    station([奥体东], [OLYMPIC STADIUM EAST], y: -3.75),
    pin-round(x: -4.5, d: NE),
    station([兴隆大街], [XINGLONGDAJIE], y: -3.),
    station([集庆门大街], [XINGLONGDAJIE], y: -2, cfg-not: "no-jqmdj"),
    pin-round(y: -1),
    station([云锦路], [YUNJINLU], alt: ([纪念馆], [JINIANGUAN])),
    pin-round(x: -3.25),
    station([莫愁湖], [MOCHOUHU], x: -3.),
    pin-round(y: 0., d: NE),
    station([汉中门], [HANZHONGMEN], x: -2.),
    station([上海路], [SHANGHAILU], alt: ([省中医院], [SHENGZHONGYIYUAN])),
    station([新街口], [XINJIEKOU]),
    station([大行宫], [DAXINGGONG]),
    station([西安门], [XI'ANMEN], x: 2., anchor: N),
    station([明故宫], [MINGGUGONG]),
    station([苜蓿园], [MUXUYUAN], x: 5.),
    station([下马坊], [XIAMAFANG]),
    station([孝陵卫], [XIAOLINGWEI], x: 7.),
    station([钟灵街], [ZHONGLINGJIE], x: 8.),
    pin-round(x: 8.5),
    pin-round(y: 1. + 0.1, d: NE),
    station([马群], [MAQUN], x: 10.0),
    pin-round(x: 11.),
    station([金马路], [JINMALU], anchor: E, y: 3.),
    pin-round(y: 3.75),
    station([仙鹤门], [XIANHEMEN], x: 11.5),
    station([学则路], [XUEZELU], alt: ([亚东城], [YADONGCHENG])),
    station([仙林中心], [XIANLINZHONGXIN]),
    station([羊山公园], [YANGSHANGONGYUAN], x: 14.0),
    pin-round(y: 7., d: NE),
    station([南大仙林校区], [NJU XIANLIN CAMPUS], x: 15.5),
    station([经天路], [JINGTIANLU], x: 17., anchor: N, logo-anchor: S),
    pin(x: 17., cfg: "L2-EE", start-date: none),
    pin-round(x: 18.4),
    station([仙林湖], [XIANLINHU], anchor: E, logo-anchor: NE),
    pin(y: 8.),
  ),
  line(
    id: "3",
    color: rgb("#009a44"),
    start-date: datetime(year: 2010, month: 1, day: 10),
    open-date: datetime(year: 2015, month: 4, day: 1),

    pin(x: -11, y: 12.),
    station([林场], [LINCHANG], logo-anchor: N),
    station([星火路], [XINGHUOLU], x: -9.5),
    station([东大成贤学院], [SEU CHENGXIAN COLLEGE], anchor: N),
    station([泰冯路], [TAIFENGLU]),
    station([天润城], [TIANRUNCHENG], x: -6.),
    pin-round(x: -5.5, y: 12.),
    station([柳洲东路], [LIUZHOUDONGLU]),
    station([上元门], [SHANGYUANMEN], x: -2.25, open-date: datetime(year: 2015, month: 10, day: 18)),
    station([五塘广场], [WUTANGGUANGCHANG], anchor: E),
    station([小市], [XIAOSHI]),
    station([南京站], [NANJING RAILWAY STATION]),
    pin-round(y: 4.5, d: SE),
    station([南京林业大学·新庄], [NFU/XINZHUANG], y: 4.),
    pin-round(y: 3.5),
    pin-round(x: 1., d: SW),
    station([鸡鸣寺], [JIMINGSI], y: 2.),
    station([浮桥], [FUQIAO]),
    station([大行宫], [DAXINGGONG]),
    station([常府街], [CHANGFUJIE]),
    station([夫子庙], [FUZIMIAO], y: -2.),
    pin-round(y: -2.25),
    pin-round(x: 1.5, d: SE),
    station([武定门], [WUDINGMEN], y: -3.),
    pin-round(y: -3.75),
    station([雨花门], [YUHUAMMEN], y: -4.),
    pin-round(x: 2., d: SE),
    station([卡子门], [KAZIMEN]),
    station([大明路], [DAMINGLU], anchor: NW),
    pin-round(y: -7.5),
    station([明发广场], [MINGFAGUANGCHANG]),
    pin-round(x: 1.),
    station([南京南站], [NANJING SOUTH RAILWAY STATION], y: -8.),
    station([宏运大道], [HONGYUNDADAO], y: -9.),
    station([胜太西路], [SHENGTAIXILU], y: -11.),
    station([天元西路], [TIANYUANXILU], y: -13.),
    pin-round(y: -14.),
    station([九龙湖], [JIULONGHU]),
    pin-round(x: 3.),
    station([诚信大道], [CHENGXINDADAO], y: -15.),
    station([东大九龙湖校区], [SEU JIULONGHU CAMPUS]),
    station([秣周东路], [MOZHOUDONGLU], r: 1., logo-anchor: E),
    pin(y: -17., cfg: "3-3", start-date: datetime(year: 2021, month: 5, day: 21), open-date: none),
    station([上秦淮西], [SHANGQINHUAIXI], r: 0.5),
    station([秣陵], [MOLING], logo-anchor: E),
    pin(y: -19.),
  ),
  line(
    id: "4",
    color: rgb("#7d55c7"),
    start-date: datetime(year: 2011, month: 12, day: 27),
    open-date: datetime(year: 2017, month: 1, day: 18),

    pin(x: -12., y: 13., cfg: "L4-3", start-date: none, open-date: none),
    station([余家营], [YUJIAYING], logo-anchor: E),
    station([南京北站], [NANJING NORTH RAILWAY STATION], anchor: NW),
    station([护国村], [HUGUOCUN], y: 11.0),
    pin-round(y: 10.75),
    pin-round(y: 9.25, d: SE),
    station([龙之谷], [LONGZHIGU]),
    pin-round(y: 8.5),
    pin(x: -10.75, d: SW, cfg: "L4-2", start-date: datetime(year: 2021, month: 2, day: 1), open-date: none),
    station([珍珠泉东], [ZHENZHUQUANDONG], r: 0., anchor: SE, logo-anchor: SE),
    station([瑞龙郊野公园], [RUILONGJIAOYEGONGYUAN], anchor: SE),
    pin-round(y: 7.25, d: SW),
    station([石佛寺], [SHIFOSI], y: 7.),
    station([定山大街], [DINGSHANDAJIE]),
    station([江北商务区], [JIANGBEISHANGWUQU], anchor: W),
    station([江北市民中心], [JIANGBEISHIMINZHONGXIN], y: 5.25),
    station([江心洲尾], [JIANGXINZHOUWEI], y: 2.25),
    pin-round(x: -6.5, y: 2.),
    pin(x: -4.5, y: 2., cfg: none, start-date: auto, open-date: auto),
    station([龙江], [LONGJIANG], logo-anchor: E),
    station([草场门], [CAOCHANGMEN]),
    station([云南路], [YUNNANLU]),
    station([鼓楼], [GULOU]),
    station([鸡鸣寺], [JIMINGSI]),
    station([九华山], [JIUHUASHAN], x: 2., anchor: N),
    pin-round(x: 2.5),
    station([岗子村], [GANGZICUN], y: 2.75),
    station([蒋王庙], [JIANGWANGMIAO], x: 4.5),
    station([王家湾], [WANGJIAWAN], x: 5.25),
    pin-round(x: 5.5, d: NE),
    station([聚宝山], [JUBAOSHAN], x: 8.0),
    pin-round(x: 9.5),
    station([徐庄], [XUZHUANG], x: 10.),
    pin-round(x: 11. + 0.1, d: SE),
    station([金马路], [JINMALU], y: 3.),
    pin-round(y: 2.),
    pin-round(dx: 0.5),
    pin-round(dx: 1., d: NE),
    station([汇通路], [HUITONGLU], x: 13.),
    station([灵山], [LINGSHAN], x: 14.),
    station([东流], [DONGLIU], x: 16.),
    pin-round(x: 18.0),
    station([孟北], [MENGBEI], x: 18.25),
    pin-round(dx: 1.0, d: NE),
    station([西岗桦墅], [XIGANGHUASHU], dy: 0.75),
    pin-round(y: 7.0),
    pin-round(dx: -0.4, d: NW),
    station([仙林湖], [XIANLINHU], r: 1.0, logo-anchor: SW),
    pin(y: 8., cfg: "L4-4", start-date: none),
    pin-round(y: 8.5),
    pin-round(x: 18.25, d: NW),
    station([白象], [BAIXIANG], y: 9.5, anchor: E),
    pin-round(y: 10.0),
    pin-round(x: 18.5, d: NE),
    station([官窑山路], [GUANYAOSHANLU], anchor: SE),
    pin-round(y: 11.5),
    station([华侨城], [HUAQIAOCHENG], x: 19.0),
    station([欢乐谷], [HUANLEGU], logo-anchor: N),
    pin(x: 20.0),
  ),
  line(
    id: "5",
    color: rgb("#fdda24"),
    optional: true,
    start-date: datetime(year: 2016, month: 12, day: 28),
    open-date: datetime(year: 2024, month: 3, day: 31),

    pin(x: -4.25, y: 7., cfg: "L5-N", open-date: none),
    station([方家营], [FANGJIAYING], logo-anchor: S),
    station([南京西站], [NANJINGXIZHAN], anchor: SE, y: 6.375),
    pin-round(x: -5., d: SW),
    station([静海寺], [JINGHAISI], y: 5.75, anchor: E),
    pin-round(y: 5.),
    station([下关], [XIAGUAN], anchor: SW),
    pin-round(x: -3.5),
    station([盐仓桥], [YANCANGQIAO], x: -3.375),
    station([福建路], [FUJIANLU]),
    station([虹桥], [HONGQIAO]),
    station([青春广场], [QINGCHUNGUANGCHANG], x: -1.5, alt: ([山西路], [SHANXILU])),
    pin-round(x: -1., d: SE),
    station([云南路], [YUNNANLU]),
    station([五台山], [WUTAISHAN]),
    station([上海路], [SHANGHAILU]),
    station([朝天宫], [CHAOTIANGONG]),
    pin-round(y: -2.),
    station([三山街], [SANSHANJIE]),
    station([夫子庙], [FUZIMIAO]),
    station([通济门], [TONGJIMEN], x: 2., anchor: N),
    station([光华门], [GUANGHUAMEN]),
    pin-round(x: 4.5),
    station([石门坎], [SHIMENKAN]),
    station([七桥瓮], [QIQIAOWENG], y: -4.),
    station([大校场], [DAJIAOCHANG]),
    station([神机营], [SHENJIYING], y: -7.),
    station([东山香樟园], [DONGSHANXIANGZHANGYUAN], y: -9.),
    pin(y: -10., cfg: "L5-S", open-date: auto),
    station([文靖路], [WENJINGLU], r: 0.),
    station([东山], [DONGSHAN]),
    station([新亭路], [XINTINGLU]),
    station([竹山路], [ZHUSHANLU]),
    station([科宁路], [KENINGLU]),
    pin-round(y: -15.),
    station([前庄], [QIANZHUANG], x: 4., anchor: N),
    station([诚信大道], [CHENGXINDADAO]),
    pin-round(x: 2.5),
    pin-round(y: -16.),
    station([九龙湖南], [JIULONGHUNAN], x: 1.),
    station([吉印大道], [JIYINDADAO], logo-anchor: SE),
    pin(x: -0.5),
  ),
  line(
    id: "6",
    color: rgb("#4bbbb4"),
    optional: true,
    start-date: datetime(year: 2019, month: 12, day: 28),

    pin(x: 1. + 0.05, y: -8. + 0.1),
    station([南京南站], [NANJING SOUTH RAILWAY STATION], x: 1.),
    pin-round(x: 3.5),
    station([夹岗], [JIAGANG], y: -7.),
    station([机场跑道旧址], [JICHANGPAODAOJIUZHI], anchor: NE),
    station([市中医院], [SHIZHONGYIYUAN]),
    station([应天东街], [YINGTIANDONGJIE]),
    station([中和桥], [ZHONGHEQIAO]),
    station([光华门], [GUANGHUAMEN]),
    station([明故宫], [MINGGUGONG]),
    station([富贵山], [FUGUISHAN], y: 1.5),
    pin-round(y: 2.),
    pin-round(y: 2.5 - 0.07, d: NW),
    station([岗子村], [GANGZICUN]),
    pin-round(x: 4., d: NE),
    pin-round(y: 4.),
    station([花园路], [HUAYUANLU], y: 4.5),
    pin-round(x: 3., d: NW),
    station([红山新城], [HONGSHANXINCHENG], y: 6.),
    pin-round(y: 6.5),
    station([营苑南路], [YINGYUANNANLU], alt: ([红山], [HONGSHAN])),
    pin-round(x: 4., d: NE),
    station([万寿], [WANSHOU]),
    pin-round(y: 10.),
    station([燕江新城], [YANJIANGXINCHENG], x: 4.5),
    station([兴学路], [XINGXUELU], x: 6.),
    station([兴智街], [XINGZHIJIE]),
    station([十月广场], [SHIYUEGUANGCHANG], x: 9.5, anchor: S),
    pin-round(x: 11.0),
    pin-round(dy: 0.5),
    station([金陵石化], [JINLINGSHIHUA], x: 12.5),
    station([栖霞山], [QIXIASHAN], r: 1.0, logo-anchor: NW),
    pin(x: 15., cfg: "L6-E", start-date: none),
    pin-round(x: 18.0),
    pin-round(y: 10.0 + 0.1),
    station([摄山], [SHESHAN], r: 1.0, anchor: N, logo-anchor: S),
    pin(x: 19.0),
  ),
  line(
    id: "7",
    color: rgb("#4a7729"),
    optional: true,
    features: ("L7-full": ("L7-N", "L7-S", "L7-M")),
    start-date: datetime(year: 2017, month: 5, day: 16),
    open-date: datetime(year: 2022, month: 12, day: 28),

    pin(x: 10., y: 9., cfg: "L7-N"),
    station(
      [仙新路],
      [XIANXINLU],
      alt: ([南京东站], [NANJINGDONGZHAN]),
      marker-rotation: -45deg,
      logo-anchor: N,
      logo-offset: (0, -0.1),
    ),
    station([尧化门], [YAOHUAMEN]),
    station([尧化新村], [YAOHUAXINCUN]),
    station([丁家庄南], [DINGJIAZHUANGNAN], y: 6.5),
    pin-round(x: 7., y: 6.),
    station([丁家庄], [DINGJIAZHUANG], y: 7.),
    pin-round(x: 5., d: NW),
    station([万寿], [WANSHOU]),
    station([晓庄], [XIAOZHUANG]),
    station([幕府山], [MUFUSHAN], x: 0.5),
    pin-round(x: -1.),
    station([五塘广场], [WUTANGGUANGCHANG]),
    pin-round(x: -1.5, d: SW),
    station([幕府西路], [MUFUXILU], r: 1., anchor: E),
    pin(y: 7., cfg: "L7-M", open-date: datetime(year: 2024, month: 12, day: 28)),
    station([钟阜路], [ZHONGFULU], anchor: SE),
    pin-round(y: 5.5),
    station([福建路], [FUJIANLU]),
    pin-round(x: -3., d: SW),
    station([古平岗], [GUPINGGANG], y: 3.25),
    station([草场门], [CAOCHANGMEN]),
    station([清凉山], [QINGLIANGSHAN]),
    station([莫愁湖], [MOCHOUHU]),
    station([大士茶亭], [DASHICHATING]),
    station([南湖], [NANHU]),
    station([应天大街], [YINGTIANDAJIE], y: -3),
    pin(y: -3., cfg: "L7-S", open-date: datetime(year: 2023, month: 12, day: 28)),
    pin-round(y: -3.5),
    station([梦都大街东], [MENGDUDAJIEDONG], y: -4.0),
    station([新城科技园], [XINCHENGKEJIYUAN]),
    station([中胜], [ZHONGSHENG]),
    station([嘉陵江东街], [JIALINGJIANGDONGJIE], y: -5.75),
    pin-round(y: -6.25, d: SW),
    pin-round(dx: -0.75),
    station([永初路], [YONGCHULU]),
    pin-round(x: -7.5, d: SW),
    station([太清路], [TAIQINGLU], y: -7.5),
    station([螺塘路], [LUOTANGLU]),
    pin-round(y: -9.0 + 0.14),
    station([西善桥], [XISHANQIAO], logo-anchor: SE),
    pin(y: -9.5 + 0.07, d: SW),
  ),
  line(
    id: "8",
    color: rgb("#ab2328"),
    optional: true,

    pin(x: -0.5, y: -4., cfg: none),
    station([中华门], [ZHONGHUAMEN]),
    station([雨花门], [YUHUAMMEN]),
    pin-round(x: 2.25),
    station([康安里], [KANGANLI]),
    pin-round(x: 3.25, d: NE),
    station([中和桥], [ZHONGHEQIAO]),
    station([石门坎], [SHIMENKAN]),
    station([胜利村], [SHENGLICUN], marker-rotation: 90deg),
    pin-round(x: 6.5),
    station([双拜岗], [SHUANGBAIGANG], x: 7.25),
    pin-round(dy: 1., d: NE),
    station([沧波门], [CANGBOMEN], x: 8.25),
    pin-round(x: 8.5),
    pin-round(x: 9., d: SE),
    station([建南], [JIANNAN]),
    pin-round(x: 10.),
    station([麒麟生态公园], [QILINSHENGTAIGONGYUAN], y: -2.0),
    pin-round(x: 11., d: NE),
    station([天成路], [TIANCHENGLU]),
    pin-round(x: 12.),
    station([定林], [DINGLIN]),
    pin-round(x: 13., d: NE),
    station([芝嘉路], [ZHIJIALU]),
    station([麒麟门], [QILINMEN]),
    pin-round(y: 2.),
    pin-round(x: 14.),
    station([灵山], [LINGSHAN]),
    pin-round(y: 5.5),
    station([仙林中心], [XIANLINZHONGXIN]),
    pin-round(x: 13., d: NW),
    pin-round(y: 8.),
    station([文澜路], [WENLANLU]),
    pin-round(y: 9.25, d: NW),
    station([仙林站], [XIANLINZHAN]),
    pin-round(x: 10.75, d: SW),
    station([仙新路], [XIANXINLU]),
    pin-round(x: 9.5, d: NW),
    station([十月广场], [SHIYUEGUANGCHANG], logo-anchor: NE),
    pin(y: 10.),
  ),
  line(
    id: "9",
    color: rgb("#fa4616"),
    optional: true,
    start-date: datetime(year: 2020, month: 3, day: 8),

    pin(x: 3. - 0.1, y: 6.),
    station([红山新城], [HONGSHANXINCHENG], logo-anchor: NE),
    pin-round(y: 5.),
    station([红山路], [HONGSHANLU], x: 2., alt: ([曹后村], [CAOHOUCUN])),
    pin-round(x: 1.5 - 0.15),
    station([南京站], [NANJING RAILWAY STATION]),
    pin-round(y: 6., d: NW),
    station([中央门], [ZHONGYANGMEN]),
    station([钟阜路], [ZHONGFULU]),
    station([四平路广场], [SIPINGLUGUANGCHANG]),
    pin-round(x: -4.5),
    station([下关], [XIAGUAN]),
    station([白云亭], [BAIYUNTING]),
    station([三汊河], [SANCHAHE]),
    station([龙江], [LONGJIANG]),
    station([管子桥], [GUANZIQIAO]),
    station([江东门], [JIANGDONGMEN]),
    pin-round(y: -1.),
    station([清江南路], [QINGJIANNANLU], dx: -1.0),
    pin-round(dx: -2.0),
    station([上新河], [SHANGXINHE], y: -1.25, anchor: SE),
    station([绿博园], [LÜBOYUAN]),
    station([江苏大剧院·宪法公园], [JSCPA/XIANFAGONGYUAN], r: 1.0, anchor: E, logo-anchor: NE),
    pin(y: -3.5, cfg: "L9-2", start-date: none),
    pin-round(y: -3.75),
    station([棉花堤], [MIANHUADI], y: -4.25, anchor: SE),
    station([青奥村], [QINGAOCUN], anchor: SE),
    station([双闸], [SHUANGZHA], anchor: SE),
    station([海峡城], [HAIXIACHENG], anchor: SE),
    station([鱼嘴湿地公园], [YUZUISHIDIGONGYUAN], anchor: SE),
    station([头关], [TOUGUAN], y: -7.125, anchor: SE),
    pin-round(x: -10.0, d: SW),
    station([鱼嘴], [YUZUI]),
    pin(y: -8.5, cfg: "L9-3", start-date: none),
    pin-round(y: -9.0),
    station([足球小镇], [ZUQIUXIAOZHEN], anchor: NE),
    pin-round(y: -9.575, d: SE),
    station([刘村], [LIUCUN], logo-anchor: SE),
    station([凤集大道], [FENGJIDADAO]),
    station([凤汇大道], [FENGHUIDADAO], y: -11.25),
    pin-round(x: -11.5, d: SW),
    station([板桥中心], [BANQIAOZHONGXIN], y: -11.875),
    pin-round(y: -12.5),
    station([板桥], [BANQIAO], marker-rotation: 45deg),
    station([莲花湖公园], [LIANHUAHUGONGYUAN], anchor: W, marker-rotation: 45deg, logo-anchor: NW),
    pin(x: -9.5),
  ),
  line(
    id: "10",
    color: rgb("#b9975b"),
    optional: true,
    start-date: datetime(year: 2010, month: 1, day: 10),
    open-date: datetime(year: 2014, month: 7, day: 1),

    pin(x: -1.75 + 0.08, y: -5.25 - 0.08),
    station([安德门], [ANDEMEN], r: 0.0, branch: true, logo-anchor: SE, logo-offset: (0.2, 0.1)),
    pin-round(x: -2.5, d: SW),
    pin-round(x: -3.75),
    station([小行], [XIAOHANG]),
    station([中胜], [ZHONGSHENG]),
    station([元通], [YUANTONG]),
    pin-round(x: -6.25, d: NW),
    station([奥体中心], [OLYMPIC STADIUM], y: -3.5),
    pin-round(y: -3.0, d: NE),
    station([梦都大街], [MENGDUDAJIE], y: -2.75),
    pin-round(y: -2.),
    station([绿博园], [LÜBOYUAN]),
    pin-round(x: -7.0),
    station([江心洲], [JIANGXINZHOU], x: -8.75),
    station([临江·青奥体育公园], [LINJIANG/YOGSP], x: -11.5),
    station([浦口万汇城], [PUKOUWANHUICHENG]),
    station([南京工业大学], [NANJING TECH]),
    pin-round(y: 5., d: NW),
    station([龙华路], [LONGHUALU]),
    station([文德路], [WENDELU]),
    station([雨山路], [YUSHANLU], r: 1.0, cfg: none, logo-anchor: SE),
    pin(y: 2., d: SW, cfg: "L10-3", start-date: auto),
    station([新胜河], [XINSHENGHE]),
    station([科工园], [KEGONGYUAN], logo-anchor: SE),
    pin(y: 0., d: SW, end: true),

    pin(
      x: -1.75 + 0.08,
      y: -5.25 - 0.08,
      cfg: "L10-2",
      start-date: datetime(year: 2020, month: 6, day: 2),
      open-date: none,
    ),
    pin-round(y: -5., d: NE),
    station([共青团路], [GONGQINGTUANLU], x: -0.5, anchor: N, branch: true),
    station([雨花台], [YUHUATAI], x: 0.5, anchor: N),
    station([卡子门], [KAZIMEN]),
    pin-round(x: 2.25),
    pin-round(x: 3.25, d: SE),
    station([机场跑道旧址], [JICHANGPAODAOJIUZHI]),
    pin-round(x: 4.),
    station([大校场], [DAJIAOCHANG]),
    station([承天大道], [CHENGTIANDADAO], x: 5.0),
    station([高桥门], [GAOQIAOMEN], x: 5.75),
    pin-round(x: 6., d: NE),
    station([杨庄], [YANGZHUANG], x: 7.5),
    station([石杨路], [SHIYANGLU], alt: ([王武庄], [WANGWUZHUANG])),
    station([东麒路], [DONGQILU], logo-anchor: NW),
    pin(x: 9.5),
  ),
  line(
    id: "11",
    color: rgb("#ef426f"),
    optional: true,
    start-date: datetime(year: 2021, month: 11, day: 30),

    pin(x: -5., y: 12.5),
    station([浦洲路], [PUZHOULU], logo-anchor: S),
    station([柳洲东路], [LIUZHOUDONGLU]),
    pin-round(y: 11.),
    station([明滨路], [MINGBINLU], x: -5.25),
    station([长江大桥北], [CHANGJIANGDAQIAOBEI]),
    station([柳洲南路], [LIUZHOUNANLU]),
    station([浦东路], [PUDONGLU]),
    station([新马路], [XINMALU]),
    station([南京铁道学院], [NJRTS]),
    station([广西埂大街], [GUANGXIGENGDAJIE]),
    station([江北商务区], [JIANGBEISHANGWUQU]),
    station([七里河], [QILIHE]),
    station([临滁路], [LINCHULU]),
    station([浦口万汇城], [PUKOUWANHUICHENG]),
    station([城南河], [CHENGNANHE]),
    station([江淼路], [JIANGMIAOLU]),
    station([卓越路], [ZHUOYUELU]),
    station([行知路], [XINGZHILU]),
    station([绿水湾路], [LÜSHUIWANLU]),
    station([西江口], [XIJIANGKOU], y: -2),
    station([马骡圩], [MALUOWEI], logo-anchor: SE),
    pin(y: -3., d: SW),
  ),
  line(
    id: "12",
    color: rgb("#c87a30"),
    optional: true,

    pin(x: 11.0 - 0.1, y: 3.0),
    station([金马路], [JINMALU], logo-anchor: NE),
    pin-round(y: 1.5),
    pin-round(x: 12.0),
    station([百水桥], [BAISHUIQIAO]),
    pin-round(y: 0.5),
    station([南湾营], [NANWANYING]),
    station([花岗], [HUAGANG]),
    pin-round(x: 10.0, d: SW),
    station([麒麟生态公园], [QILINSHENGTAIGONGYUAN]),
    pin-round(x: 10.75, d: SE),
    station([光华路], [GUANGHUALU]),
    pin-round(x: 9.5, d: SW),
    station([东麒路], [DONGQILU]),
    station([远泰路], [YUANTAILU]),
    station([上坊], [SHANGFANG]),
    pin-round(y: -9.0),
    station([万安西路], [WANANXILU]),
    pin-round(y: -11.0, d: SW),
    station([金箔路], [JINBOLU]),
    station([东山], [DONGSHAN]),
    pin-round(x: 4.0),
    station([杨家圩], [YANGJIAWEI], anchor: E),
    pin-round(y: -12.5),
    station([西门子路], [XIMENZILU]),
    pin-round(x: 2.5 + 0.1),
    station([百家湖], [BAIJIAHU]),
    pin-round(y: -13.0),
    station([天元西路], [TIANYUANXILU]),
    pin-round(x: 0.0),
    station([爱涛路], [AITAOLU]),
    pin-round(y: -14.0),
    station([河海大学·佛城西路], [HHU/FOCHENGXILU], anchor: NW),
    station([康厚街], [KANGHOUJIE]),
    station([牛首山], [NIUSHOUSHAN], logo-anchor: N),
    pin(x: -3.0),
  ),
  line(
    id: "13",
    // color: rgb("#007654"),
    color: rgb("#A6BE47"),
    optional: true,

    pin(x: -11.5, y: 6.),
    station([国际健康社区], [GUOJIJIANKANGSHEQU], logo-anchor: N),
    pin-round(dx: 1.0 - 0.14),
    station([江北商务区], [JIANGBEISHANGWUQU]),
    station([江北市民中心], [JIANGBEISHIMINZHONGXIN]),
    pin-round(x: -9.0, d: SE),
    pin-round(y: 3.0),
    station([江心洲北], [JIANGXINZHOUBEI], x: -7.25),
    pin-round(x: -7.0, d: SE),
    station([乐山路], [LESHANLU], x: -5.25),
    station([管子桥], [GUANZIQIAO]),
    station([嫩江路], [NENJIANGLU], anchor: N),
    station([清凉山], [QINGLIANGSHAN]),
    station([广州路], [GUANGZHOULU], alt: ([省人民医院], [SHENGRENMINYIYUAN]), anchor: N),
    station([五台山], [WUTAISHAN]),
    station([珠江路], [ZHUJIANGLU]),
    station([浮桥], [FUQIAO]),
    station([马标], [MABIAO], x: 2.0),
    pin-round(x: 2.5),
    station([解放路], [JIEFANGLU], y: -0.5),
    pin-round(y: -1.0),
    station([月牙湖], [YUEYAHU], x: 4.0),
    station([后标营], [HOUBIAOYING]),
    station([南京农业大学], [NANJINGNONGYEDAXUE], x: 6.0),
    pin-round(x: 6.5),
    station([胜利村], [SHENGLICUN]),
    pin-round(y: -3.5 + 0.14),
    station([高桥门], [GAOQIAOMEN], logo-anchor: S, logo-offset: (-0.2, 0)),
    pin(dx: -0.8, d: SW),
  ),
  line(
    id: "16",
    // color: rgb("#ef7f1b"),
    color: rgb("#A8D19E"),
    optional: true,

    pin(x: 3.5, y: -6.0 + 0.1),
    station([机场跑道旧址], [JICHANGPAODAOJIUZHI], logo-anchor: NW),
    pin-round(x: 2.5),
    station([大明路], [DAMINGLU]),
    station([玉兰路], [YULANLU], x: 1.5, anchor: SE),
    pin-round(y: -7.0 - 0.1, d: SW),
    station([软件大道], [RUANJIANDADAO], x: -1.0),
    pin-round(x: -2.0),
    station([宁双路], [NINGSHUANGLU], y: -7.4, anchor: E),
    station([铁心桥], [TIEXINQIAO]),
    station([银杏山庄], [YINXINGSHANZHUANG], y: -9.5),
    pin-round(y: -10.0),
    station([大定坊], [DADINGFANG], x: -3.0),
    station([梅苑南路], [MEIYUANNANLU]),
    station([梅欣路], [MEIXINLU], x: -6.5),
    pin-round(x: -7.0),
    station([西善花苑], [XISHANHUAYUAN], dx: -0.5),
    station([华兴路], [HUAXINGLU]),
    station([新城大街], [XINCHENGDAJIE]),
    station([莲花湖公园], [LIANHUAHUGONGYUAN]),
    station([板桥东], [BANQIAODONG]),
    pin-round(x: -10.5, d: SW),
    station([绿洲], [LÜZHOU], dx: -0.5),
    station([板桥南], [BANQIAONAN], marker-rotation: 45deg, logo-anchor: SE),
    pin(x: -12.0),
  ),
  line(
    id: "18",
    // color: rgb("#ee7852"),
    color: rgb("#FA9A85"),
    optional: true,

    pin(x: -12 - 0.1, y: 12, layer: -5),
    station([南京北站], [NANJING NORTH RAILWAY STATION], logo-anchor: NE),

    pin-round(y: 11.0 - 0.3, corner-radius: 0.25),
    pin-round(x: -10.75, d: SE),
    pin-round(y: 8.75),
    station([南京铁道学院], [NANJINGTIEDAOXUEYUAN]),
    station([新华街], [XINHUAJIE], y: 6.25),
    pin-round(y: 3.25, d: SE),
    station([古平岗], [GUPINGGANG]),
    pin-round(x: -1.5),
    pin-round(y: 2.1, d: SE),
    pin-round(x: 0.25),
    station([鼓楼], [GULOU]),
    station([新街口], [XINJIEKOU]),
    pin-round(y: -2.5),
    pin-round(dx: 0.25, d: SE),
    pin-round(y: -3.25),
    station([中华门], [ZHONGHUAMEN]),
    pin-round(dx: -1.0, d: SW),
    pin-round(dy: -0.5),
    pin-round(x: 1.75),
    pin-round(y: -8.25),
    station([南京南站], [NANJINGNANZHAN]),
    pin-round(x: -0.25),
    station([河海大学·佛城西路], [HHU/FOCHENGXILU]),
    pin-round(y: -16.25),
    pin-round(dx: 0.75, d: SE),
    station([禄口东], [LUKOUDONG], y: -18.0),
    pin-round(y: -19.0),
    station([翔宇路南], [XIANGYULUNAN]),
    pin-round(x: -1.0),
    pin-round(y: -20.0 - 0.1),
    station([禄口机场西], [LUKOUJICHANGXI]),
    station([禄口机场], [LUKOUJICHANG], logo-anchor: N),
    pin(x: 1.0),
  ),
  line(
    id: "S1",
    color: rgb("#4bbbb4"),
    optional: true,
    start-date: datetime(year: 2011, month: 12, day: 27),
    open-date: datetime(year: 2014, month: 7, day: 1),

    pin(x: 1. + 0.05, y: -8 + 0.1),
    station([南京南站], [NANJING SOUTH RAILWAY STATION]),
    pin-round(dx: -1.0),
    pin-round(x: -0.5, d: SW),
    station([翠屏山], [CUIPINGSHAN], y: -11., anchor: E),
    station([河海大学·佛城西路], [HHU/FOCHENGXILU], y: -14.0, anchor: E),
    station([吉印大道], [JIYINDADAO]),
    station([正方中路], [ZHENGFANGZHONGLU]),
    station([翔宇路北], [XIANGYULUBEI], alt: ([如意湖], [RUYIHU])),
    station([翔宇路南], [XIANGYULUNAN]),
    pin-round(y: -20.),
    station([禄口机场], [LUKOU INTERNATIONAL AIRPORT], r: 1.),
    pin(
      dx: 1.5,
      d: E,
      cfg: "S1-E",
      start-date: datetime(year: 2016, month: 4, day: 8),
      open-date: datetime(year: 2018, month: 5, day: 26),
    ),
    station([空港新城江宁], [KONGGANGXINCHENGJIANGNING], logo-anchor: N),
    pin(dx: 1.5),
  ),
  line(
    id: "S2",
    color: rgb("#ab2328"),
    optional: true,
    start-date: datetime(year: 2021, month: 3, day: 6),

    pin(x: -0.5, y: -4., cfg: none, start-date: none),
    station([中华门], [ZHONGHUAMEN]),
    pin-round(x: -2.),
    station([凤台南路], [FENGTAINANLU]),
    station([小行], [XIAOXING]),
    pin-round(x: -5., d: SW),
    pin-round(x: -5.5),
    station([油坊桥], [YOUFANGQIAO]),
    pin(x: -8., y: -9.5, cfg: none, start-date: auto),
    station([西善桥], [XISHANQIAO], r: 0.),
    station([雨花经济开发区], [YUHUAJINGJI DEVELOPMENT ZONE]),
    station([板桥], [BANQIAO]),
    station([板桥南], [BANQIAONAN]),
    station([江宁镇], [JIANGNINGZHEN]),
    station([江宁滨江开发区], [JIANGNINGBINJIANG DEVELOPMENT ZONE]),
    station([牧龙], [MULONG]),
    station([铜井], [TONGJING]),
    pin-round(dy: -7., d: SW),
    station([慈湖], [CIHU], dy: -0.5),
    station([湖北路], [HUBEILU]),
    station([湖南路], [HUNANLU]),
    station([雨山东路], [YUSHANDONGLU]),
    station([九华路], [JIUHUALU]),
    station([采石河], [CAISHIHE]),
    station([当涂东站], [DANGTU EAST RAILWAY STATION]),
    station([当涂南], [DANGTUNAN], logo-anchor: N),
    pin(dy: -6.5),
  ),
  line(
    id: "S3",
    color: rgb("#b06c96"),
    optional: true,
    start-date: datetime(year: 2012, month: 12, day: 27),
    open-date: datetime(year: 2017, month: 12, day: 6),

    pin(x: 1. + 0.05, y: -8),
    station([南京南站], [NANJING SOUTH RAILWAY STATION]),
    station([景明佳园], [JINGMINGJIAYUAN], x: -0.5),
    station([铁心桥], [TIEXINQIAO]),
    station([春江路], [CHUNJIANGLU]),
    station([贾西], [JIAXI]),
    pin-round(x: -5.25),
    station([油坊桥], [YOUFANGQIAO]),
    station([永初路], [YONGCHULU]),
    pin-round(x: -7.375, d: NW),
    station([平良大街], [PINGLIANGDAJIE], y: -6.25),
    station([吴侯街], [WUHOUJIE], y: -6.75),
    pin-round(x: -8.5, d: SW),
    station([高庙路], [GAOMIAOLU], y: -7.5),
    pin-round(dy: -1.5),
    station([天保], [TIANBAO], x: -9.25),
    station([刘村], [LIUCUN], y: -10.0),
    pin-round(dy: -2.0, d: SW),
    pin-round(x: -18.5, d: NW),
    station([马骡圩], [MALUOWEI], x: -19.0),
    station([兰花塘], [LANHUATANG], x: -19.75),
    station([双垅], [SHUANGLONG]),
    station([石碛河], [SHIQIHE]),
    station([桥林新城], [QIAOLINXINCHENG]),
    station([林山], [LINSHAN]),
    station([高家冲], [GAOJIACHONG], logo-anchor: SE),
    pin(dx: -5.5, d: SW, end: true),

    pin(x: 1.0, y: -8.0, cfg: "S3-E", start-date: none),
    pin-round(x: 4.0),
    station([金盛路], [JINSHENGLU], anchor: E, branch: true),
    pin-round(dy: -1.0),
    station([东山香樟园], [DONGSHANXIANGZHANGYUAN]),
    pin-round(dx: 1.0),
    station([湖西路], [HUXILU], dx: 1.0, alt: ([土山], [TUSHAN])),
    pin-round(x: 8.5, d: NE),
    station([上坊工业园], [SHANGFANGGONGYEYUAN], y: -5., anchor: E),
    station([石杨路], [SHIYANGLU]),
    pin-round(y: -3.),
    pin-round(dx: 1.0 + 0.14),
    station([麒麟生态公园], [QILINSHENGTAIGONGYUAN], y: -2.0),
    pin-round(y: -1.75, d: NE),
    pin-round(x: 13.5),
    station([泉水路], [QUANSHUILU]),
    pin-round(dx: 1.0, d: NE),
    station([中科院], [ZHONGKEYUAN]),
    pin-round(y: 1.0 - 0.1),
    station([东郊小镇], [DONGJIAOXIAOZHEN], x: 15.0),
    pin-round(x: 16.0),
    station([东流], [DONGLIU]),
    station([三阳路], [SANYANGLU], y: 4.5, anchor: E),
    pin-round(y: 5.0),
    pin-round(y: 5.5, d: NW),
    station([南大仙林校区], [NJU XIANLIN CAMPUS]),
    station([江苏广电], [JSBC], y: 9.0),
    pin-round(y: 9.5),
    pin-round(x: 12.0 - 0.14),
    station([仙林站], [XIANLIN RAILWAY STATION]),
    pin(dy: -0.7, d: SW),
  ),
  line(
    id: "S4",
    color: rgb("#ff661f"),
    optional: true,
    start-date: datetime(year: 2018, month: 12, day: 30),
    open-date: datetime(year: 2023, month: 6, day: 28),

    pin(x: -12. + 0.1, y: 12., cfg: "S4-2", start-date: none),
    station([南京北站], [NANJING NORTH RAILWAY STATION], anchor: E),
    pin-round(dy: 1.5),
    station([北斗产业园], [BEIDOUCHANYEYUAN]),
    pin-round(dx: -1., d: NW),
    station([张堡], [ZHANGBAO]),
    pin-round(dx: -1. - 0.1),
    pin(dx: -0.5, cfg: none, start-date: auto),
    station([汊河], [CHAHE], r: 0.),
    station([汊河新城], [CHAHEXINCHENG], dx: -1.0),
    station([相官], [XIANGGUAN], dx: -1.75, open-date: none),
    station([十二里半], [SHIERLIBAN]),
    pin-round(dx: -4., d: NW),
    station([水口], [SHUIKOU], dx: -0.5, open-date: none),
    station([林楼], [LINLOU], dx: -1.5),
    pin-round(dx: -2.),
    station([大王郢], [DAIWANGYING]),
    pin-round(dy: -1.),
    station([苏滁商务中心], [SUCHUSHANGWUZHONGXIN], dy: -0.25),
    station([担子], [DANZI]),
    pin-round(dy: -1.5, d: SW),
    station([滁州政务中心], [CHUZHOUZHENGWUZHONGXIN], dx: -0.5),
    station([琅琊山], [LANGYASHAN], dx: -1.5),
    pin-round(dx: -2.),
    station([花博园], [HUABOYUAN], dy: -0.5),
    station([腰铺], [YAOPU], dy: -1.5),
    pin-round(dy: -2.),
    station([滁州高铁站], [CHUZHOU RAILWAY STATION], logo-anchor: N),
    pin(dy: -0.5, d: SE),
  ),
  line(
    id: "S5",
    color: rgb("#f5df4d"),
    optional: true,
    start-date: datetime(year: 2021, month: 12, day: 28),

    pin(x: 16.0 + 0.1, y: 3.0, cfg: "L5-S", start-date: none),
    station([东流], [DONGLIU], logo-anchor: NW),
    pin-round(dy: 1.0),
    pin-round(dy: 1., d: NE),
    station([骆家边], [LUOJIABIAN], x: 17.5),
    pin-round(x: 18.5),
    pin(x: 18.5, y: 8., cfg: none, start-date: auto),
    station([仙林湖], [XIANLINHU], r: 0),
    pin-round(dy: 2.),
    station([摄山], [SHESHAN], dx: 0.5),
    pin-round(dx: 1.5),
    station([江乘], [JIANGCHENG]),
    station([龙潭], [LONGTAN], dx: 1.25),
    pin-round(dx: 1.5, d: NE),
    station([花园营防], [HUAYUANYINGFANG], dx: 0.5),
    station([龙潭新城], [LONGTANXINCHENG]),
    station([靖安], [JINGAN], dx: 2.5),
    pin-round(dx: 3.),
    station([黄天荡], [HUANGTIANDANG], dy: 0.5),
    station([万年路], [WANNIANLU], dy: 3.),
    pin-round(dy: 3.5),
    station([工农路], [GONGNONGLU], dx: 0.5),
    station([天宁大道], [TIANNINGDADAO]),
    station([仪征开发区], [YIZHENG DEVELOPMENT ZONE], dx: 2.5),
    station([朴席], [PUXI], dx: 4.),
    pin-round(dx: 4.5),
    station([扬州汊河], [CHAHE], anchor: E),
    station([站南路], [ZHANNANLU], anchor: E),
    station([扬州西站], [YANGZHOU WEST RAILWAY STATION], anchor: E, logo-anchor: S),
    pin(dy: 3.),
  ),
  line(
    id: "S6",
    color: rgb("#c98bdb"),
    optional: true,
    start-date: datetime(year: 2018, month: 12, day: 21),
    open-date: datetime(year: 2021, month: 12, day: 28),

    pin(x: 6.0, y: -1.0 + 0.1, cfg: "S6-W", start-date: none, open-date: none),
    station([南京农业大学], [NJAU], logo-anchor: N),
    pin-round(x: 6.5 + 0.1, corner-radius: 0.3),
    pin-round(y: -1.5),
    station([南京理工大学], [NJUST], x: 7.5),
    pin-round(x: 8.5),
    station([顾家营], [GUJIAYING], y: -0.5),
    pin-round(y: -0.25),
    station([五棵松], [WUKESONG]),
    pin-round(y: 1.0, d: NE),
    pin(x: 10.0, y: 1., cfg: none, start-date: auto, open-date: auto),
    station([马群], [MAQUN], r: 0, logo-anchor: N),
    station([百水桥], [BAISHUIQIAO], x: 12.0),
    station([麒麟门], [QILINMEN], x: 13.0),
    station([东郊小镇], [DONGJIAOXIAOZHEN], x: 15.0),
    station([古泉], [GUQUAN], x: 17.0),
    pin-round(dx: 7.5),
    pin-round(dx: 0.5, d: NE),
    station([南京猿人洞], [NANJINGYUANRENDONG]),
    pin-round(dx: 1.5),
    station([汤山], [TANGSHAN]),
    pin-round(dy: -0.75),
    pin-round(dx: -0.5, d: SW),
    station([泉都大街], [QUANDOUDAJIE]),
    pin-round(dy: -0.5),
    pin-round(dx: 0.25, d: SE),
    pin-round(dx: 0.75),
    station([黄梅], [HUANGMEI]),
    pin-round(dx: 1., d: SE),
    station([童世界], [TONGSHIJIE], dx: 1.5),
    pin-round(dx: 2.),
    station([华阳], [HUAYANG]),
    station([崇明], [CHONGMING]),
    station([句容], [JURONG], logo-anchor: N),
    pin(dy: -6.),
  ),
  line(
    id: "S7",
    color: rgb("#e89cae"),
    optional: true,
    start-date: datetime(year: 2016, month: 4, day: 8),
    open-date: datetime(year: 2018, month: 5, day: 26),

    pin(x: 2.5, y: -20.),
    station([空港新城江宁], [KONGGANGXINCHENGJIANGNING]),
    pin-round(dx: 1.25),
    station([柘塘], [ZHETANG], x: 4.),
    station([空港新城溧水], [KONGGANGXINCHENGLISHUI]),
    station([群力], [QUNLI], x: 5.),
    pin-round(dx: 1.5, d: SE),
    station([卧龙湖], [WOLONGHU], y: -21.75),
    station([溧水], [LISHUI]),
    station([中山湖], [ZHONGSHANHU]),
    station([幸庄], [XINGZHUANG]),
    station([无想山], [WUXIANGSHAN], logo-anchor: N),
    pin(dy: -2.5),
  ),
  line(
    id: "S8",
    color: rgb("#ea7600"),
    optional: true,
    start-date: datetime(year: 2012, month: 6, day: 21),
    open-date: datetime(year: 2014, month: 8, day: 1),

    pin(
      x: -6.,
      y: 10.,
      cfg: "S8-N",
      start-date: datetime(year: 2018, month: 11, day: 10),
      open-date: datetime(year: 2022, month: 9, day: 30),
    ),
    station([长江大桥北], [CHANGJIANGDAQIAOBEI], logo-anchor: E),
    station([毛纺厂路], [MAOFANGCHANGLU]),
    pin(dy: 1.25, d: NW, cfg: none, start-date: auto, open-date: auto),
    station([泰山新村], [TAISHANXINCUN], r: 0., logo-anchor: NW),
    pin-round(dy: 0.25, d: NW),
    station([泰冯路], [TAIFENGLU]),
    station([高新开发区], [GAOXIN DEVELOPMENT ZONE]),
    station([信息工程大学], [NUIST]),
    station([卸甲甸], [XIEJIADIAN], y: 14.25),
    pin-round(dy: 3.5),
    station([大厂], [DACHANG], dx: 0.25),
    station([葛塘], [GETANG]),
    station([长芦], [ZHANGLU]),
    station([化工园], [HUAGONGYUAN]),
    station([六合开发区], [LUHE DEVELOPMENT ZONE]),
    station([龙池], [LONGCHI]),
    station([雄州], [XIONGZHOU]),
    station([凤凰山公园], [FENGHUANGSHANGONGYUAN]),
    station([方州广场], [FANGZHOUGUANGCHANG]),
    station([沈桥], [SHENQIAO]),
    station([八百桥], [BABAIQIAO]),
    station([金牛湖], [JINNIUHU], logo-anchor: S),
    pin(dx: 6., d: NE),
  ),
  line(
    id: "S9",
    color: rgb("#f1b434"),
    optional: true,
    start-date: datetime(year: 2014, month: 1, day: 1),
    open-date: datetime(year: 2017, month: 12, day: 30),

    pin(x: -0.5, y: -19.),
    station([翔宇路南], [XIANGYULUNAN], logo-anchor: SE),
    pin-round(dx: -0.1, d: SW),
    pin-round(y: -20.75),
    station([铜山], [TONGSHAN]),
    pin-round(x: 0.5),
    station([石湫], [SHIJIAO], y: -21.),
    station([明觉], [MINGJUE], y: -22.),
    station([团结圩], [TUANJIEWEI], y: -24.),
    station([高淳], [GAOCHUN], logo-anchor: E),
    pin(y: -25.),
  ),
  line(
    id: "2-9",
    color: rgb("#ffc65f"),
    optional: true,

    pin(x: -4.5 - 0.1, y: -2),
    station([集庆门大街], [JIQINGMENDAJIE], logo-anchor: SE),
    pin-round(y: -1 - 0.1),
    station([清江南路], [QINGJIANGNANLU]),
    pin(x: -5.5),
  ),
)
