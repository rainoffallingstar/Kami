// Kami Typst document themes. Each public source file is a thin locale wrapper
// around one function here, while kami.typ owns the cross-theme primitives.

#import "kami.typ": *

#let pick(locale, cn, en, ko) = if locale == "cn" {
  cn
} else if locale == "ko" {
  ko
} else {
  en
}

#let text-for(locale, cn, en, ko) = text[
  #pick(locale, cn, en, ko)
]

#let standard-header(locale, eyebrow-text, title, subtitle, meta) = [
  #grid(
    columns: (1fr, auto),
    column-gutter: 20pt,
    align(bottom)[
      #eyebrow[#eyebrow-text]
      #v(7pt)
      #text(size: 25pt, weight: "medium")[#title]
      #v(5pt)
      #text(size: 10.5pt, fill: olive)[#subtitle]
    ],
    align(right + bottom)[#text(size: 9pt, fill: stone)[#meta]],
  )
  #v(11pt)
  #hairline()
  #v(11pt)
]

#let one-pager(locale) = [
  #standard-header(
    locale,
    pick(locale, "项目摘要", "PROJECT BRIEF", "프로젝트 브리프"),
    pick(locale, "{{文档标题}}", "{{DOC_TITLE}}", "{{문서 제목}}"),
    pick(locale, "{{一句明确的价值主张}}", "{{One precise value proposition.}}", "{{한 줄 가치 제안}}"),
    pick(locale, "{{日期}}\\ {{作者 / 团队}}", "{{DATE}}\\ {{AUTHOR / TEAM}}", "{{날짜}}\\ {{작성자 / 팀}}"),
  )
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 14pt,
    metric("{{NUMBER}}", pick(locale, "{{指标}}", "{{LABEL}}", "{{지표}}")),
    metric("{{NUMBER}}", pick(locale, "{{指标}}", "{{LABEL}}", "{{지표}}")),
    metric("{{NUMBER}}", pick(locale, "{{指标}}", "{{LABEL}}", "{{지표}}")),
    metric("{{NUMBER}}", pick(locale, "{{指标}}", "{{LABEL}}", "{{지표}}")),
  )
  #v(14pt)
  #text(size: 12pt, fill: dark-warm)[#pick(locale, "{{用 30 至 40 个字说明这页材料必须让读者记住的结论。其余信息都应成为这一结论的证据。}}", "{{Use 30-40 words to state the conclusion this page must make memorable. Every remaining element should serve as evidence.}}", "{{이 페이지가 반드시 전달해야 할 결론을 30-40자로 설명합니다. 나머지 정보는 모두 그 결론의 근거가 됩니다.}}")]
  #v(14pt)
  #grid(
    columns: (1fr, 1fr),
    gutter: 18pt,
    [#section-title(pick(locale, "{{第一部分}}", "{{Section one}}", "{{첫 번째 섹션}}")) #pick(locale, "{{用一到两句话展开论点。}}", "{{Expand the claim in one or two sentences.}}", "{{한두 문장으로 주장을 전개합니다.}}") #v(6pt) - #pick(locale, "{{短条目：事实、观察或判断。}}", "{{Short point: fact, observation, or judgement.}}", "{{짧은 항목: 사실, 관찰 또는 판단.}}") #linebreak() - #pick(locale, "{{短条目：每行一个要点。}}", "{{Short point: one idea per line.}}", "{{짧은 항목: 한 줄에 하나의 요점.}}")],
    [#section-title(pick(locale, "{{第二部分}}", "{{Section two}}", "{{두 번째 섹션}}")) #pick(locale, "{{用一到两句话展开论点。}}", "{{Expand the claim in one or two sentences.}}", "{{한두 문장으로 주장을 전개합니다.}}") #v(6pt) - #pick(locale, "{{短条目：事实、观察或判断。}}", "{{Short point: fact, observation, or judgement.}}", "{{짧은 항목: 사실, 관찰 또는 판단.}}") #linebreak() - #pick(locale, "{{短条目：每行一个要点。}}", "{{Short point: one idea per line.}}", "{{짧은 항목: 한 줄에 하나의 요점.}}")],
  )
  #section-title(pick(locale, "路线图", "Roadmap", "로드맵"), subtitle: pick(locale, "三步推进", "three-step arc", "세 단계 진행"))
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 14pt,
    [#text(size: 10pt, weight: "medium", fill: brand)[#pick(locale, "阶段一", "Phase 1", "1단계")] #linebreak() #text(weight: "medium")[{{STAGE TITLE}}] #linebreak() #text(size: 9pt, fill: olive)[#pick(locale, "{{一句说明。}}", "{{One-line explanation.}}", "{{한 줄 설명.}}")]],
    [#text(size: 10pt, weight: "medium", fill: brand)[#pick(locale, "阶段二", "Phase 2", "2단계")] #linebreak() #text(weight: "medium")[{{STAGE TITLE}}] #linebreak() #text(size: 9pt, fill: olive)[#pick(locale, "{{一句说明。}}", "{{One-line explanation.}}", "{{한 줄 설명.}}")]],
    [#text(size: 10pt, weight: "medium", fill: brand)[#pick(locale, "阶段三", "Phase 3", "3단계")] #linebreak() #text(weight: "medium")[{{STAGE TITLE}}] #linebreak() #text(size: 9pt, fill: olive)[#pick(locale, "{{一句说明。}}", "{{One-line explanation.}}", "{{한 줄 설명.}}")]],
  )
  #v(14pt)
  #callout[#pick(locale, "{{关键结论、重要提示，或读者不能错过的一句话。}}", "{{Key conclusion, critical note, or the one line a reader must not miss.}}", "{{핵심 결론, 중요한 메모 또는 독자가 놓치면 안 되는 한 문장.}}")]
]

#let letter(locale) = [
  #standard-header(
    locale,
    pick(locale, "正式信函", "FORMAL LETTER", "공식 서신"),
    pick(locale, "{{信件主题}}", "{{LETTER SUBJECT}}", "{{편지 제목}}"),
    pick(locale, "{{寄件人 · 职位 / 组织}}", "{{Sender · role / organization}}", "{{보낸 사람 · 직책 / 조직}}"),
    pick(locale, "{{日期}}", "{{DATE}}", "{{날짜}}"),
  )
  #v(10pt)
  #text(size: 10pt, fill: stone)[#pick(locale, "{{收件人姓名}}\\ {{职位 / 组织}}\\ {{地址}}", "{{RECIPIENT NAME}}\\ {{ROLE / ORGANIZATION}}\\ {{ADDRESS}}", "{{수신자 이름}}\\ {{직책 / 조직}}\\ {{주소}}")]
  #v(18pt)
  #text(weight: "medium")[#pick(locale, "{{称谓}}，", "{{GREETING}},", "{{인사말}},")]
  #v(10pt)
  #pick(locale, "{{第一段直接说明写信目的及核心请求，不作寒暄。}}", "{{Paragraph one states the purpose and request directly, without preamble.}}", "{{첫 문단은 인사말보다 목적과 요청을 먼저 명확히 설명합니다.}}")
  #v(9pt)
  #pick(locale, "{{第二段提供背景、依据与必要细节，并用一个可靠事实支撑判断。}}", "{{Paragraph two supplies the background, evidence, and necessary detail.}}", "{{둘째 문단은 배경, 근거와 필요한 세부 사항을 제공합니다.}}")
  #v(9pt)
  #pick(locale, "{{第三段说明希望对方采取的行动、时间和联系方式。}}", "{{Paragraph three names the action, timing, and contact path.}}", "{{셋째 문단은 요청 행동, 일정과 연락 방법을 명시합니다.}}")
  #v(18pt)
  #pick(locale, "{{结束语}}，", "{{CLOSING}},", "{{맺음말}},")
  #v(18pt)
  #text(size: 17pt, weight: "medium")[{{SIGNATURE}}]
  #v(4pt)
  #text(size: 9pt, fill: stone)[#pick(locale, "{{姓名 · 职位 · 组织}}", "{{NAME · TITLE · ORGANIZATION}}", "{{이름 · 직책 · 조직}}")]
  #v(12pt)
  #hairline()
  #v(6pt)
  #label[#pick(locale, "随附：{{附件列表}}", "ENCLOSURES: {{ATTACHMENT LIST}}", "첨부: {{첨부 목록}}")]
]

