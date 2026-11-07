\version "2.24.0"
\language "deutsch"

% =============================================================
%  "Donnerwetter" – Hardrock für Bläser (Originalkomposition)
%  2 Trompeten in B, Klarinette in B, Horn in F, Tenorhorn in B, Tuba,
%  Schlagwerk ad lib.  –  klingend d-Moll, Refrain F-Dur, ♩ = 132
%  Noten klingend notiert; Transposition automatisch.
% =============================================================

#(set-global-staff-size 17)
\header {
  title = "Donnerwetter"
  subtitle = "Hardrock für Bläser"
  composer = "Musik: Claude"
  tagline = ##f
}
\paper { indent = 28\mm short-indent = 12\mm }
global = { \key d \minor \time 4/4 }

marks = {
  \tempo "Rock" 4 = 132
  \mark \markup \box "Intro" s1*5
  \mark \markup \box "Riff" s1*4
  \mark \markup \box "A" s1*8
  s1*2
  \mark \markup \box "B" s1*8
  \mark \markup \box "Solo" s1*8
  \mark \markup \box "Break" s1*4
  \mark \markup \box "A'" s1*8
  \mark \markup \box "B'" s1*8
  \mark \markup \box "Schluss" s1*4
  \bar "|."
}

% ---------- Bausteine (klingend) ----------
riff = { d,8-> d, f, d, g,4-> f,8 d, | c,8-> c, d,4-> r8 a,,8 c, d, | }
stabI   = { r2 r8 a'8-^ r4 | r4 r8 g'8-^ a'4-^ r4 | }
stabII  = { r2 r8 d'8-^ r4 | r4 r8 c'8-^ d'4-^ r4 | }
stabK   = { r2 r8 f''8-^ r4 | r4 r8 e''8-^ f''4-^ r4 | }
melA = {
  d'4. f'8 a'4 g'8 f' | g'4 f'8 e' d'2 | f'4. g'8 a'4 b'8 a' | g'2 e'4 c' |
  d'4. f'8 a'4 c''8 a' | d''2 c''8 a' g' f' | f'4 d'8 f' g'4 b'8 g' | a'2 g'4 e' |
}
melAII = {
  a4. d'8 f'4 e'8 d' | e'4 d'8 c' a2 | d'4. e'8 f'4 g'8 f' | e'2 c'4 g |
  a4. d'8 f'4 a'8 f' | a'2 a'8 f' e' d' | d'4 b8 d' e'4 g'8 e' | e'2 cis'4 cis' |
}
melB = {
  c''4. c''8 a'4 c'' | d''4. c''8 g'2 | f'4. a'8 d''4 c''8 a' | b'4. a'8 f'2 |
  c''4. c''8 a'4 c'' | e''4. d''8 c''2 | d''4 c''8 b' a'4 g' | a'1 |
}
melBII = {
  a'4. a'8 f'4 a' | g'4. e'8 e'2 | d'4. f'8 a'4 a'8 f' | f'4. f'8 d'2 |
  a'4. a'8 f'4 a' | c''4. g'8 e'2 | b'4 a'8 g' f'4 e' | e'1 |
}
klarFills = {
  R1 | r2 a''16( g'' f'' d'' f''8) r8 | R1 | r2 c'''16( b'' a'' g'' e''8) r8 |
  R1 | r2 d'''16( c''' a'' g'' a''8) r8 | R1 | r2 cis''16( e'' g'' a'' cis'''8) r8 |
}
klarSolo = {
  r8 a''16(\mf c''' d'''8) c'''16( a'' g''8) f''16( g'' a''4) |
  d'''4.-> c'''16( a'' g''8 f'' d''4) |
  f''16( g'' a'' c''' d''' c''' a'' g'') f''8 d'' f'' g'' |
  as''8( a'') c'''4 a''8 g'' f'' d'' |
  d'''2\startTrillSpan d'''8\stopTrillSpan c''' a'' c''' |
  d'''16\< c''' a'' g'' a'' g'' f'' d'' f'' d'' c'' a' c'' d'' f'' g''\! |
  a''4->\f g''8 a'' c'''4-> a''8 c''' |
  d'''2-> r2 |
}
power = #(define-music-function (p) (ly:pitch?)
  #{ $p 4. $p 8 r8 $p 8 $p 4 #})

% ---------------- Trompete 1 ----------------
trpI = {
  R1*3 | <>\f \stabI
  \stabI \stabI
  <>\mf \melA
  \stabI
  <>\f \melB
  <>\mp \stabI \stabI \stabI \stabI
  R1*4
  <>\mf \melA
  <>\ff \melB
  \transpose c c'' { \riff } | b'2-> c''2-> | d''1->\fermata |
}
% ---------------- Trompete 2 ----------------
trpII = {
  R1*3 | <>\f \stabII
  \stabII \stabII
  <>\mf \melAII
  \stabII
  <>\f \melBII
  <>\mp \stabII \stabII \stabII \stabII
  R1*4
  <>\mf \melAII
  <>\ff \melBII
  \transpose c c'' { \riff } | f'2-> g'2-> | a'1->\fermata |
}
% ---------------- Klarinette ----------------
klar = {
  R1*3 | <>\f \stabK
  \stabK \stabK
  <>\mf \klarFills
  \stabK
  <>\f \melB
  <>^\markup \bold "Solo!" \klarSolo
  R1*4
  <>\f^\markup \italic "8va – mit Biss" \transpose c c' { \melA }
  <>\ff \transpose c c' {
    c''4. c''8 a'4 c'' | d''4. c''8 g'2 | f'4. a'8 d''4 c''8 a' | b'4. a'8 f'2 |
    c''4. c''8 a'4 c'' }
  e''4. d''8 c''2 |
  \transpose c c' { d''4 c''8 b' a'4 g' | a'1 | }
  \transpose c c''' { \riff } | f''2-> g''2-> | a''1->\fermata |
}
% ---------------- Horn (leicht) ----------------
horn = {
  R1*3 | d'1\mf | c'2 d' |
  d'1 | c'2 d' | d'1 | c'2 d' |
  a1\mf | a1 | b1 | c'1 | a1 | a1 | b1 | cis'1 |
  d'1 | c'2 d' |
  c'1\f | c'1 | d'1 | d'1 | c'1 | c'1 | b1 | cis'1 |
  R1*8 |
  R1*4 |
  a1\mf | a1 | b1 | c'1 | a1 | a1 | b1 | cis'1 |
  c'1\ff | c'1 | d'1 | d'1 | c'1 | c'1 | b1 | cis'1 |
  d'1 | c'2 d' | d'2-> e'2-> | d'1->\fermata |
}
% ---------------- Tenorhorn ----------------
thn = {
  R1 | <>\f \transpose c c' { \riff \riff }
  \transpose c c' { \riff \riff }
  <>\mf \power a | \power a | \power f | \power g | \power a | \power a | \power f | \power e |
  \transpose c c' { \riff }
  <>\f \power c' | \power g | \power a | \power f | \power c' | \power g | \power f | \power e |
  <>\mf \transpose c c' { \riff \riff \riff \riff }
  R1*2 | <>\p\< \transpose c c' { \riff }
  <>\mf \power a | \power a | \power f | \power g | \power a | \power a | \power f | \power e |
  <>\ff \power c' | \power g | \power a | \power f | \power c' | \power g | \power f | \power e |
  \transpose c c' { \riff } | b2-> c'2-> | d'1->\fermata |
}
% ---------------- Tuba ----------------
achtel = #(define-music-function (p) (ly:pitch?)
  #{ \repeat unfold 8 { $p 8 } #})
tuba = {
  R1 | <>\f^\markup \italic "Riff – hart!" \riff \riff
  \riff \riff
  <>\mf \achtel d, | \achtel d, | \achtel b,, | \achtel c, | \achtel d, | \achtel d, | \achtel b,, | \achtel a,, |
  \riff
  <>\f \achtel f, | \achtel c, | \achtel d, | \achtel b,, | \achtel f, | \achtel c, | \achtel b,, | \achtel a,, |
  <>\mf \riff \riff \riff \riff
  <>\p\< \riff \riff
  <>\mf \achtel d, | \achtel d, | \achtel b,, | \achtel c, | \achtel d, | \achtel d, | \achtel b,, | \achtel a,, |
  <>\ff \achtel f, | \achtel c, | \achtel d, | \achtel b,, | \achtel f, | \achtel c, | \achtel b,, | \achtel a,, |
  \riff | b,,2-> c,2-> | d,1->\fermata |
}
% ---------------- Schlagwerk ----------------
groove = \drummode { << { hh8 hh hh hh hh hh hh hh } \\ { bd4 sn bd8 bd sn4 } >> }
crashG = \drummode { << { cymc8 hh hh hh hh hh hh hh } \\ { bd4 sn bd8 bd sn4 } >> }
ride   = \drummode { << { cymr8 cymr cymr cymr cymr cymr cymr cymr } \\ { bd4 sn bd8 bd sn4 } >> }
crashR = \drummode { << { cymc8 cymr cymr cymr cymr cymr cymr cymr } \\ { bd4 sn bd8 bd sn4 } >> }
fill   = \drummode { sn16 sn sn sn tomh tomh tomml tomml tomfh tomfh tomfh tomfh bd8 bd }
schlagwerk = \drummode {
  hh4\mf^\markup \italic "einzählen" hh hh hh | R1*2 | \crashG \groove |
  \groove \groove \groove \fill |
  \crashG \repeat unfold 6 \groove \fill |
  \crashG \fill |
  \crashR \repeat unfold 6 \ride \fill |
  \crashG \repeat unfold 6 \groove \fill |
  tomfh4\p\< tomfh tomfh tomfh | tomfh8 tomfh tomfh tomfh tomfh tomfh tomfh tomfh |
  tomml8 tomml tomml tomml tomfh tomfh tomfh tomfh | \fill |
  \crashG \repeat unfold 6 \groove \fill |
  \crashR \repeat unfold 6 \ride \fill |
  \crashG \groove | << { cymc2-> cymc-> } \\ { bd2 bd } >> | << { cymc1\fermata } \\ { bd1 } >> |
}

% ---------------- Systeme ----------------
mk = #(define-music-function (name short midi tr mus) (string? string? string? ly:pitch? ly:music?)
  #{ \new Staff \with { instrumentName = #name shortInstrumentName = #short midiInstrument = #midi }
     { \transposition $tr \transpose $tr c' << \global \marks #mus >> } #})
trpIStaff  = \mk "Trompete 1 in B" "Trp. 1" "trumpet" b \trpI
trpIIStaff = \mk "Trompete 2 in B" "Trp. 2" "trumpet" b \trpII
klarStaff  = \mk "Klarinette in B" "Klar." "clarinet" b \klar
hornStaff  = \mk "Horn in F" "Hn." "french horn" f \horn
thnStaff   = \mk "Tenorhorn in B" "Thn." "trombone" b, \thn
tubaStaff  = \new Staff \with { instrumentName = "Tuba" shortInstrumentName = "Tb." midiInstrument = "tuba" }
  { \clef bass << \global \marks \tuba >> }
drumStaff  = \new DrumStaff \with { instrumentName = "Schlagwerk" shortInstrumentName = "Schlw." }
  { << \global \marks \schlagwerk >> }

\book {
  \bookOutputName "Donnerwetter_Partitur"
  \score {
    <<
      \new StaffGroup << \trpIStaff \trpIIStaff \klarStaff >>
      \new StaffGroup << \hornStaff \thnStaff \tubaStaff >>
      \drumStaff
    >>
    \layout { }
  }
  \score { << \trpIStaff \trpIIStaff \klarStaff \hornStaff \thnStaff \tubaStaff \drumStaff >> \midi { } }
}
\book {
  \bookOutputName "Donnerwetter_Stimmen"
  \score { \trpIStaff  \header { piece = "Trompete 1 in B" } \layout { \compressEmptyMeasures } } \pageBreak
  \score { \trpIIStaff \header { piece = "Trompete 2 in B" } \layout { \compressEmptyMeasures } } \pageBreak
  \score { \klarStaff  \header { piece = "Klarinette in B" } \layout { \compressEmptyMeasures } } \pageBreak
  \score { \hornStaff  \header { piece = "Horn in F" } \layout { \compressEmptyMeasures } } \pageBreak
  \score { \thnStaff   \header { piece = "Tenorhorn in B" } \layout { \compressEmptyMeasures } } \pageBreak
  \score { \tubaStaff  \header { piece = "Tuba" } \layout { \compressEmptyMeasures } } \pageBreak
  \score { \drumStaff  \header { piece = "Schlagwerk (ad lib.)" } \layout { \compressEmptyMeasures } }
}
