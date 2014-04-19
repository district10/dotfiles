;; sample use of emacs abbreviation feature

(define-abbrev-table 'global-abbrev-table '(

    ;; math/unicode symbols
;;    ("2in" "∈")
;;    ("2nin" "∉")
;;    ("2inf" "∞")
;;    ("2luv" "♥")
;;    ("2smly" "☺")

    ;; About Me
    ("2im" "gnat_tang@yeah.net")
    ("2in" "Gnat TANG")
    ("2ic" "GIS_RS_WHU")

    ;; computing tech
    ("2wp" "Wikipedia")
    ("2ms" "Microsoft")
    ("2gg" "Google")
    ("2it" "IntelliType")
    ("2ms" "Microsoft Windows")
    ("2win" "Windows")
    ("2ie" "Internet Explorer")


    ;; normal english words
    ("2alt" "alternative")
    ("2char" "character")
    ("2def" "definition")
    ("2bg" "background")
    ("2kb" "keyboard")
    ("2ex" "example")
    ("2kbd" "keybinding")
    ("2env" "environment")
    ("2var" "variable")
    ("2ev" "environment variable")
    ("2cp" "computer")

    ;; emacs regex
    ("2d" "\\([0-9]+?\\)")
    ("2str" "\\([^\"]+?\\)\"")

    ;; shell commands
    ("2ditto" "ditto -ck --sequesterRsrc --keepParent src dest")
    ("2im" "convert -quality 85% ")

    ("2f0" "find . -type f -size 0 -exec rm {} ';'")
    ("2rsync" "rsync -z -r -v -t --exclude=\"*~\" --exclude=\".DS_Store\" --exclude=\".bash_history\" --exclude=\"**/xx_xahlee_info/*\"  --exclude=\"*/_curves_robert_yates/*.png\" --exclude=\"logs/*\"  --exclude=\"xlogs/*\" --delete --rsh=\"ssh -l xah\" ~/web/ xah@example.com:~/")
    ))

;; stop asking whether to save newly added abbrev when quitting emacs
(setq save-abbrevs nil)

;; turn on abbrev mode globally
(setq-default abbrev-mode t)
