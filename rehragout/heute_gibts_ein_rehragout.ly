\version "2.24.0"
\language "deutsch"

% =============================================================
%  "Heute gibt's ein Rehragout" – Polka für Jungmusiker
%  2 Tenorhörner in B (Violinschlüssel, klingt große None tiefer), F-Tuba
%  Noten hier in KLINGENDER Tonhöhe (B-Dur); Tenorhörner werden automatisch
%  transponiert (notiert C-Dur).
%
%  Intro  (T. 1–4)    Jagdsignal, Tuba kommt mit zwei Schlägen dazu
%  A      (T. 5–12)   Polka-Thema mit Text, Wiederholung (1. mp, 2. f)
%  B      (T. 13–28)  Es-Dur: Tuba-Solo "Der Koch rührt um", dann Tenorhorn-Duett
%  Echo   (T. 29–36)  Schnupper-Echo: Thn 1 → Thn 2 → Tuba, dann alle
%  A'     (T. 37–44)  Thema tutti in Terzen, forte
%  Coda   (T. 45–51)  "Gu-ten Ap-pe-tit!" – alle rufen "Mahlzeit!"
% =============================================================

\header {
  title = "Heute gibt's ein Rehragout"
  subtitle = "Polka für 2 Tenorhörner und F-Tuba"
  composer = "Arr.: Claude"
  tagline = ##f
}

\paper { indent = 28\mm short-indent = 10\mm }

global = { \key b \major \time 2/4 }

marks = {
  \tempo "Jagdsignal" 4 = 96
  s2*4
  \tempo "Polka" 4 = 104
  \mark \markup \box "A" s2*8
  \key es \major
  \mark \markup \box "B" s2*16
  \key b \major
  \mark \markup \box "Echo" s2*8
  \mark \markup \box "A'" s2*8
  \mark \markup \box "Coda" s2*2
  \tempo "allargando" s2*3
  s2 s2
  \bar "|."
}

% ---------------- Tenorhorn 1 ----------------
thnI = {
  % Intro
  f8\f b d' b | c'8 a f4 | f8 b d' b | c'4-> a-> |
  % A
  \repeat volta 2 {
    f8^\markup \italic "1. mp – 2. f" g a b | c'8 a f4 | d'8 b f4 | c'8 a f4 |
    f8 g a b | b8 g es4 | f8 a c' a | d'8-. b-> r4 |
  }
  % B – Tuba-Solo, Nachschlag
  r8 g-.\p r g-. | r g-. r g-. | r as-. r as-. | r as-. r as-. |
  r8 as-. r as-. | r as-. r as-. | r g-. r g-. | r g-. r4 |
  % B – Duett
  g4\mf( b) | as4( f) | as8 g f as | g4 es |
  g4( b) | c'4( as) | g8 f es d | es4 r |
  % Echo
  f8\mf^\markup \italic "schnuppern …" a c' a | f4 r | R2*2 | R2*2 |
  a8\< a a a | c'4->\f r |
  % A'
  f8\f g a b | c'8 a f4 | d'8 b f4 | c'8 a f4 |
  f8 g a b | b8 g es4 | f8 a c' a | d'8-. b-> r4 |
  % Coda
  c'8\mf a f4 | d'8\< b f4 |
  f4\f g | a4 c' | b2\fermata |
  R2^\markup \bold "alle rufen: „Mahlzeit!“" | d'8->\ff r r4 |
}
textI = \lyricmode {
  \repeat unfold 13 { \skip 1 }
  Heu -- te gibt's ein Reh -- ra -- gout, Reh -- ra -- gout, Reh -- ra -- gout,
  heu -- te gibt's ein Reh -- ra -- gout, mit Knö -- del -- chen da -- zu!
}

