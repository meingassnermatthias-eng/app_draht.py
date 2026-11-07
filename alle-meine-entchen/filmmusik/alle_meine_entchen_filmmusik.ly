\version "2.24.0"
\language "deutsch"

% =============================================================
%  "Alle meine Entchen" – Filmmusik-Version
%  Blechbläserquintett: 2 Trompeten in B, Horn in F, Posaune, Tuba
%  Noten in KLINGENDER Tonhöhe; Trompeten/Horn werden automatisch transponiert.
%
%  I   Misterioso  (T. 1–12)  c-Moll, Horn-Solo über tiefem Orgelpunkt,
%                             gedämpfte Trompeten, Filmharmonik (As, Des, G)
%  II  Agitato     (T. 13–28) treibendes 3+3+2-Ostinato in Tuba/Posaune,
%                             Melodie Trp 1 + Horn unisono, Stabs Trp 2
%  III Maestoso    (T. 29–38) Es-Dur, Hymne im vollen Satz
%  Coda            (T. 39–41) Ces – Des – Es (bVI – bVII – I)
% =============================================================

\header {
  title = "Alle meine Entchen"
  subtitle = "Filmmusik-Version für Blechbläserquintett"
  composer = "Volksweise"
  arranger = "Arr.: Claude"
  tagline = ##f
}

\paper { indent = 30\mm short-indent = 12\mm }

global = { \key c \minor \time 4/4 }

marks = {
  \tempo "Misterioso" 4 = 60
  s1*12
  \tempo "Agitato" 4 = 132
  \mark \markup \box "A" s1*14
  s1 \tempo "allargando" s1
  \tempo "Maestoso" 4 = 76
  \mark \markup \box "B" s1*10
  \tempo "molto allargando" 4 = 66
  \mark \markup \box "Coda" s1*3
  \bar "|."
}

trpI = { 
  R1*6 |
  c''1\pp^\markup\italic "con sord." | b'1 | as'1 | as'1 | g'1 | g'1\< |
  R1*3\! |
  g'4.->\mf^\markup\italic "senza sord." g'4.-> g'4->\< |
  c'4\f-> d' es' f' | g'2 g' | as'4 as' as' as' | g'1 | as'4 as' as' as' | g'1 | f'4 f' f' f' | es'2 es' | d'4 d' d' d' | c'1 |
  es'1\f\< | es'2 d'2 |
  es'4--\ff f'-- g'-- as'-- | b'2 b' | c''4 c'' c'' c'' | b'1 |
  c''4 c'' c'' c'' | b'1 | as'4 as' as' as' | g'2 g' | f'4 f' f' f' | es'1 |
  ges'1->\ff | as'2-> as'4-> as'-> | b'1\fermata |
 }
trpII = { 
  R1*3 |
  es'1\pp^\markup\italic "con sord." | es'1 | es'1 | f'1 | es'1 | des'1 | c'1 | h1 | es'1\< |
  R1*2\! |
  es'4.->\mp^\markup\italic "senza sord." es'4.-> es'4->\< | es'4.-> es'4.-> es'4-> |
  g4.->\f g4.-> g4-> | es'4.-> es'4.-> es'4-> | es'4.-> es'4.-> es'4-> | es'4.-> es'4.-> es'4-> | f'4.-> f'4.-> f'4-> |
  es'4.-> es'4.-> es'4-> | des'4.-> des'4.-> des'4-> | c'4.-> c'4.-> c'4-> | h4.-> h4.-> h4-> | es'4.-> es'4.-> es'4-> |
  c'1\f\< | b1 |
  b4\ff c' es' f' | g'2 g' | as'4 as' as' as' | g'1 |
  g'4 g' g' g' | g'2 f' | f'4 f' f' f' | es'2 es' | c'4 c' d' d' | b1 |
  es'1->\ff | f'2-> f'4-> f'-> | g'1\fermata |
 }
horn = { 
  R1*2 |
  c'4\mp^\markup\italic "espressivo"( d' es' f' | g'2 g') | as'4( as' as' as' | g'1) |
  as'4( as' as' as' | g'1) | f'4( f' f' f' | es'2 es') | d'4( d' d' d' | c'1)\< |
  R1*2\! |
  c'4.->\mp c'4.-> c'4->\< | c'4.-> c'4.-> c'4-> |
  c'4\f-> d' es' f' | g'2 g' | as'4 as' as' as' | g'1 | as'4 as' as' as' | g'1 | f'4 f' f' f' | es'2 es' | d'4 d' d' d' | c'1 |
  as1\f\< | as1 |
  g2\ff b | es'2 d' | es'1 | es'1 | es'1 | es'2 d' | des'1 | c'1 | as1 | g1 |
  ces'1->\ff | des'2-> des'4-> des'-> | es'1\fermata |
 }