#let long-doc(locale) = [
  #align(center + horizon)[
    #v(46mm)
    #eyebrow[#pick(locale, "长文档", "LONG DOCUMENT", "장문 문서")]
    #v(14pt)
    #text(size: 36pt, weight: "medium")[#pick(locale, "{{文档标题}}", "{{DOCUMENT TITLE}}", "{{문서 제목}}")]
    #v(12pt)
    #text(size: 14pt, fill: olive)[#pick(locale, "{{副标题：明确问题、范围与视角。}}", "{{Subtitle: problem, scope, and point of view.}}", "{{부제: 문제, 범위와 관점.}}")]
    #v(62mm)
    #text(size: 9pt, fill: stone)[#pick(locale, "{{作者}} · {{日期}}", "{{AUTHOR}} · {{DATE}}", "{{작성자}} · {{날짜}}")]
  ]
  #pagebreak()
  #section-title(pick(locale, "目录", "Contents", "목차"))
  #grid(
    columns: (1fr, auto),
    row-gutter: 6pt,
    pick(locale, "01  执行摘要", "01  Executive summary", "01  요약"), "{{PAGE}}",
    pick(locale, "02  核心论点", "02  Core argument", "02  핵심 주장"), "{{PAGE}}",
    pick(locale, "03  证据与影响", "03  Evidence and implications", "03  근거와 영향"), "{{PAGE}}",
    pick(locale, "04  建议与下一步", "04  Recommendation and next steps", "04  제안과 다음 단계"), "{{PAGE}}",
  )
  #v(20pt)
  #callout[#pick(locale, "{{执行摘要：用一段话说明结论、关键证据和读者要采取的行动。}}", "{{Executive summary: conclusion, decisive evidence, and the reader's action in one paragraph.}}", "{{요약: 결론, 결정적 근거와 독자가 취할 행동을 한 문단으로 설명합니다.}}")]
  #pagebreak()
  #section-title(pick(locale, "核心论点", "Core argument", "핵심 주장"))
  #pick(locale, "{{第一章正文。以完整段落建立论证，并把事实、来源与推理分开写清楚。}}", "{{Chapter one body. Build the argument with complete paragraphs, separating facts, sources, and inference.}}", "{{첫 장 본문입니다. 사실, 출처와 추론을 구분하여 완전한 문단으로 논지를 전개합니다.}}")
  #v(10pt)
  #pick(locale, "{{第二段用可核查的证据补强主张，避免用形容词替代数据。}}", "{{A second paragraph strengthens the claim with verifiable evidence instead of adjectives.}}", "{{둘째 문단은 형용사가 아닌 검증 가능한 근거로 주장을 보강합니다.}}")
  #section-title(pick(locale, "证据与影响", "Evidence and implications", "근거와 영향"))
  #table(
    columns: (1fr, 1fr, 1fr),
    inset: 6pt,
    stroke: (paint: border-soft, thickness: 0.3pt),
    table.header([#text(weight: "medium")[#pick(locale, "证据", "Evidence", "근거")]], [#text(weight: "medium")[#pick(locale, "含义", "Meaning", "의미")]], [#text(weight: "medium")[#pick(locale, "影响", "Implication", "영향")]]),
    [{{FACT}}], [{{INTERPRETATION}}], [{{DECISION IMPACT}}],
    [{{FACT}}], [{{INTERPRETATION}}], [{{DECISION IMPACT}}],
  )
  #section-title(pick(locale, "建议与下一步", "Recommendation and next steps", "제안과 다음 단계"))
  #callout[#pick(locale, "{{建议应包含明确的负责人、动作、时间和可衡量的结果。}}", "{{The recommendation names an owner, action, timing, and measurable outcome.}}", "{{제안에는 담당자, 행동, 일정과 측정 가능한 결과가 포함되어야 합니다.}}")]
]

