#set document(
  title: "Entrepreneurship in Action: ideation", author: "Tygo van den Hurk", description: "This the final assignment for 1ZK30 Entrepreneurship in action: ideation.",
)

#set text(font: "TeX Gyre Termes", size: 10pt, spacing: .35em)

// Tables & figures
#show figure: set block(spacing: 15.5pt)
#show figure: set place(clearance: 15.5pt)
#show figure.where(kind: table): set figure.caption(position: top)
#show figure.where(kind: table): set text(size: 8pt)
#show figure.where(kind: table): set figure(numbering: "I")
#show figure.where(kind: image): set figure(numbering: "1")
#show figure.caption: set text(size: 8pt)
#show figure.caption: set align(start)
#show figure.caption.where(kind: table): set align(center)

#show raw: set text(font: "TeX Gyre Cursor", ligatures: false, size: 1em / 0.8)

// Configure the page and multi-column properties.
#set columns(gutter: 12pt)
#set page(
  columns: 2, paper: "a4", margin: (x: 41.5pt, top: 80.51pt, bottom: 89.51pt),
)

// Configure lists.
#set enum(indent: 10pt, body-indent: 9pt)
#set list(indent: 10pt, body-indent: 9pt)

// Style bibliography.
#show std.bibliography: set text(8pt)
#show std.bibliography: set block(spacing: 0.5em)
#set std.bibliography(title: text(10pt)[References], style: "ieee")

// Configure paragraph properties.
#set par(
  spacing: 0.45em, justify: true, first-line-indent: 1em, leading: 0.45em,
)

#set page(columns: 2)
#set page(numbering: "1 / 1")
#counter(page).update(1)

#place(
  top + center, float: true, scope: "parent", clearance: 30pt, {
    text(size: 24pt, align(center, "Entrepreneurship in Action: ideation"))
    linebreak()
    strong[Tygo van den Hurk]
    linebreak()
    underline[
      #link(
        "mailto:t.j.f.h.v.d.hurk@student.tue.nl",
      )[t.j.f.h.v.d.hurk\@student.tue.nl]
    ]
    linebreak()
    emph[Computer Science and Engineering]
    linebreak()
    emph[Technical University Eindhoven]
    linebreak()
    link(
      "https://orcid.org/0009-0003-4182-5076", block(inset: 0pt, outset: 0pt)[
        #box(image("images/orcid.svg")) 0009-0003-4182-5076
      ],
    )
  },
)

#set heading(numbering: "1.1.1")

= Challenge Reflection

// This part is mostly about ideas and opportunities. You can use about 500 words,
// and visuals are allowed.
// - Select one **opportunity** your team explored during the Smart City challenge.
// - In your own words, explain:
//   - What unmet need or problem was identified?
//   - Why you personally found it meaningful or relevant?
//   - Which ideation tools you used and how they shape the opportunity?
// - **Connection to practice**: Refer to **at least three** insights from three
//   different guest lectures or podcasts that inspired how to further develop your
//   competences in Ideation and Opportunity Discovery. Explain how this could
//   strengthen or change the approach used by your team in the challenge

*Select one opportunity your team explored during the Smart City challenge.*

== Unmet Needs

*What unmet need or problem was identified?*

Elzent-Noord has really bad street lighting. We noticed this already well before
the interviews when we did our first "scouts" as we called them. We'd go out in
the neighborhood and see if there were things we could ask about in our
interviews.

We notice apart from a couple trash bins being filled to the brim that the
(street) lighting in the neighborhood was overall subpar. There were one or two
streets that were alright (mostly the main street).

#box(inset: (x: 10pt, y: 5pt))[
  #figure(image("images/trash-piling-up.jpeg"), caption: [
    A trash piling up a collection post
  ]) <trash-piling-up>
]

So just like Airbnb's founders, we decided to focused on a problem we personally
observed@podcast-1. We came up with the idea we as a group for smart street
lighting. Street lighting that automatically dims when no one is nearby to not
disturb wildlife and people sleeping, and save on energy. While using it's
sensors to detect when someone is driving and then increase the brightness of
that lantern and depending on the street light up $x$ more lanterns ahead of the
driver to make sure they've got ample vision ahead.

== Personally Connection

*Why did you personally find it meaningful or relevant?*

