\version "2.24.0"
\language "deutsch"

% =============================================================
%  "Rehragout – Ja wos gibt's denn heut auf d'Nacht"
%  Satz für 2 Tenorhörner in B und F-Tuba (Jungmusiker)
%  Melodie + 2. Stimme nach der Vorlage von www.franzdorfer.com
%
%  Alle Stimmen sind hier in den Tonhöhen der C-Dur-Vorlage notiert
%  und werden mit \transpose c f,, nach klingend F-Dur gesetzt;
%  die Tenorhörner werden danach automatisch nach notiert G-Dur transponiert.
%
%  Intro      T. 1–4    Tuba fragt, Tenorhörner antworten mit dem Schluss-Motiv
%  Strophe 1  Melodie Thn 1, 2. Stimme Thn 2 (wie Vorlage), Polka-Bass, mit Wdh.
%  Strophe 2  Die TUBA singt die Melodie, Tenorhörner Nachschlag
%  Echo       "a Rehragout" wandert: Thn 1 → Thn 2 → Tuba → alle
%  Strophe 3  schneller, tutti, mit Wdh.; Schluss: alle rufen "A Rehragout!"
% =============================================================

\header {
  title = "Rehragout"
  subtitle = "Ja wos gibt's denn heut auf d'Nacht"
  subsubtitle = "für 2 Tenorhörner in B und F-Tuba"
  composer = "Vorlage: www.franzdorfer.com"
  arranger = "Satz: Claude"
  tagline = ##f
}

\paper { indent = 28\mm short-indent = 10\mm }

global = { \key c \major \time 2/4 }