#let resume(locale) = [
  #grid(
    columns: (1fr, auto),
    align(bottom)[
      #text(size: 27pt, weight: "medium")[#pick(locale, "{{姓名}}", "{{NAME}}", "{{이름}}")]
      #v(4pt)
      #text(size: 11pt, fill: olive)[#pick(locale, "{{定位 / 专业方向}}", "{{ROLE / PROFESSIONAL FOCUS}}", "{{직무 / 전문 분야}}")]
    ],
    align(right + bottom)[#text(size: 9pt, fill: stone)[#pick(locale, "{{邮箱}}\\ {{电话}}\\ {{地点}}", "{{EMAIL}}\\ {{PHONE}}\\ {{LOCATION}}", "{{이메일}}\\ {{전화}}\\ {{위치}}")]],
  )
  #v(8pt)
  #hairline()
  #v(9pt)
  #grid(
    columns: (1fr, 1fr, 1fr, 1fr),
    gutter: 10pt,
    metric("{{NUMBER}}", pick(locale, "{{经验}}", "{{EXPERIENCE}}", "{{경력}}")),
    metric("{{NUMBER}}", pick(locale, "{{影响}}", "{{IMPACT}}", "{{성과}}")),
    metric("{{NUMBER}}", pick(locale, "{{团队}}", "{{TEAM}}", "{{팀}}")),
    metric("{{NUMBER}}", pick(locale, "{{项目}}", "{{PROJECTS}}", "{{프로젝트}}")),
  )
  #section-title(pick(locale, "个人摘要", "Summary", "요약"))
  #pick(locale, "{{用两至三句说明资历、专长和目标岗位，并以结果而非职责为中心。}}", "{{Use two to three sentences to state scope, expertise, and target role through results rather than responsibilities.}}", "{{두세 문장으로 책임이 아닌 성과 중심의 경력, 전문성 및 목표 역할을 설명합니다.}}")
  #section-title(pick(locale, "经历", "Experience", "경력"))
  #grid(columns: (1fr, auto), [#text(size: 11pt, weight: "medium")[{{ROLE · COMPANY}}] #linebreak() #text(size: 9pt, fill: brand)[{{SCOPE / TEAM}}]], align(right)[#text(size: 9pt, fill: stone)[{{DATE RANGE}}]])
  #v(4pt)
  - #pick(locale, "{{行动 + 范围 + 可量化结果 + 业务影响。}}", "{{Action + scope + measurable result + business outcome.}}", "{{행동 + 범위 + 측정 가능한 결과 + 비즈니스 영향.}}")
  #linebreak()
  - #pick(locale, "{{行动 + 范围 + 可量化结果 + 业务影响。}}", "{{Action + scope + measurable result + business outcome.}}", "{{행동 + 범위 + 측정 가능한 결과 + 비즈니스 영향.}}")
  #v(10pt)
  #grid(columns: (1fr, auto), [#text(size: 11pt, weight: "medium")[{{ROLE · COMPANY}}] #linebreak() #text(size: 9pt, fill: brand)[{{SCOPE / TEAM}}]], align(right)[#text(size: 9pt, fill: stone)[{{DATE RANGE}}]])
  #v(4pt)
  - #pick(locale, "{{行动 + 范围 + 可量化结果 + 业务影响。}}", "{{Action + scope + measurable result + business outcome.}}", "{{행동 + 범위 + 측정 가능한 결과 + 비즈니스 영향.}}")
  #section-title(pick(locale, "项目", "Selected projects", "주요 프로젝트"))
  #grid(columns: (1fr, 1fr), gutter: 14pt, [#text(weight: "medium")[{{PROJECT NAME}}] #linebreak() #pick(locale, "{{背景、策略与结果。}}", "{{Context, approach, and outcome.}}", "{{배경, 접근 방식과 결과.}}")], [#text(weight: "medium")[{{PROJECT NAME}}] #linebreak() #pick(locale, "{{背景、策略与结果。}}", "{{Context, approach, and outcome.}}", "{{배경, 접근 방식과 결과.}}")])
]

