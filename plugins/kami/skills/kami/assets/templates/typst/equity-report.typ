#import "kami.typ": kami-document
#import "themes.typ": equity-report
#set document(title: "{{公司名称}} · 个股研究", author: "{{作者}}")
#show: body => kami-document(body, locale: "cn", margin: (top: 16mm, right: 18mm, bottom: 18mm, left: 18mm), body-size: 10pt, leading: 0.5em)
#equity-report("cn")