Every year hundreds of people die in traffic accidents in the Netherlands. Last
year (2024 as of writing) this was a total of 675 according to the CBS@CBS2024.
According to the American Automobile Association (AAA) that fatal injuries to
pedestrians increase drastically when a street is poorly lit@AAA2025. Which is
obvious, but unfortunate considering how cheap and easy the solution is.

About 2 years ago now a friend of mine was almost hit by a bus while we were
biking back from a camping trip. That is why I chose this idea out of all the
opportunities we found. I was able to break in time but he wasn't. It's
seriously a miracle he didn't die that day.

All we'd have to do for Elzent-Noord to fix the problem fix the street lighting.
Everyone who has a drivers licence here knows that bikes (which usually have bad
lighting) can come out of no where. So if we made them more clearly visible we
could save real lives, or at least prevent injuries.

The second reason I chose this opportunity is because I think it's actually real
cool, and pretty easy to realize. More about that during the breakdown see
@resource-breakdown[section].

== Ideation Tools

*Which ideation tools you used and how they shape the opportunity?*

To explore the street lighting issue in Elzent-Noord, we used the tools
introduced in the tutorials, and assignments.

- Personas: This one we started using thanks to the tutorials we went to. Since we
  already made personas for the first assignment, it was trivial to apply them.
  Afterwards once we were working out this opportunity.

- Brainstorming: We held a couple meetings outside of class, or on Mondays before
  the guest lectures because we knew everyone would be free. We used these to plan
  and decide the work mostly, but we also build on top of the tutorials again by
  brainstorming what ideas we could use to solve this problem for the residences.
  We did the post-it exercise where we made as many ideas as we could in 5
  minutes.

- Mindmapping:

= Resource Reflection

// This part is mostly about resources. You can use about 400 words, and a table
// or a matrix allowed.
// - Analyze the **resources** needed to move this opportunity forward:
//   - Human capital (skills/expertise).
//   - Social capital (partners, networks, stakeholders).
//   - Physical/financial resources (prototyping, funding, tech).
// - Compare these to the resources your team currently has.
// - Where do you personally see yourself contributing most strongly?
// - **Connection to practice**: Reflect on how one entrepreneur/guest described
//   mobilizing resources (e.g. leveraging networks, bootstrapping, partnerships).
//   How does this relate to your own analysis?

== Required Resources <resource-breakdown>

*Analyze the human capital, social capital, and physical/financial resources
needed to move this opportunity forward.*

Like Brian at Coinbase or Stripe founders, I can make a minimal viable prototype
that addresses the main pain points before scaling@podcast-1. To create the
smart street lighting we wouldn't even need that much. When looking at Human
capital (skills/expertise), I think I could do that all myself. I code a lot in
my spare time, and have done several electrical engineering packages. It'd take
only a single engineer to prototype the product. After which macro or mass
production wouldn't be so hard. All components are already mass producible and
optimized.

To prove my point I made a simple Arduino sketch that would roughly do the
trick, see @Arduino-sketch[section] in the appendix for more. It is abstract as
the real hardware would have to be picked and finalized, and the logic depends
on it. But it shouldn't require that much extra.

Convincing the government to buy them shouldn't be to hard. The lights being dim
most of the time saves money and with the costs of electricity these last few
years these things earn themselves back. The components aren't expensive, more
about that later. So even if the savings are small, the time till return won't
take too long.

The prototype won't even cost that much to make after it is designed. Lidar,
heat sensors, and ultra sonic sensors are all very cheap and way more then
accurate enough (up to 1cm). So are the micro-controllers to control them. And
all they'd have to do is limit the power to the existing light bulbs. Meaning we
do not need to replace the old ones, saving us even more money.

#figure(
  table(
    columns: (1fr, auto, auto), [Name], [Type], [Price], link(
      "https://www.tinytronics.nl/en/sensors/distance/pono-tsd20-tof-lidar-sensor-module-20m",
    )[PONO TSD20], [Lidar Sensor (20m)], [18.52], link(
      "https://www.tinytronics.nl/en/development-boards/microcontroller-boards/with-wi-fi/dfrobot-firebeetle-esp32-iot-microcontroller-wi-fi-and-bluetooth-seperate-headers",
    )[ESP32 IoT Microcontroller], [Micro-Controller], [12.50], link(
      "https://www.tinytronics.nl/en/sensors/motion/ir-pyroelectric-infrared-pir-motion-sensing-detector-module",
    )[IR Pyroelectric Infrared PIR], [Motion Sensor], [03.50], link(
      "https://www.tinytronics.nl/en/power/voltage-converters/buck-(step-down)-converters/dc-dc-adjustable-step-down-buck-converter-xl4015-5a-with-current-limiter",
    )[XL4015 (5A)], [Buck converter], [04.50],
  ), caption: [The price breakdown of such a product per instance],
)

