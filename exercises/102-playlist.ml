(* ===== TYPES ===== *)

(* Define a sum type called genre with 4 variants: Rock, Jazz, Classical, Pop *)

(* ===== DATA ===== *)

(* A track is a tuple: (title: string, artist: string, duration_sec: int, genre) *)
(* Create at least 5 tracks with different genres *)


(* Create a list of all tracks *)


(* ===== FUNCTIONS ===== *)

(* 1. duration: takes a track, returns its duration in seconds *)


(* 2. total_duration: takes a list of tracks, returns sum of all durations *)
(* Hint: use let rec and match with head :: tail *)


(* 3. filter_by_genre: takes a genre and a list of tracks, returns only matching tracks *)
(* Hint: use List.filter with a lambda *)


(* 4. filter_by_artist: takes an artist name and a list, returns only that artist's tracks *)
(* Hint: same pattern as filter_by_genre, and notice how partial application makes these reusable *)


(* 5. track_titles: takes a list of tracks, returns a string list of just the titles *)
(* Hint: use List.map with a lambda *)


(* 6. long_tracks: takes a threshold in seconds and a list, returns tracks longer than threshold *)
(* Hint: use List.filter and your duration function *)


(* 7. format_track: takes a track, returns a formatted string *)
(* Example output: "Bohemian Rhapsody by Queen (5:54)" *)
(* Hint: use Printf.sprintf, and duration / 60 and duration mod 60 for minutes and seconds *)


(* 8. print_playlist: takes a list of tracks, prints each one using format_track *)
(* Hint: use List.iter *)


(* ===== RUN ===== *)

(* Print total duration of the full playlist *)

(* Print all Rock tracks *)

(* Print all tracks longer than 5 minutes *)

(* Print just the titles of all tracks *)