% ---------- Bausteine (Tonhöhen der C-Vorlage) ----------
obenA = { g'8 c'' e'' g'' | f''4 r8 g'16 g' | g'8 h' d'' f'' | e''4 r | e''4 d''8. c''16 | c''8 h' h'8. c''16 | }
obenErst = { c''8 h' h'8. a'16 | a'8 g' g' g'16 g' | }
obenZweit = { c''8 h' h'8. a'16 | a'8 g' e'' d'' | c''4 r | }
untenA = { e'8 g' c'' e'' | d''4 r8 g'16 g' | f'8 g' h' d'' | c''4 r | c''4 h'8. a'16 | a'8 g' g'8. a'16 | }
untenErst = { a'8 g' g'8. f'16 | f'8 e' e' g'16 g' | }
untenZweit = { a'8 g' g'8. f'16 | f'8 g' g' f' | e'4 r | }
bassA = { c'4 g | g4 d' | g4 d' | c'4 a8 h | c'4 g | g4 d' | }
bassErst = { g4 d' | c'8 g a h | }
bassZweit = { g4 d' | g4 h | c'4 r | }

marks = {
  \tempo "Gemütlich" 4 = 96
  s2*4
  \tempo "Polka" 4 = 104
  \mark \markup \box "1" s2*6 s2*2 s2*3
  \mark \markup \box "2" s2*9
  \mark \markup \box "Echo" s2*8
  \tempo "Schneller!" 4 = 120
  \mark \markup \box "3" s2*6 s2*2 s2*3
  s2*2
  \bar "|."
}

% ---------------- Tenorhorn 1 ----------------
thnI = {
  % Intro
  R2 | c''8\mf h' h'8. a'16 | a'8 g' e'' d'' | c''4 r8 g'16 g' |
  % Strophe 1
  \repeat volta 2 { \obenA }
  \alternative { { \obenErst } { \obenZweit } }
  % Strophe 2 – Nachschlag
  r8 c''-.\p r c''-. | r h'-. r h'-. | r h'-. r h'-. | r c''-. r c''-. |
  r8 c''-. r c''-. | r h'-. r h'-. | r h'-. r h'-. | r h'-. r h'-. | r c''-. r4 |
  % Echo
  c''8\f h' h'8. a'16 | a'8 g' g'4 | R2*4 |
  d''8\ff d'' d''8. d''16 | d''4-> r8 g'16 g' |
  % Strophe 3
  \repeat volta 2 { <>\f^\markup \italic "1. f – 2. ff" \obenA }
  \alternative { { \obenErst } { \obenZweit } }
  R2^\markup \bold "alle rufen: „A Rehragout!“" | e''8->\ff r r4 |
}
textI = \lyricmode {
  \repeat unfold 9 { \skip 1 }
  Ja, was gibts denn heit auf d'Nacht, ja, was gibts denn heit auf d'Nacht?
  Heit gibts a Reh -- ra -- gout, a Reh -- ra -- gout, a Reh -- ra -- gout! Ja, was
  Reh -- ra -- gout, a Reh -- ra -- gout auf d'Nacht.
}

% ---------------- Tenorhorn 2 ----------------
thnII = {
  R2 | a'8\mf g' g'8. f'16 | f'8 g' g' f' | e'4 r8 g'16 g' |
  \repeat volta 2 { \untenA }
  \alternative { { \untenErst } { \untenZweit } }
  r8 g'-.\p r g'-. | r f'-. r f'-. | r f'-. r f'-. | r g'-. r g'-. |
  r8 g'-. r g'-. | r f'-. r f'-. | r f'-. r f'-. | r f'-. r f'-. | r g'-. r4 |
  R2*2 | a'8\mf g' g'8. f'16 | f'8 e' e'4 | R2*2 |
  h'8\ff h' h'8. h'16 | h'4-> r8 g'16 g' |
  \repeat volta 2 { <>\f^\markup \italic "1. f – 2. ff" \untenA }
  \alternative { { \untenErst } { \untenZweit } }
  R2 | g'8->\ff r r4 |
}

% ---------------- F-Tuba ----------------
tuba = {
  g8\f^\markup \italic "fragend" h d' f'\fermata | g4\mf d' | g4 h | c'4 r |
  \repeat volta 2 { \bassA }
  \alternative { { \bassErst } { g4 d' | g4 h | c'4 r8 g16\f^\markup \bold "Solo!" g | } }
  % Strophe 2 – Melodie eine Oktave tiefer
  g8 c' e' g' | f'4 r8 g16 g | g8 h d' f' | e'4 r | e'4 d'8. c'16 | c'8 h h8. c'16 |
  c'8 h h8. a16 | a8 g e' d' | c'4 r |
  R2*4 | c'8\p h h8. a16 | a8 g g4 |
  g8\ff g g8. g16 | g4-> r |
  \repeat volta 2 { c'4->\f^\markup \italic "1. f – 2. ff" g | g4-> d' | g4-> d' | c'4-> a8 h | c'4-> g | g4-> d' | }
  \alternative { { \bassErst } { \bassZweit } }
  R2 | c'8->\ff r r4 |
}

% ---------------- Staves ----------------
thnIStaff = \new Staff \with {
  instrumentName = "Tenorhorn 1 in B" shortInstrumentName = "Thn. 1" midiInstrument = "french horn"
} { \new Voice = "thn1" { \transposition b, \transpose b, c' \transpose c f,, << \global \marks \thnI >> } }
thnIIStaff = \new Staff \with {
  instrumentName = "Tenorhorn 2 in B" shortInstrumentName = "Thn. 2" midiInstrument = "french horn"
} { \transposition b, \transpose b, c' \transpose c f,, << \global \marks \thnII >> }
tubaStaff = \new Staff \with {
  instrumentName = "Tuba in F" shortInstrumentName = "Tb." midiInstrument = "tuba"
} { \clef bass \transpose c f,, << \global \marks \tuba >> }

\book {
  \bookOutputName "Rehragout_Ja_wos_Partitur"
  \score {
    \new StaffGroup << \thnIStaff \new Lyrics \lyricsto "thn1" \textI \thnIIStaff \tubaStaff >>
    \layout { }
  }
  \score { \unfoldRepeats << \thnIStaff \thnIIStaff \tubaStaff >> \midi { } }
}

\book {
  \bookOutputName "Rehragout_Ja_wos_Stimmen"
  \score { << \thnIStaff \new Lyrics \lyricsto "thn1" \textI >> \header { piece = "Tenorhorn 1 in B" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \thnIIStaff \header { piece = "Tenorhorn 2 in B" } \layout { \compressEmptyMeasures } }
  \pageBreak
  \score { \tubaStaff \header { piece = "Tuba in F" } \layout { \compressEmptyMeasures } }
}
