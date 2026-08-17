#import "kami.typ": kami-document
#import "themes.typ": changelog
#set document(title: "{{项目名称}} · 更新日志", author: "{{作者}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 16mm, right: 18mm, bottom: 18mm, left: 18mm), body-size: 10pt, leading: 0.5em)
#changelog("cn")
