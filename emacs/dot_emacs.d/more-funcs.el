;; ############################################################################
;; ## MORE FUNCTIONS 
;; ############################################################################

(defun toggle-letter-case ()
  "Toggle the letter case of current word or text selection.
Toggles between: “all lower”, “Init Caps”, “ALL CAPS”."
  (interactive)
  (let (p1 p2 (deactivate-mark nil) (case-fold-search nil))
    (if (region-active-p)
        (setq p1 (region-beginning) p2 (region-end))
      (let ((bds (bounds-of-thing-at-point 'word) ) )
        (setq p1 (car bds) p2 (cdr bds)) ) )

    (when (not (eq last-command this-command))
      (save-excursion
        (goto-char p1)
        (cond
         ((looking-at "[[:lower:]][[:lower:]]") (put this-command 'state "all lower"))
         ((looking-at "[[:upper:]][[:upper:]]") (put this-command 'state "all caps") )
         ((looking-at "[[:upper:]][[:lower:]]") (put this-command 'state "init caps") )
         ((looking-at "[[:lower:]]") (put this-command 'state "all lower"))
         ((looking-at "[[:upper:]]") (put this-command 'state "all caps") )
         (t (put this-command 'state "all lower") ) ) ) )

    (cond
     ((string= "all lower" (get this-command 'state))
      (upcase-initials-region p1 p2) (put this-command 'state "init caps"))
     ((string= "init caps" (get this-command 'state))
      (upcase-region p1 p2) (put this-command 'state "all caps"))
     ((string= "all caps" (get this-command 'state))
      (downcase-region p1 p2) (put this-command 'state "all lower")) )
    ))
    

;; ############################################################################
 (defun insert-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
                   ((not prefix) "%m.%d.%Y")
                   ((equal prefix '(4)) "%Y-%m-%d")
                   ((equal prefix '(16)) "%A, %B %d, %Y")))
          (system-time-locale "en_US"))
      (insert (format-time-string format))))
    
;; ############################################################################
 (require 'calendar)
  
  (defun insdate-insert-any-date (date)
    "Insert DATE using the current locale."
    (interactive (list (calendar-read-date)))
    (insert (calendar-date-string date)))
  
  (defun insdate-insert-date-from (&optional days)
    "Insert date that is DAYS from current."
    (interactive "p*")
    (insert
     (calendar-date-string
      (calendar-gregorian-from-absolute
       (+ (calendar-absolute-from-gregorian (calendar-current-date))
	  days)))))



;; ############################################################################
(defun line-copy-char (&optional b)
      "Copy a character exactly below/above the point
       to the current point of the cursor (default is above)."
       (interactive "p")
         (let (p col s)
           (setq p (point))
           (setq col (current-column))
           (forward-line (if b -1 1))
           (move-to-column col)
           (setq s (buffer-substring (point) (+ (point) 1)))
           (goto-char p)
           (insert s)))


;; ############################################################################
(defun zap-to-isearch (rbeg rend)
    "Kill the region between the mark and the closest portion of
  the isearch match string. The behaviour is meant to be analogous
  to zap-to-char; let's call it zap-to-isearch. The deleted region
  does not include the isearch word. This is meant to be bound only
  in isearch mode.
  The point of this function is that oftentimes you want to delete
  some portion of text, one end of which happens to be an active
  isearch word. The observation to make is that if you use isearch
  a lot to move the cursor around (as you should, it is much more
  efficient than using the arrows), it happens a lot that you could
  just delete the active region between the mark and the point, not
  include the isearch word."
    (interactive "r")
    (when (not mark-active)
      (error "Mark is not active"))
    (let* ((isearch-bounds (list isearch-other-end (point)))
           (ismin (apply 'min isearch-bounds))
           (ismax (apply 'max isearch-bounds))
           )
      (if (< (mark) ismin)
          (kill-region (mark) ismin)
        (if (> (mark) ismax)
            (kill-region ismax (mark))
          (error "Internal error in isearch kill function.")))
      (isearch-exit)
      ))



;; ############################################################################

(defun gnat ()
  (interactive)
  (insert "{}")
  (backward-char 1))


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


(provide 'more-funcs)
