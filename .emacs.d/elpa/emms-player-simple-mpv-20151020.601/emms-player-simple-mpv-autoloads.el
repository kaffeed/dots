;;; emms-player-simple-mpv-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "emms-player-simple-mpv" "emms-player-simple-mpv.el"
;;;;;;  (22400 50558 580130 382000))
;;; Generated autoloads from emms-player-simple-mpv.el

(autoload 'define-emms-simple-player-mpv "emms-player-simple-mpv" "\
Extension of `define-emms-simple-player' for mpv JSON IPC.

\(fn NAME TYPES REGEX COMMAND &rest ARGS)" nil t)

(autoload 'emms-player-simple-mpv-tq-clear "emms-player-simple-mpv" "\
Clear tq-enque if it remains.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-tq-enqueue "emms-player-simple-mpv" "\
Wrapper function of `tq-enqueue'.

\(fn COM-LS CLOSURE FN &optional DELAY-QUESTION)" nil nil)

(autoload 'emms-player-simple-mpv-tq-data-message "emms-player-simple-mpv" "\
Return function to display a data message by FORM.
FORM can include a format specification for data.
:FN takes data as an argument.
:ERR-FORM can include a format specification %s.

\(fn FORM &key (fn (function identity)) (err-form form))" nil nil)

(autoload 'emms-player-simple-mpv-tq-error-message "emms-player-simple-mpv" "\
Return function to display an error message by FORM.
FORM can include a format specification %s.

\(fn FORM)" nil nil)

(autoload 'emms-player-simple-mpv-add-to-converters "emms-player-simple-mpv" "\
Add a converter to PLAYER's mpv-track-name-converters like `add-to-list'.
Converter is  (list REGEXP TYPES FN).
If APPENDP is no-nil,add converter to last.
TYPES is type list or t.
FN takes track-name as an argument.

\(fn PLAYER REGEXP TYPES FN &optional APPENDP)" nil nil)

(autoload 'emms-player-simple-mpv-remove-converter "emms-player-simple-mpv" "\
Remove the converter from PLAYER's mpv-track-name-converters which has REGEXP.

\(fn PLAYER REGEXP)" nil nil)

(autoload 'emms-player-simple-mpv-start "emms-player-simple-mpv" "\
Emulate `emms-player-simple-start' but the first arg.

\(fn TRACK PLAYER CMDNAME PARAMS)" nil nil)

(autoload 'emms-player-simple-mpv-observe_property "emms-player-simple-mpv" "\
Set observe_property of NAME.

\(fn NAME)" nil nil)

(autoload 'emms-player-simple-mpv-set_property "emms-player-simple-mpv" "\
Set PROPERTY to VALUE.
:SPEC is a format specification for VALUE.
:MSG is displayed when command succeeds.
:ERR-MSG is displayed when command fails.
:FN takes VALUE as an argument.

\(fn PROPERTY VALUE &key (spec \"%s\") (msg property) (err-msg property) (fn (function identity)))" nil nil)

(autoload 'emms-player-simple-mpv-set_property_string "emms-player-simple-mpv" "\
Set PROPERTY to VALUE.
:SPEC is a format specification for VALUE.
:MSG is displayed when command succeeds.
:ERR-MSG is displayed when command fails.
:FN takes VALUE as an argument.

\(fn PROPERTY VALUE &key (spec \"%s\") (msg property) (err-msg property) (fn (function identity)))" nil nil)

(autoload 'emms-player-simple-mpv-pause "emms-player-simple-mpv" "\
Pause.

\(fn)" nil nil)

(autoload 'emms-player-simple-mpv-unpause "emms-player-simple-mpv" "\
Unpause.

\(fn)" nil nil)

(autoload 'emms-player-simple-mpv-seek "emms-player-simple-mpv" "\
Seek by SEC.

\(fn SEC)" nil nil)

(autoload 'emms-player-simple-mpv-seek-to "emms-player-simple-mpv" "\
Seek to SEC.

\(fn SEC)" t nil)

(autoload 'emms-player-simple-mpv-volume-change "emms-player-simple-mpv" "\
Change volume by V.

\(fn V)" nil nil)

;;;***

;;;### (autoloads nil "emms-player-simple-mpv-control-functions"
;;;;;;  "emms-player-simple-mpv-control-functions.el" (22400 50558
;;;;;;  826130 378000))
;;; Generated autoloads from emms-player-simple-mpv-control-functions.el

(autoload 'emms-player-simple-mpv-cycle "emms-player-simple-mpv-control-functions" "\
Cycle PROPERTY.

\(fn PROPERTY)" nil nil)

(autoload 'emms-player-simple-mpv-seek-to-% "emms-player-simple-mpv-control-functions" "\
Seek to PER(percent position).

\(fn PER)" t nil)

(autoload 'emms-player-simple-mpv-volume-to "emms-player-simple-mpv-control-functions" "\
Set volume to V.

\(fn V)" t nil)

(autoload 'emms-player-simple-mpv-mute-on "emms-player-simple-mpv-control-functions" "\
Mute on.

\(fn)" nil nil)

(autoload 'emms-player-simple-mpv-mute-off "emms-player-simple-mpv-control-functions" "\
Mute off.

\(fn)" nil nil)

(autoload 'emms-player-simple-mpv-mute "emms-player-simple-mpv-control-functions" "\
Cycle mute.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-time-pos "emms-player-simple-mpv-control-functions" "\
Display position in current file.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-time-pos-% "emms-player-simple-mpv-control-functions" "\
Display position (0-100) in current file.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-playlist-next "emms-player-simple-mpv-control-functions" "\
Go to the next entry on the playlist.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-playlist-prev "emms-player-simple-mpv-control-functions" "\
Go to the previous entry on the playlist.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-playlist-to "emms-player-simple-mpv-control-functions" "\
Go to the Nth entry on the playlist.

\(fn &optional N)" t nil)

(autoload 'emms-player-simple-mpv-playlist-pos "emms-player-simple-mpv-control-functions" "\
Display current position on the playlist.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-speed-to "emms-player-simple-mpv-control-functions" "\
Set speed to V.

\(fn V)" t nil)

(autoload 'emms-player-simple-mpv-speed-normal "emms-player-simple-mpv-control-functions" "\
Change speed to normal.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-speed "emms-player-simple-mpv-control-functions" "\
Change speed by V.

\(fn V)" t nil)

(autoload 'emms-player-simple-mpv-speed-% "emms-player-simple-mpv-control-functions" "\
N % times speed.

\(fn N)" nil nil)

(autoload 'emms-player-simple-mpv-speed-increase "emms-player-simple-mpv-control-functions" "\
Increase speed by 10%.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-speed-decrease "emms-player-simple-mpv-control-functions" "\
Decrease speed by 10%.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-speed-double "emms-player-simple-mpv-control-functions" "\
Double speed.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-speed-halve "emms-player-simple-mpv-control-functions" "\
Halve speed.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-ab-loop "emms-player-simple-mpv-control-functions" "\
Cycle ab-loop.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-loop-to "emms-player-simple-mpv-control-functions" "\
Set loop to N.
If N is less than 1, set loop to \"inf\".

\(fn N)" t nil)

(autoload 'emms-player-simple-mpv-loop-file-to "emms-player-simple-mpv-control-functions" "\
Set loop-file to N.
If N is less than 1, set loop-file to \"inf\".

\(fn N)" t nil)

(autoload 'emms-player-simple-mpv-ontop "emms-player-simple-mpv-control-functions" "\
Cycle ontop.

\(fn)" t nil)

(autoload 'emms-player-simple-mpv-fullscreen "emms-player-simple-mpv-control-functions" "\
Cycle fullscreen.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("emms-player-simple-mpv-e.g.hydra.el"
;;;;;;  "emms-player-simple-mpv-e.g.playlist-fname.el" "emms-player-simple-mpv-e.g.time-display.el"
;;;;;;  "emms-player-simple-mpv-pkg.el") (22400 50558 945918 132000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; emms-player-simple-mpv-autoloads.el ends here
