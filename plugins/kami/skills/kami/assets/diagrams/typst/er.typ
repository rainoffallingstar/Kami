#import "kami-diagram.typ": *

#diagram-page("{{Entity relationships}}", [
  #grid(
    columns: (1fr, 16mm, 1fr, 16mm, 1fr),
    column-gutter: 4pt,
    align: horizon,
    node("Customer", detail: "customer_id\nname\nemail", accent: true),
    flow_arrow(label-text: "PLACES 1:N"),
    node("Order", detail: "order_id\ncustomer_id\nstatus"),
    flow_arrow(label-text: "HAS 1:N"),
    node("Order item", detail: "item_id\norder_id\nproduct_id"),
  )
  #v(12pt)
  #grid(columns: (1fr, 1fr), gutter: 10pt, node("Product", detail: "product_id\nname\nprice"), node("Payment", detail: "payment_id\norder_id\namount"))
  #caption[Name entities as nouns, use keys explicitly, and label the relationship cardinality where it prevents an implementation mistake.]
], eyebrow-text: "ENTITY RELATIONSHIP", width: 260mm, height: 165mm)