#let portfolio(locale) = [
  #align(center + horizon)[
    #v(42mm)
    #eyebrow[#pick(locale, "精选作品", "SELECTED WORK", "선별 작업")]
    #v(16pt)
    #text(size: 38pt, weight: "medium")[#pick(locale, "{{姓名}}\\作品集", "{{NAME}}\\Portfolio", "{{이름}}\\포트폴리오")]
    #v(12pt)
    #text(size: 14pt, fill: olive)[#pick(locale, "{{一句定位或作品主题。}}", "{{One-line positioning or portfolio theme.}}", "{{한 줄 포지셔닝 또는 포트폴리오 주제.}}")]
    #v(60mm)
    #text(size: 9pt, fill: stone)[#pick(locale, "{{专业方向 · 地点 · 联系方式}}", "{{DISCIPLINE · LOCATION · CONTACT}}", "{{전문 분야 · 위치 · 연락처}}")]
  ]
  #pagebreak()
  #section-title(pick(locale, "关于", "About", "소개"))
  #text(size: 15pt, fill: dark-warm)[#pick(locale, "{{一行有辨识度的定位。}}", "{{A distinctive one-line positioning statement.}}", "{{차별화되는 한 줄 포지셔닝.}}")]
  #v(10pt)
  #grid(columns: (1fr, 1fr), gutter: 18pt, [#text(weight: "medium")[#pick(locale, "背景", "Background", "배경")] #linebreak() #pick(locale, "{{一段经验与方法论。}}", "{{A paragraph about experience and method.}}", "{{경험과 방법론에 관한 한 문단.}}")], [#text(weight: "medium")[#pick(locale, "关注", "Focus", "Focus")] #linebreak() #pick(locale, "{{一段当前关注的问题。}}", "{{A paragraph about current focus.}}", "{{현재 관심 분야에 관한 한 문단.}}")])
  #pagebreak()
  #section-title(pick(locale, "项目 01", "Project 01", "프로젝트 01"))
  #text(size: 11pt, weight: "medium")[{{PROJECT NAME}}]
  #v(4pt)
  #text(size: 9pt, fill: brand)[{{PROJECT TYPE · DATE}}]
  #v(10pt)
  #rect(width: 100%, height: 72mm, fill: ivory, radius: 4pt, inset: 10pt)[#align(center + horizon)[#text(size: 10pt, fill: stone)[#pick(locale, "{{主视觉 / 产品截图}}", "{{HERO IMAGE / PRODUCT SCREENSHOT}}", "{{대표 이미지 / 제품 스크린샷}}")]]]
  #v(10pt)
  #grid(columns: (1fr, 1fr, 1fr), gutter: 12pt, [#text(weight: "medium")[#pick(locale, "背景", "Context", "배경")] #linebreak() {{CONTEXT}}], [#text(weight: "medium")[#pick(locale, "方法", "Approach", "접근")] #linebreak() {{APPROACH}}], [#text(weight: "medium")[#pick(locale, "结果", "Outcome", "결과")] #linebreak() {{OUTCOME}}])
  #v(12pt)
  #grid(columns: (1fr, 1fr, 1fr), gutter: 12pt, metric("{{NUMBER}}", pick(locale, "{{成果}}", "{{RESULT}}", "{{성과}}")), metric("{{NUMBER}}", pick(locale, "{{成果}}", "{{RESULT}}", "{{성과}}")), metric("{{NUMBER}}", pick(locale, "{{成果}}", "{{RESULT}}", "{{성과}}")))
]