= Action Reflection

// This part is mostly about intro action. You can use about 400 words, and a
// table or a matrix allowed.
// - Reflect on your **actions and behaviors** during the course:
//   - How did you deal with **uncertainty** in the ideation process?
//   - Which choices or behaviors had the most impact on your team’s progress?
//   - How did you communicate/pitch your ideas to others, and what feedback
//     did you receive?
// - Compare your own experience with how one entrepreneur from the podcasts
//   or lectures described acting under uncertainty, making decisions, or
//   pitching. Refer to at least two specific insights collected from two
//   different guest lectures and/or podcasts.

== Choices and their impact

*Which choices or behaviors had the most impact on your team’s progress?*

I'll just say it straight up. We fell for a tar pit idea@podcast-2. We chose
Elzent-Noord because was an old neighborhood, close to stratum, so we expected a
lot of problems, but we chose the wrong neighborhood. Elzent-Noord is the 2nd
richest neighborhood in the city, and as a result it had very few problems. This
made the whole process more complicated then that it needed to be. More then one
of the interviewed residents said something along the lines of:

#quote[
  If I were you I'd find a new neighborhood, one with more problems. This is a
  rich neighborhood. All we have are luxury problems.
]

This made us struggle to find problems in the neighborhood, and made us lag
behind in the first weeks. I remember being at the second or third tutorial and
we had not done most of the things that they expected of us. This was quite
stressful. Luckily we ended up doing quite well regardless. Getting a 9.4 for
the first assignment and a 7.4 for the second assignment. So it was good to see
our work paid off.

== Dealing with Uncertainty

*How did you deal with uncertainty in the ideation process?*

Honestly, a lot of the credit goes to our team "captain", Lucas Duys. He was a
really nice coordinator for me at least. He kept us in line and created
structure. He knew when deadlines approached, he'd text beforehand and
coordinate us as a team on who should do what. Because of this, I had faith
every time we'd produce at least something decent at the end. I think this was a
case where having the recruiting person with the right skills was crucial for
the project@podcast-3.

== Feedback on Pitches/Communication

*How did you communicate/pitch your ideas to others, and what feedback did you
receive?*

We mostly communicated in person. That helped a lot with the whole process. We
had meetings in and out of the tutorials so when one of us had an idea we'd just
listen and then give feedback afterwards. We could build on top of other peoples
ideas and we'd just iterate over anything we got.

Some of the feedback I received was that I talk to fast and all over the place.
I tend to talk fast, and improvise things as I go. This is where that feedback
comes from. These were low stakes presentations, and the whole thing wasn't too
bad if it was a little fast. However I should definitely keep in mind for high
stakes that I need to breath and work the idea out completely before I present,
instead of inventing it as I go.

= Personal Development Plan

// This part is about your self reflection. You can use about 400 words, and
// use a bullet-point format.
// - Based on the 7 course learning objectives, **identify two entrepreneurial
//   competences** you want to strengthen further. Chose one of:
//    1. Identify opportunities to address unmet needs in a societal challenge.
//    2. Test and refine ideas that create value for others.
//    3. Explain the impact of their choices and behaviors, both within the
//       community and the environment.
//    4. Distinguish different value creation, value delivery and value capture
//       strategies and the required resources for implementing those strategies.
//    5. Communicate their ideas to others clearly and persuasively by using
//       different methods.
//    6. Recognize the role of uncertainty and the different strategies used by
//       entrepreneurs to cope with uncertainty.
//    7. Reflect on their individual knowledge, skills, attitudes, values, and
//       interests in order to select personal learning objectives regarding
//       entrepreneurial competencies.
// - Explain why you chose them, and design **a SMART learning goal** for each.
// - Suggest at least one concrete activity you will do after this course to
//   develop each competence (e.g., join a startup team, take a design thinking
//   MOOC, volunteer in a student board).
// - **Connection to practice**: Which entrepreneur (guest or podcast) do you
//   see as a role model for these competences? Why?

== Test and refine ideas that create value for others

