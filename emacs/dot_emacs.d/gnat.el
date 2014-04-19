;; Add Some Load Path
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/solarized/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")

;; Auto Complete
(require 'ac)

;; Smex, I use "C-e" instead of "M-x"
(require 'smex)
(global-set-key (kbd "C-e") 'smex)

;; Vcursor
(setq vcursor-key-bindings 't)
(load "vcursor")

;; Mini Map
(require 'minimap)

;; Theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))
(require 'color-theme-solarized)
(load-theme 'solarized-dark t)

;; Line Num
(require 'linum)
(global-linum-mode 1)

;; Ya Snippet
(require 'yasnippet)
(yas-global-mode 1)


;; Cross Hair
;;(require 'crosshairs)

;; Code Folding
(load "folding" 'nomessage 'noerror) ;; I use C-c C-f as the prefix, instead of C-c @
(folding-mode-add-find-file-hook)


;; Abbrevs
(load "abbrevs")


;; My Keybinding Configurations
(require 'key-bindings) ;; More-Funcs inside


;; Set Variables
(recentf-mode 1) ; Keep A List Of Recently Opened Files
(electric-pair-mode 1) ; Auto generate right paren, bracket, brace
(show-paren-mode 1)
(setq show-paren-style 'expression) ; Highlight Entire Bracket Expression

(setq electric-pair-pairs '(
                            (?\@ . ?\#)
                            ))



;; Misc
(require 'page-break-lines)
(turn-on-page-break-lines-mode)


 




;; ##################### Trash Can ####################
;; Enable Transient
;;(transient-mark-mode 1)

;;(load "pandoc-mode")
;;(add-hook 'markdown-mode-hook 'turn-on-pandoc)
;;(add-hook 'pandoc-mode-hook 'pandoc-load-default-settings)

;; Smex, I use "C-e" instead of "M-x"
;;(require 'smex)
;;(autoload 'smex "smex")
;;(global-set-key (kbd "C-e") 'smex)

;; Auto Mark
;;(require 'visible-mark) 
;;(setq show-paren-priority 999)
;;  (set-face-background 'region nil)
;;(require 'auto-mark)
;;(when (require 'auto-mark nil t)
;;  (setq auto-mark-command-class-alist
;;        '((anything . anything)
;;          (goto-line . jump)
;;          (indent-for-tab-command . ignore)
;;          (undo . ignore)))
;;  (setq auto-mark-command-classifiers
;;        (list (lambda (command)
;;                (if (and (eq command 'self-insert-command)
;;                         (eq last-command-char ? ))
;;                    'ignore))))
;;  (global-auto-mark-mode 1))

