(add-to-list 'load-path "~/.emacs.d/data/gat-tables/")

(require 'quail)
(require 'cl)

(defun gat ()
  "toggle between Gat and no input method"
  (interactive)
  (progn
    ;; Define Package
    (quail-define-package
     "gat-input-method" "Chinese" "Gat_Zh_" t
     "Gnat's Personal Input Method" 
     nil t nil nil nil nil nil nil nil nil t)

    ;; Load Char Tables
    (load "table-0001-1000")
    ;; (require 'table-0001-1000) ;; Most Common Zh Chars

    (if (string= current-input-method "gat-input-method")
	(set-input-method nil)
      (set-input-method "gat-input-method"))))

(provide 'gat-eim)
