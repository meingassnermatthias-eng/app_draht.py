\version "2.24.0"
\language "deutsch"

% =============================================================
%  "Alle meine Entchen" – Satz für Blechbläserquintett
%  2 Trompeten in B, Horn in F, Posaune, Tuba
%  Noten werden hier in KLINGENDER Tonhöhe (Es-Dur) notiert;
%  Trompeten und Horn werden beim Setzen automatisch transponiert.
%  Form: Intro (2) – A: Strophe 1, Melodie Trp 1 (10)
%        – B: Strophe 2, Melodie Posaune, "Um-pa"-Begleitung (10) – Coda (2)
% =============================================================

\header {
  title = "Alle meine Entchen"
  subtitle = "Satz für Blechbläserquintett"
  composer = "Volksweise"
  arranger = "Arr.: Claude"
  tagline = ##f
}

\paper { indent = 30\mm short-indent = 12\mm }

global = {
  \key es \major
  \time 4/4
  \tempo "Fröhlich" 4 = 104
}

marks = {
  s1*2
  \mark \markup \box "A" s1*10
  \mark \markup \box "B" s1*10
  \mark \markup \box "Coda" s1*2
  \bar "|."
}

% ---------------- Trompete 1 ----------------
trpI = {
  % Intro
  g'4\f g'8 g' b'4 r | f'2 as'4 r |
  % A – Melodie
  es'4\mf f' g' as' | b'2 b' | c''4 c'' c'' c'' | b'1 |
  c''4 c'' c'' c'' | b'1 | as'4 as' as' as' | g'2 g' |
  f'4 f' f' f' | es'1 |
  % B – Nachschlag
  r4 g'-.\p r g'-. | r g'-. r g'-. | r as'-. r as'-. | r g'-. r g'-. |
  r as'-. r as'-. | r g'-. r g'-. | r as'-. r as'-. | r g'-. r g'-. |
  r as'-. r as'-. | r g'-. r g'-. |
  % Coda
  c''4\f c''8 c'' d''4 d'' | es''1\fermata\ff |
}
textA = \lyricmode {
  Al -- le mei -- ne Ent -- chen schwim -- men auf dem See,
  schwim -- men auf dem See,
  Köpf -- chen in das Was -- ser, Schwänz -- chen in die Höh.
}

% ---------------- Trompete 2 ----------------
trpII = {
  es'4\f es'8 es' g'4 r | d'2 f'4 r |
  b4\mf c' es' f' | g'2 g' | as'4 as' as' as' | g'1 |
  as'4 as' as' as' | g'1 | es'4 es' f' f' | es'2 es' |
  c'4 c' d' d' | b1 |
  r4 es'-.\p r es'-. | r es'-. r es'-. | r es'-. r es'-. | r es'-. r es'-. |
  r es'-. r f'-. | r es'-. r des'-. | r c'-. r c'-. | r es'-. r es'-. |
  r es'-. r d'-. | r es'-. r es'-. |
  as'4\f as'8 as' as'4 as' | g'1\fermata\ff |
}

% ---------------- Horn ----------------
horn = {
  b4\f b8 b es'4 r | b2 d'4 r |
  g2\mf b | es'1 | es'1 | es'1 |
  es'1 | es'2 des' | c'1 | b2 c' |
  as1 | g1 |
  b1\mp\< | es'1\! | es'2 f'4 es' | g'2 f'4 es' |
  es'2 f' | es'2 des' | c'1 | b2 c' |
  as1 | g1 |
  es'4\f es'8 es' f'4 f' | es'1\fermata\ff |
}

% ---------------- Posaune ----------------
posaune = {
  g4\f g8 g g4 r | as2 as4 r |
  es1\mf | b2 c' | c'1 | b1 |
  c'2 as | g1 | as1 | g1 |
  f1 | es1 |
  % B – Melodie
  es4\mf^\markup \italic "cantabile" f g as | b2 b | c'4 c' c' c' | b1 |
  c'4 c' c' c' | b1 | as4 as as as | g2 g |
  f4 f f f | es1 |
  c'4\f c'8 c' b4 b | b1\fermata\ff |
}
textB = \lyricmode {
  Al -- le mei -- ne Täub -- chen sit -- zen auf dem Dach,
  sit -- zen auf dem Dach,
  fliegt eins in die Lüf -- te, flie -- gen al -- le nach.
}

% ---------------- Tuba ----------------
tuba = {
  es,4\f es,8 es, es,4 r | b,,2 b,,4 r |
  es,2\mf b,, | es,2 c, | as,,2 es, | es,2 b,, |
  as,,2 f,, | es,2 g,, | as,,2 f,, | g,,2 c, |
  f,,2 b,, | es,1 |
  es,4-.\mp r b,,-. r | es,-. r c,-. r | as,,-. r es,-. r | es,-. r b,,-. r |
  as,,-. r f,,-. r | es,-. r g,,-. r | as,,-. r f,,-. r | g,,-. r c,-. r |
  f,,-. r b,,-. r | es,-. r g,,-. r |
  as,,4\f as,,8 as,, b,,4 b,, | es,1\fermata\ff |
}

% ---------------- Staves ----------------
trpIStaff = \new Staff \with {
  instrumentName = "Trompete 1 in B" shortInstrumentName = "Trp. 1"
  midiInstrument = "trumpet"
} { \new Voice = "t1" { \transposition b \transpose b c' { \global \trpI } } }

trpIIStaff = \new Staff \with {
  instrumentName = "Trompete 2 in B" shortInstrumentName = "Trp. 2"
  midiInstrument = "trumpet"
} { \transposition b \transpose b c' { \global \trpII } }

hornStaff = \new Staff \with {
  instrumentName = "Horn in F" shortInstrumentName = "Hn."
  midiInstrument = "french horn"
} { \transposition f \transpose f c' { \global \horn } }

posStaff = \new Staff \with {
  instrumentName = "Posaune" shortInstrumentName = "Pos."
  midiInstrument = "trombone"
} { \new Voice = "pos" { \clef bass \global \posaune } }

tubaStaff = \new Staff \with {
  instrumentName = "Tuba" shortInstrumentName = "Tb."
  midiInstrument = "tuba"
} { \clef bass \global \tuba }

% ================= Partitur + MIDI =================
\book {
  \bookOutputName "Alle_meine_Entchen_Partitur"
  \score {
    <<
      \new Devnull \marks
      \new StaffGroup <<
        \trpIStaff
        \new Lyrics \lyricsto "t1" \textA
        \trpIIStaff
        \hornStaff
      >>
      \new StaffGroup <<
        \posStaff
        \new Lyrics \lyricsto "pos" \textB
        \tubaStaff
      >>
    >>
    \layout { }
  }
  \score {
    << \trpIStaff \trpIIStaff \hornStaff \posStaff \tubaStaff >>
    \midi { }
  }
}

% ================= Einzelstimmen =================
part = #(define-music-function (staff) (ly:music?)
  #{ << \new Devnull \marks #staff >> #})

\book {
  \bookOutputName "Alle_meine_Entchen_Stimmen"
  \score { \part \trpIStaff  \header { piece = "Trompete 1 in B" } }
  \pageBreak
  \score { \part \trpIIStaff \header { piece = "Trompete 2 in B" } }
  \pageBreak
  \score { \part \hornStaff  \header { piece = "Horn in F" } }
  \pageBreak
  \score { \part \posStaff   \header { piece = "Posaune" } }
  \pageBreak
  \score { \part \tubaStaff  \header { piece = "Tuba" } }
}
