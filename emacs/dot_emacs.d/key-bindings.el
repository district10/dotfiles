
;;---------------------------------------------------
;; make emacs easier to use, for dvpe keyboard layout
;;      http://ergoemacs.org/emacs/command-frequency.html
;;---------------------------------------------------

;; Unset Some Keys First
(dolist (key '("\C-i"))
        (global-unset-key key))


;;(global-unset-key (kbd "C-o"))

;; navigation
;;         next/prev line, begin/end of line, etc, already
;;         achieved by <neo-extended dvpe keyboard layout>  
(global-set-key (kbd "M-.") 'backward-paragraph)
(global-set-key (kbd "M-e") 'forward-paragraph)
(global-set-key (kbd "M-o") 'backward-sentence)
(global-set-key (kbd "M-i") 'forward-sentence)

; More
(global-set-key (kbd "C-t") 'set-mark-command)
(global-set-key (kbd "C-r") 'backward-word)
(global-set-key (kbd "C-d") 'kill-word)
(global-set-key (kbd "\C-x\C-b") 'buffer-menu-other-window)  ;;  No need to  "C-o" to switch anymore

(global-set-key (kbd "\C-c\C-gl") 'goto-line)
(global-set-key (kbd "\C-c\C-gc") 'goto-char)



;; More Customize with More-Funcs
(require 'more-funcs)
(global-set-key (kbd "C-s") 'toggle-letter-case) ;; case-conversion
(global-set-key (kbd "C-c d") 'insert-date) ;; "C-c d", "C-u C-c d" and "C-u C-u C-c d"
(define-key global-map [f12] 'line-copy-char) ;; Really fantastic!!! Shadow Copy



(provide 'key-bindings)







;; ##################### Trash Can ##################################### 
;; (define-key isearch-mode-map [(meta z)] 'zap-to-isearch))
;; (global-set-key (kbd "C-c C-d") 'zap-to-isearch) ;; Then We Bind This 
