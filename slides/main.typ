#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Nerd Neck",
  subtitle: "An Embedded Project in Rust",
  authors: "Yasin Guenduez",
)

#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)
#show link: underline

== Outline

#outline()

= Problem and Solution

== Bad Posture when Programming

#align(center)[
  #figure(
    image("assets/nerd-neck.jpeg", width: 60%),
    caption: "Bad Posture"
  )
]

== Solution

```sh
open slides/assets/solution.mp4
```

== How Nerd Neck works: Hardware

#align(center)[
  #figure(
    image("assets/wiring.png", width: 80%),
    caption: "Wiring"
  )
]


== How Nerd Neck works: Software

#align(center)[
  #figure(
    image("assets/arch.png", width: 100%),
    caption: "Architecture"
  )
]


#link("https://github.com/yguenduez/nerd-neck")[project source: https://github.com/yguenduez/nerd-neck]

= Embedded Rust

== Embedded Ecosystem

#link("https://rust-basel.ch/embedded-workshop-4/overview-on-embedded-software.html")[Overview on Embedded Software]

= How to get started (usually)

== Install the toolchain

#grid(
  columns: (1fr, 1fr),
  column-gutter: 3em,
  [
    E.g. esp32c6

    ```sh
    rustup target add riscv32imc-unknown-none-elf
    ```
  ],
  [
    - #text(weight: "bold")[risc-v] instruction set
    - i: Base integer instruction set
    - m: Base integer instruction set with multiplication and division
    - c: Base integer instruction set with compressed instructions
    - #text(weight: "bold")[unknown]: vendor (e.g. apple, if you build against iOS)
    - #text(weight: "bold")[none]: No operating system
    - elf: elf-file
  ]
)

== Bootstrap a project with Rust Tooling

E.g. esp32c6

Install bootstrapping tool from espressif (esp-rs)

```sh
cargo install esp-generate
```

Then generate the project

```sh
esp-generate --chip esp32c6 --headless -o probe-rs -o defmt hello_world
```

Then build, flash and run it

```sh
cargo run --release
```

== Useful ressources

#link("https://rust-basel.ch/embedded-workshop-4/sources.html")[Useful ressources]

#link("https://github.com/yguenduez/nerd-neck-talk")[https://github.com/yguenduez/nerd-neck-talk]