#let slides(locale) = [
  // The cover's attribution belongs to the page, not to the vertical content
  // flow. Keeping it absolutely placed prevents a 16:9 deck from spilling the
  // speaker/date line onto a second page when the title or subtitle grows.
  #align(left)[
    #v(26mm)
    #eyebrow[#pick(locale, "演示文稿", "PRESENTATION", "프레젠테이션")]
    #v(12pt)
    #text(size: 34pt, weight: "medium")[#pick(locale, "{{演示标题}}", "{{PRESENTATION TITLE}}", "{{발표 제목}}")]
    #v(12pt)
    #text(size: 17pt, fill: olive)[#pick(locale, "{{一句清晰的论点或副标题。}}", "{{One clear assertion or subtitle.}}", "{{한 줄의 명확한 주장 또는 부제.}}")]
  ]
  #place(bottom + left, dy: -2mm)[
    #label[#pick(locale, "{{演讲者}} · {{日期}}", "{{SPEAKER}} · {{DATE}}", "{{발표자}} · {{날짜}}")]
  ]
  #pagebreak()
  #label[#pick(locale, "01 · 论点", "01 · ASSERTION", "01 · 주장")]
  #v(5pt)
  #text(size: 25pt, weight: "medium")[#pick(locale, "{{这一页标题本身就是完整结论。}}", "{{The slide title is a complete conclusion.}}", "{{슬라이드 제목 자체가 완전한 결론입니다.}}")]
  #v(14pt)
  #grid(columns: (1fr, 1fr), gutter: 22pt, [#text(size: 15pt, weight: "medium", fill: brand)[{{01}}] #linebreak() #pick(locale, "{{证据、事实或用户观察。}}", "{{Evidence, fact, or user observation.}}", "{{근거, 사실 또는 사용자 관찰.}}")], [#text(size: 15pt, weight: "medium", fill: brand)[{{02}}] #linebreak() #pick(locale, "{{证据、事实或用户观察。}}", "{{Evidence, fact, or user observation.}}", "{{근거, 사실 또는 사용자 관찰.}}")])
  #v(18pt)
  #callout[#pick(locale, "{{这一页应留给观众的关键推论。}}", "{{The inference this slide should leave with the audience.}}", "{{이 슬라이드가 청중에게 남겨야 할 핵심 추론.}}")]
  #pagebreak()
  #label[#pick(locale, "02 · 证据", "02 · EVIDENCE", "02 · 근거")]
  #v(5pt)
  #text(size: 25pt, weight: "medium")[#pick(locale, "{{一张图或一张表应该说明一件事。}}", "{{One chart or table should establish one thing.}}", "{{하나의 차트 또는 표는 하나의 사실을 보여야 합니다.}}")]
  #v(14pt)
  #rect(width: 100%, height: 66mm, fill: ivory, radius: 4pt, inset: 12pt)[#align(center + horizon)[#text(fill: stone)[#pick(locale, "{{图表 / 截图 / 代码证据}}", "{{CHART / SCREENSHOT / CODE EVIDENCE}}", "{{차트 / 스크린샷 / 코드 근거}}")]]]
]

