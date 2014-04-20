;;; gnat.el ---
;;
;; Filename: gnat.el
;; Description:
;; Author: root
;; Maintainer:
;; Created: Sun Apr 20 08:24:07 2014 (+0800)
;; Version:
;; Package-Requires: ()
;; Last-Updated: Sun Apr 20 11:09:23 2014 (+0800)
;;           By: root
;;     Update #: 3
;; URL:
;; Doc URL:
;; Keywords:
;; Compatibility:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:











;; Add Some Load Path
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/solarized/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")
(add-to-list 'load-path "~/.emacs.d/plugins/expand-region/")
(add-to-list 'load-path "~/.emacs.d/plugins/evil")



;; Auto Complete
(require 'ac)

;; Smex, I use "C-e" instead of "M-x"
(require 'smex)
(global-set-key (kbd "C-e") 'smex)
(defadvice smex (around space-inserts-hyphen activate compile)
        (let ((ido-cannot-complete-command
               `(lambda ()
                  (interactive)
                  (if (string= " " (this-command-keys))
                      (insert ?-)
                    (funcall ,ido-cannot-complete-command)))))
          ad-do-it)) ;;; Emacs is so great! so is the cummunity.

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


;; BookMark
(when (require 'auto-mark nil t)
  (setq auto-mark-command-class-alist
        '((anything . anything)
          (goto-line . jump)
          (indent-for-tab-command . ignore)
          (undo . ignore)))
  (setq auto-mark-command-classifiers
        (list (lambda (command)
                (if (and (eq command 'self-insert-command)
                         (eq last-command-char ? ))
                    'ignore))))
  (global-auto-mark-mode 1))

(setq show-paren-priority 999)
(set-face-background 'region nil)


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


;; One Of The Chromium Plugins
(require 'edit-server)
(edit-server-start)

;; expand region
(require 'expand-region)
(global-set-key (kbd "C-t") 'er/expand-region)


;;
(require 'window-numbering)
(window-numbering-mode 1)


;;
(require 'flymake)

;;
(require 'line-comment-banner)


(require 'header2)
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-hook 'auto-make-header)

;; goto-last-change
(require 'goto-last-change) ;; seems great

;; typopunct
(require 'typopunct)
(typopunct-change-language 'english t)

(require 'undo-tree)


(require 'evil)
;;(evil-mode 1)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; gnat.el ends here
