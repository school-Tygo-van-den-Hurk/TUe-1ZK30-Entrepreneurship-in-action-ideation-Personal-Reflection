#let transcript_bubble(time, transcript) = {
  let foreground = rgb("#c81919")
  let background = rgb("#ffb3b348")
  box(
    fill: background, stroke: foreground, inset: 8pt, radius: 6pt, width: 100%,
  )[
    #text(fill: foreground, weight: "bold")[#time] #transcript
  ]
}