#let equity-report(locale) = [
  #standard-header(
    locale,
    pick(locale, "权益研究", "EQUITY RESEARCH", "주식 리서치"),
    pick(locale, "{{公司名称}}", "{{COMPANY NAME}}", "{{회사명}}"),
    pick(locale, "{{评级 · 核心观点}}", "{{RATING · CORE THESIS}}", "{{등급 · 핵심 투자 논지}}"),
    pick(locale, "{{报告日期}}\\ {{分析师}}", "{{REPORT DATE}}\\ {{ANALYST}}", "{{보고일}}\\ {{애널리스트}}"),
  )
  #grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 12pt, metric("{{PRICE}}", pick(locale, "{{现价}}", "{{CURRENT}}", "{{현재가}}")), metric("{{TARGET}}", pick(locale, "{{目标价}}", "{{TARGET}}", "{{목표가}}")), metric("{{UPSIDE}}", pick(locale, "{{空间}}", "{{UPSIDE}}", "{{상승 여력}}")), metric("{{MULTIPLE}}", pick(locale, "{{估值}}", "{{MULTIPLE}}", "{{밸류에이션}}")))
  #section-title(pick(locale, "投资观点", "Investment thesis", "투자 논지"))
  #callout[#pick(locale, "{{用一段话写清市场忽略了什么、为什么现在重要，以及估值如何反映这一差异。}}", "{{State what the market misses, why it matters now, and how valuation reflects the difference.}}", "{{시장이 놓친 점, 지금 중요한 이유와 밸류에이션에 반영되는 차이를 한 문단으로 설명합니다.}}")]
  #section-title(pick(locale, "关键催化剂", "Catalysts", "촉매"))
  #grid(columns: (1fr, 1fr), gutter: 16pt, [#text(weight: "medium", fill: brand)[{{CATALYST 1}}] #linebreak() {{Evidence and timing.}}], [#text(weight: "medium", fill: brand)[{{CATALYST 2}}] #linebreak() {{Evidence and timing.}}])
  #section-title(pick(locale, "财务与估值", "Financials and valuation", "재무와 밸류에이션"))
  #table(columns: (1fr, 1fr, 1fr, 1fr), inset: 5pt, stroke: (paint: border-soft, thickness: 0.3pt), table.header([Metric], [FY24], [FY25E], [FY26E]), [{{REVENUE}}], [{{VALUE}}], [{{VALUE}}], [{{VALUE}}], [{{EPS}}], [{{VALUE}}], [{{VALUE}}], [{{VALUE}}])
  #section-title(pick(locale, "风险", "Risks", "위험"))
  - #pick(locale, "{{风险因素、触发信号与需要跟踪的指标。}}", "{{Risk factor, trigger signal, and metric to monitor.}}", "{{위험 요인, 촉발 신호와 추적할 지표.}}")
  #linebreak()
  - #pick(locale, "{{风险因素、触发信号与需要跟踪的指标。}}", "{{Risk factor, trigger signal, and metric to monitor.}}", "{{위험 요인, 촉발 신호와 추적할 지표.}}")
]