posaune = { 
  g,1\pp\<~ | g,1\> | g,1\p | g,1 | es1 | es1 | c1 | b,1 | as,1 | c1 | d1 | c1\< |
  R1\! | c8->\mp c c c-> c c c-> c\< | c8-> c c c-> c c c-> c | c8-> c c c-> c c c-> c |
  g,8->\f g, g, g,-> g, g, g,-> g, | g,8-> g, g, g,-> g, g, g,-> g, | es8-> es es es-> es es es-> es | g,8-> g, g, g,-> g, g, g,-> g, | c8-> c c c-> c c c-> c | b,8-> b, b, b,-> b, b, b,-> b, | as,8-> as, as, as,-> as, as, as,-> as, | es8-> es es es-> es es es-> es | d8-> d d d-> d d d-> d | g,8-> g, g, g,-> g, g, g,-> g, |
  es1\f\< | d1 |
  es1\ff | b2 b | c'1 | b1 | c'1 | b1 | as1 | g1 | f1 | es1 |
  ges1->\ff | as2-> as4-> as-> | b1\fermata |
 }
tuba = { 
  c,1\pp\<~ | c,1\> | c,1\p | c,1 | as,,1 | c,1 | f,,1 | es,1 | des,1 | as,,1 | g,,1 | c,1\< |
  c,8->\mp\! c, c, c,-> c, c, c,-> c,\< | c,8-> c, c, c,-> c, c, c,-> c, | c,8-> c, c, c,-> c, c, c,-> c, | c,8-> c, c, c,-> c, c, c,-> c, |
  c,8->\f c, c, c,-> c, c, c,-> c, | c,8-> c, c, c,-> c, c, c,-> c, | as,,8-> as,, as,, as,,-> as,, as,, as,,-> as,, | c,8-> c, c, c,-> c, c, c,-> c, | f,,8-> f,, f,, f,,-> f,, f,, f,,-> f,, | es,8-> es, es, es,-> es, es, es,-> es, | des,8-> des, des, des,-> des, des, des,-> des, | as,,8-> as,, as,, as,,-> as,, as,, as,,-> as,, | g,,8-> g,, g,, g,,-> g,, g,, g,,-> g,, | c,8-> c, c, c,-> c, c, c,-> c, |
  as,,8-> as,, as,, as,,-> as,, as,, as,,-> as,,\< | b,,8-> b,, b,, b,,-> b,, b,, b,,-> b,, |
  es,4.\ff es,8 es,2 | es,2 g,, | as,,4. as,,8 as,,2 | es,4. es,8 es,2 |
  c,4. c,8 c,2 | g,,2 b,, | des,4. des,8 des,2 | c,4. c,8 c,2 | f,,2 b,, | es,1 |
  ces,1->\ff | des,2-> des,4-> des,-> | es,1\fermata |
 }

trpIStaff = \new Staff \with {
  instrumentName = "Trompete 1 in B" shortInstrumentName = "Trp. 1" midiInstrument = "trumpet"
} { \transposition b \transpose b c' << \global \marks \trpI >> }
trpIIStaff = \new Staff \with {
  instrumentName = "Trompete 2 in B" shortInstrumentName = "Trp. 2" midiInstrument = "trumpet"
} { \transposition b \transpose b c' << \global \marks \trpII >> }
hornStaff = \new Staff \with {
  instrumentName = "Horn in F" shortInstrumentName = "Hn." midiInstrument = "french horn"
} { \transposition f \transpose f c' << \global \marks \horn >> }
posStaff = \new Staff \with {
  instrumentName = "Posaune" shortInstrumentName = "Pos." midiInstrument = "trombone"
} { \clef bass << \global \marks \posaune >> }
tubaStaff = \new Staff \with {
  instrumentName = "Tuba" shortInstrumentName = "Tb." midiInstrument = "tuba"
} { \clef bass << \global \marks \tuba >> }

\book {
  \bookOutputName "Alle_meine_Entchen_Filmmusik_Partitur"
  \score {
    <<
      \new StaffGroup << \trpIStaff \trpIIStaff \hornStaff >>
      \new StaffGroup << \posStaff \tubaStaff >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves \override VerticalAxisGroup.remove-first = ##f }
      \context { \Score \remove Mark_engraver \remove Metronome_mark_engraver }
      \context { \StaffGroup \consists Mark_engraver \consists Metronome_mark_engraver }
    }
  }
  \score {
    << \trpIStaff \trpIIStaff \hornStaff \posStaff \tubaStaff >>
    \midi { }
  }
}

\book {
  \bookOutputName "Alle_meine_Entchen_Filmmusik_Stimmen"
  \score { \trpIStaff  \header { piece = "Trompete 1 in B" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \trpIIStaff \header { piece = "Trompete 2 in B" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \hornStaff  \header { piece = "Horn in F" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \posStaff   \header { piece = "Posaune" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \tubaStaff  \header { piece = "Tuba" } \layout { \compressEmptyMeasures } }
}
