#import "template.typ": operation-notice

#import "template.typ": notice

#notice[
  #import "/src/system-map/lines.typ": lines
  #import "/src/system-map/logo.typ": line-logo


  #set align(top + left)
  #show: block.with(width: 100%, inset: (x: 24pt, top: 17pt), stroke: red)

  #set text(font: "FZLanTingHei-DB-GBK", size: 19pt, fill: blue, lang: "zh")
  #set par(justify: true, leading: 0.77em)


  #let line = lines.find(line => line.id == "10")
  #let logo = line-logo(line.id, line.color, text-color: if line.id == "5" { rgb("#003A70") } else { white })
  #let logo = box(width: 1.38em, move(dy: 0.3em, text(0.45em, logo)))

  #align(center, text(34pt, tracking: 7pt)[告示])
  #v(18.5pt - 8.2pt, weak: true)
  #h(1.75em)因#logo;号线江心洲至临江上下行设备故障，现行车调整为安德门站至绿博园站、浦口万汇城站至雨山路站采用小交路运行，浦口万汇城站至绿博园站已启动公交接驳，有急事的乘客请根据车站现场工作人员指引，有序换乘其他地面交通工具，带来不便，敬请谅解！#h(0.35em)
]


#operation-notice("7", "钟阜路", "南湖", kind: "open")
#operation-notice("5", "文靖路", "吉印大道")
#operation-notice("10", "江心洲", "临江·青奥体育公园")
