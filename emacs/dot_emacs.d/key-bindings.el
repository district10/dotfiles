;;----------------------------------------------------------------
;; Make Emacs Easier to use, for neo-extended dvpe keyboard layout
;;      gnat_tang@yeah.net 
;;      http://ergoemacs.org/emacs/command-frequency.html
;;----------------------------------------------------------------

;; Load More Funcs
;; ===============
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'more-funcs)
(require 'switch-window)

;;(load 'symbols)

;; Navigation
;; ==========
(global-set-key (kbd "M-.") 'backward-paragraph)
(global-set-key (kbd "M-e") 'forward-paragraph)
(global-set-key (kbd "M-o") 'backward-sentence)
(global-set-key (kbd "M-i") 'forward-sentence)


;; More
;; ====
(global-set-key (kbd "C-s") 'toggle-letter-case) ;; case-conversion(word), region see F8
(global-set-key (kbd "C-=") 'set-mark-command) ;; C-t -> expand-region
(global-set-key (kbd "C-r") 'backward-word) ;; Move Left One Word
(global-set-key (kbd "C-d") 'kill-word) ;; Then Delete It
(global-set-key (kbd "C-b") 'undo)
(global-set-key (kbd "C-v") 'query-replace)
(global-set-key (kbd "M-v") 'query-replace-regexp)

(global-set-key (kbd "C-c d") 'insert-date) ;; "C-c d", "C-u C-c d" and "C-u C-u C-c d"
(global-set-key (kbd "C-x o") 'switch-window)

(global-set-key (kbd "\C-x\C-b") 'buffer-menu-other-window)  ;;  No need to "C-o" to switch anymore
(global-set-key (kbd "\C-c\C-gl") 'goto-line)
(global-set-key (kbd "\C-c\C-gc") 'goto-char)

;; Function keys
;; =============
;;(global-set-key (kbd "<f1>") 'smex) ;; Don't Map it!!!
;;(global-set-key (kbd "<f2>") 'smex) ;; Don't Map it!!!
;;(global-set-key (kbd "<f3>") 'kmacro-start-macro-or-insert-counter) ;; Default
;;(global-set-key (kbd "<f4>") 'kmacro-macro-end-or-call-macro) ;; Default
(global-set-key (kbd "<f5>") 'kmacro-end-and-call-macro) 
;;(global-set-key (kbd "<f6>") 'smex)
(global-set-key (kbd "<f7>") 'recentf-open-files)
(global-set-key (kbd "<f8> c") 'capitalize-region)
(global-set-key (kbd "<f8> d") 'downcase-region)
(global-set-key (kbd "<f8> u") 'upcase-region)
(global-set-key (kbd "<f9>") 'gnat)
;;(global-set-key (kbd "<f10>") 'smex) ;; Don't Map it!!!
;;(global-set-key (kbd "<f11>") 'smex) ;; Don't Map it!!!
(global-set-key (kbd "<f12>") 'line-copy-char) ;; Really fantastic!!! Shadow Copy


;; More Keys
;; =========
;;(global-set-key (kbd "<apps>") 'execute-extended-command)
;;(global-set-key (kbd "<apps>") 'smex) ; Microsoft Windows, menu/apps key
;;(global-set-key (kbd "<menu>") 'smex) ; Linux, menu/apps key


;; For org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)   
(global-set-key "\C-ca" 'org-agenda)    
(global-set-key "\C-cb" 'org-iswitchb)  
                                         


















(provide 'key-bindings)






;; ##################### Trash Can ##################################### 
;; (define-key isearch-mode-map [(meta z)] 'zap-to-isearch))
;; (global-set-key (kbd "C-c C-d") 'zap-to-isearch) ;; Then We Bind this 

;; Unset Some Keys First
;;(dolist (key '("\C-i"))
;;        (global-unset-key key))
;;(global-unset-key (kbd "C-o"))

;;(global-unset-key (kbd "C-b"))
;;(global-set-key (kbd "C-b") nil)
