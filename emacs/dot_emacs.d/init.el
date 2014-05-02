;;; init.el --- 
;; 
;; Filename: init.el
;; Description: 
;; Author: root
;; Maintainer: 
;; Created: Sat Apr 26 10:24:44 2014 (+0800)
;; Version: 
;; Package-Requires: ()
;; Last-Updated: 
;;           By: 
;;     Update #: 0
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

(add-to-list 'load-path "~/.emacs.d/data/")
(add-to-list 'load-path "~/.emacs.d/data/gat-tables/")

(add-to-list 'load-path "~/.emacs.d/themes/")
(add-to-list 'load-path "~/.emacs.d/themes/solarized/")

(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "~/.emacs.d/plugins/expand-region/")
(add-to-list 'load-path "~/.emacs.d/plugins/evil/")
(add-to-list 'load-path "~/.emacs.d/plugins/web-mode/")
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet/")


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

;; Misc
(require 'page-break-lines)
(turn-on-page-break-lines-mode)


;; One Of The Best Chromium Plugins
(require 'edit-server)
(edit-server-start)

;; expand region
(require 'expand-region)
(global-set-key (kbd "C-t") 'er/expand-region)

;; 
(require 'flymake)
(autoload 'flymake-find-file-hook "flymake" "" t)
(add-hook 'find-file-hook 'flymake-find-file-hook)
(setq flymake-gui-warnings-enabled nil)
(setq flymake-log-level 0)

;; My Emacs Input Method
(require 'gat-eim)

;;
(require 'line-comment-banner)

(require 'header2)
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-hook 'auto-make-header)

;; Goto-Last-Change
(require 'goto-last-change) ;; seems great

;; Typopunct
(require 'typopunct)
(typopunct-change-language 'english t)

;; Undo-Tree, Used In Evil-Mode
(require 'undo-tree)

;; Evil-Mode, Fantastic~
(require 'evil)
(evil-mode 1)
;;(setq evil-default-state 'emacs) 
;;(define-key evil-emacs-state-map (kbd "C-t") 'evil-execute-in-normal-state) 

;; Web-mode    http://web-mode.org/
;; (require 'web-mode)
;; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;; (setq web-mode-engines-alist
;;       '(("php"    . "\\.phtml\\'")
;;         ("blade"  . "\\.blade\\."))
;; )


;; Calender + and Diary entries notification
;;(require 'calendar+)
;;(require 'appt)
;;(setq appt-message-warning-time 0)      ; 0 minute time before warning
;;(setq diary-file "~/diary")             ; diary file




;;========================================================
;; Set Variables 
;;========================================================

;; Keep A List Of Recently Opened Files
(recentf-mode 1)

;; Auto Generate Right Paren, Bracket, Brace
(setq electric-pair-pairs '(
                            (?\` . ?\`)
                            (?\中 . ?\人)
                            ))
(electric-pair-mode 1) 

;; Tabs Are Evil
(setq-default indent-tabs-mode nil) 

;; Turn On Paren Match Highlighting
(show-paren-mode 1)
(setq show-paren-style 'expression) ; highlight entire bracket expression

;; Highlight Text Selection
(transient-mark-mode 1) 

;; Delete Seleted Text When Typing
;;(delete-selection-mode 1) 

;; Turn On Syntax Coloring
(global-font-lock-mode 1) 

;; Show Colomn Number
(column-number-mode 1)

;; Use t For True, nil For False, This is default with emacs 23. 
;; (setq line-move-visual t) 

;; 1 FOR ON, 0 FOR OFF.
(global-visual-line-mode 1) 

;; turn on highlighting current line 
;; (global-hl-line-mode 1) , terrible







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
