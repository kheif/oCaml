(* ===== TYPES ===== *)

type genre = Rock | Jazz | Classical | Pop;;


(* ===== DATA ===== *)

(* A track is a tuple: (title: string, artist: string, duration_sec: int, genre) *)
let track1 = ("Bohemian Rhapsody", "Queen",           354, Rock);;
let track2 = ("So What",           "Miles Davis",     562, Jazz);;
let track3 = ("Moonlight Sonata",  "Beethoven",       375, Classical);;
let track4 = ("Billie Jean",       "Michael Jackson", 294, Pop);;
let track5 = ("Comfortably Numb",  "Pink Floyd",      382, Rock);;
let track6 = ("Autumn Leaves",     "Bill Evans",      328, Jazz);;

let playlist = [track1; track2; track3; track4; track5; track6];;


(* ===== FUNCTIONS ===== *)

let duration (_, _, d, _) = d;;

let rec total_duration = function
  | [] -> 0
  | track :: rest -> duration track + total_duration rest;;

let filter_by_genre g tracks =
  List.filter (fun (_, _, _, tg) -> tg = g) tracks;;

let filter_by_artist artist tracks =
  List.filter (fun (_, a, _, _) -> a = artist) tracks;;

let track_titles tracks =
  List.map (fun (title, _, _, _) -> title) tracks;;

let long_tracks min_sec tracks =
  List.filter (fun track -> duration track > min_sec) tracks;;

let format_track (title, artist, d, _) =
  Printf.sprintf "%s by %s (%d:%02d)" title artist (d / 60) (d mod 60);;

let print_playlist tracks =
  List.iter (fun track -> print_endline (format_track track)) tracks;;


(* ===== RUN ===== *)

Printf.printf "Total duration: %d:%02d\n\n"
  (total_duration playlist / 60)
  (total_duration playlist mod 60);;

print_endline "Rock tracks:";;
print_playlist (filter_by_genre Rock playlist);;

print_endline "\nTracks longer than 5 minutes:";;
print_playlist (long_tracks 300 playlist);;

print_endline "\nAll titles:";;
List.iter print_endline (track_titles playlist);;