#let changelog(locale) = [
  #standard-header(
    locale,
    pick(locale, "更新日志", "CHANGELOG", "변경 이력"),
    pick(locale, "{{项目名称}}", "{{PROJECT NAME}}", "{{프로젝트 이름}}"),
    pick(locale, "{{版本与发布时间}}", "{{Version and release date}}", "{{버전 및 배포일}}"),
    pick(locale, "{{URL}}", "{{URL}}", "{{URL}}"),
  )
  #section-title("{{VERSION}}", subtitle: "{{RELEASE DATE}}")
  #text(size: 10pt, fill: olive)[#pick(locale, "{{这一版本最重要的变化及其对用户的意义。}}", "{{The most important change in this release and what it means for users.}}", "{{이번 버전의 가장 중요한 변경 사항과 사용자에게 주는 의미.}}")]
  #section-title(pick(locale, "新增", "Added", "추가"))
  #grid(columns: (auto, 1fr), column-gutter: 8pt, [#text(fill: brand, weight: "medium")[01]], [#text(weight: "medium")[{{FEATURE}}] #linebreak() {{What changed and why it matters.}}], [#text(fill: brand, weight: "medium")[02]], [#text(weight: "medium")[{{FEATURE}}] #linebreak() {{What changed and why it matters.}}])
  #section-title(pick(locale, "修复", "Fixed", "수정"))
  #grid(columns: (auto, 1fr), column-gutter: 8pt, [#text(fill: brand, weight: "medium")[01]], [#text(weight: "medium")[{{FIX}}] #linebreak() {{The observed problem and user-facing result.}}], [#text(fill: brand, weight: "medium")[02]], [#text(weight: "medium")[{{FIX}}] #linebreak() {{The observed problem and user-facing result.}}])
  #v(16pt)
  #hairline()
  #v(6pt)
  #label[#pick(locale, "{{致谢 / 兼容性说明 / 升级路径}}", "{{ACKNOWLEDGEMENTS / COMPATIBILITY / UPGRADE PATH}}", "{{감사의 말 / 호환성 / 업그레이드 경로}}")]
]