% ---------------- Tenorhorn 2 ----------------
thnII = {
  d8\f d f d | a8 f c4 | d8 d f d | a4-> es-> |
  \repeat volta 2 {
    r8 d-.^\markup \italic "1. mp – 2. f" r d-. | r c-. r c-. | r d-. r d-. | r c-. r c-. |
    r8 d-. r d-. | r es-. r es-. | r es-. r es-. | f8-. d-> r4 |
  }
  r8 es-.\p r es-. | r es-. r es-. | r d-. r d-. | r d-. r d-. |
  r8 d-. r d-. | r d-. r d-. | r es-. r es-. | r es-. r4 |
  es4\mf( g) | f4( d) | f8 es d f | es4 b, |
  es4( g) | as4( es) | es8 d c b, | b,4 r |
  R2*2 | f8\mf^\markup \italic "Echo!" a c' a | f4 r | R2*2 |
  f8\< f f f | es4->\f r |
  d8\f es f g | a8 f c4 | b8 f d4 | a8 f c4 |
  d8 es f g | g8 es b,4 | c8 f a f | f8-. d-> r4 |
  a8\mf f c4 | b8\< f d4 |
  d4\f es | f4 es | d2\fermata |
  R2 | f8->\ff r r4 |
}

% ---------------- F-Tuba ----------------
tuba = {
  R2*3 | f,4->\f f,,-> |
  \repeat volta 2 {
    b,,4^\markup \italic "1. mp – 2. f" f, | f,4 c, | b,,4 f, | f,4 c, |
    b,,4 f, | es,4 b,, | f,4 c, | b,,8-. b,,-> r4 |
  }
  es,8\mf^\markup \bold "Solo – der Koch rührt um!" g, b,4 | c8 b, g,4 | as,8 f, d,4 | f,8 as, b,4 |
  as,8 f, d, f, | b,,4 r8 b,, | es,8\< f, g, as, | b,4\f es, |
  es,4\mp b,, | f,4 b,, | f,4 b,, | es,4 b,, |
  es,4 b,, | as,4 es, | b,,4 f, | es,4 r |
  R2*4 | f,8\mf^\markup \italic "Echo!" a, c a, | f,4 r |
  f,8\< f, f, f, | f,4->\f r |
  b,,4-> f, | f,4-> c, | b,,4-> f, | f,4-> c, |
  b,,4-> f, | es,4-> b,, | f,4-> c, | b,,8-. b,,-> r4 |
  f,4\mf c, | b,,4\< f, |
  b,,4\f es, | f,4 f, | b,,2\fermata |
  R2 | b,,8->\ff r r4 |
}

% ---------------- Staves ----------------
thnIStaff = \new Staff \with {
  instrumentName = "Tenorhorn 1 in B" shortInstrumentName = "Thn. 1" midiInstrument = "french horn"
} { \new Voice = "thn1" { \transposition b, \transpose b, c' << \global \marks \thnI >> } }
thnIIStaff = \new Staff \with {
  instrumentName = "Tenorhorn 2 in B" shortInstrumentName = "Thn. 2" midiInstrument = "french horn"
} { \transposition b, \transpose b, c' << \global \marks \thnII >> }
tubaStaff = \new Staff \with {
  instrumentName = "Tuba in F" shortInstrumentName = "Tb." midiInstrument = "tuba"
} { \clef bass << \global \marks \tuba >> }

\book {
  \bookOutputName "Rehragout_Partitur"
  \score {
    \new StaffGroup <<
      \thnIStaff
      \new Lyrics \lyricsto "thn1" \textI
      \thnIIStaff
      \tubaStaff
    >>
    \layout { }
  }
  \score {
    \unfoldRepeats << \thnIStaff \thnIIStaff \tubaStaff >>
    \midi { }
  }
}

\book {
  \bookOutputName "Rehragout_Stimmen"
  \score { << \thnIStaff \new Lyrics \lyricsto "thn1" \textI >> \header { piece = "Tenorhorn 1 in B" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \thnIIStaff \header { piece = "Tenorhorn 2 in B" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \tubaStaff \header { piece = "Tuba in F" } \layout { \compressEmptyMeasures } }
}
