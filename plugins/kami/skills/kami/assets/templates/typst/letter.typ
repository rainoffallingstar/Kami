#import "kami.typ": kami-document
#import "themes.typ": letter
#set document(title: "{{信件主题}}", author: "{{作者}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 20mm, right: 22mm, bottom: 20mm, left: 22mm), body-size: 10.5pt, leading: 0.55em)
#letter("cn")
