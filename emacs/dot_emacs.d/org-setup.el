;;; org-setup.el --- 
;; 
;; Filename: org-setup.el
;; Description: 
;; Author: root
;; Maintainer: 
;; Created: Fri May  9 10:46:10 2014 (+0800)
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



; Good, extend TODO keywords
;;(setq org-todo-keywords
;;       '((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
;; good, assign works
;;(setq org-todo-keywords '((type "Fred" "Sara" "Lucy" "|" "DONE")))
;; good
;; (setq org-todo-keywords                                         ;;
;;            '((sequence "TODO" "|" "DONE")                       ;;
;;              (sequence "REPORT" "BUG" "KNOWNCAUSE" "|" "FIXED") ;;
;;              (sequence "|" "CANCELED")))                        ;;
;; 



(setq org-todo-keywords
           '((sequence "TODO(t)" "|" "DONE(d)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
             (sequence "|" "CANCELED(c)")))

(setq org-todo-keyword-faces
           '(("TODO" . org-warning) ("STARTED" . "yellow")
             ("HOMEWORK" . (:foreground "violet" :weight bold)) ;; cool~
             ("CANCELED" . (:foreground "blue" :weight bold))))

;; save the clock history across Emacs sessions
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(setq org-default-notes-file "/root/Desktop/emacs/data/org/notes.org")
(define-key global-map "\C-cc" 'org-capture)



(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "/root/Desktop/emacs/data/org/gtd.org" "Tasks")
             "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "/root/Desktop/emacs/data/org/journal.org")
             "* %?\nEntered on %U\n  %i\n  %a")))


(setq org-feed-alist
          '(("Slashdot"
              "http://rss.slashdot.org/Slashdot/slashdot"
              "/root/Desktop/emacs/data/org/feeds.org" "Slashdot Entries")))










(provide 'org-setup)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; org-setup.el ends here