I often have creative or technical ideas but struggle to validate whether they
truly solve the problem. I can make things for myself and those usually do what
I need them to do. I try to anticipate what some one using my software would
want that I don't necessarily need, but this remains a difficult task for me.

An example of this is that I am currently trying to make a program that makes
presentations. All software out there does not provide the animation quality
that good presentations require. But there is no way for me to know if users of
this program are gonna wanna have the same type of animations, the same building
blocks, or options etc.

I want to move beyond just building things for myself, for fun. And start
creating things that people actually want and use. Being able to test and refine
ideas systematically will make me more effective in both a startup and a
professional setting.

=== SMART Goal

- *Specific*: Learn and apply structured validation methods (like user interviews,
  prototyping, and feedback loops).
- *Measurable*: Conduct at least three user feedback sessions on a single project
  idea and make two major improvements based on feedback.
- *Achievable*: I will use my existing programming and design skills to create a
  prototype of the presentation building software and test it with real users.
- *Relevant*: This supports my goal to become a more user-centered software
  developer and possibly an entrepreneur.
- *Time-bound*: Complete this process within three months after finishing the
  course.

=== Concrete Activity

I will continue to work on #link("https://github.com/Tygo-van-den-hurk/quick-flash")[quick-flash] as
usual, and once I've reached a working state I will go out there and test it
with real people. I will use their feedback to improve the new prototype.

== Distinguish different value creation, value delivery and value capture strategies and the required resources for implementing those strategies.

I usually understand the technical side of building products but often overlook
how a project or product actually creates, delivers, and captures value. I want
to learn how ideas turn into sustainable business models that I can rely on long
term, and how different strategies fit different markets.

I want later in life, if I do end up starting a start up, that I can make it
work, and keep the boat afloat as you will. I obviously, want it to succeed.

=== SMART Goal

- *Specific*: Learn to identify and compare at least three types of value
  creation, delivery, and capture strategies, and apply this knowledge to analyze
  or design a real or hypothetical tech product.
- *Measurable*: Create one complete business model canvas for a product idea,
  clearly showing how it creates, delivers, and captures value.
- *Achievable*: I will use available tools like the Business Model Canvas and
  study real startup examples for reference.
- *Relevant*: This helps me connect my technical skills with entrepreneurial
  thinking, which is crucial for career growth or starting a venture.
- *Time-bound*: Complete this goal within four months after the course ends.

=== Concrete Activity

I could try and build something and then see if people would buy the product.
Starting by picking something that already has a establish market, that is not
changing a lot, as that is where I could potentially shake things up. Then see
if I can add value in one way or another to an existing product i that market.

= AI disclosure

As per the course' instructions I'll now be explaining how I used AI, where, and
why it is ethical.

== Feedback loop

Since the rubric was made available in the assignment description, I can use AI
to grade me. What I'd do is write this assignment, and then give the resulting
PDF to the AI. I'd then prompt it to read the rubric and be a hoarse grader. I'd
ask it what sections, and points are lacking. Then once the AI was no longer
making any more good points I knew I was ready to hand it in. I think this is
ethical because you could accomplice the same by asking a friend to read it, or
by emailing you to give me feedback. You'd get the same result this way, except,
this does not require me to email you every time I've fixed all the criticisms
you had with my report to see if you have any other criticisms. You can see an
example of that exact workflow in @example-feedback-prompt[section].

== Grammar and flow

Since I am dyslectic I have to use all the tools at my disposal to make sure I
am not screwing up my written language. I am also a little scatterbrained, so I
sometimes write more then one section at the same time, going back and forth
between them. This keeps my attention, but may result in half complete sentences
somewhere in the middle, or incorrect flow. That is why I'd feed it the source
of my assignment and tell it to find all grammar/spelling issues. I'd then
instruct it to notify me of any sentences who don't flow naturally, and then I'd
rewrite that part to correct them.

= References

I've added the podcasts you guys recommended as substitutes for the guest
lectures as references through the report. This way you can see I've listened to
them.

#bibliography("references.bib", title: "")

#pagebreak()
#set page(numbering: none)
#set page(columns: 1)

= Appendix
#include "appendix/light-blubs.typ"
#include "appendix/arduino-sketch.typ"
#include "appendix/example-feedback.typ"
#include "appendix/podcast-1.typ"
#include "appendix/podcast-2.typ"
#include "appendix/podcast-3.typ"
