(defun logit ()
  "Run logit for region in current buffer"
  (interactive)
  (let (start-pos end-pos start-line end-line command)
    (write-region (point-min) (point-max) "logit.tmp.js" )
    (setq start-pos (region-beginning))
    (setq end-pos (region-end))
    (goto-char start-pos)
    (setq start-line (line-number-at-pos))
    (goto-char end-pos)
    (setq end-line (line-number-at-pos))
    (erase-buffer)
    (insert (shell-command-to-string (concat "logit --start " (number-to-string start-line) " --end " (number-to-string end-line) " --stdout logit.tmp.js")))
    (delete-file "logit.tmp.js")
    (goto-char start-pos)
    ))

(defun logit-verbose ()
  "Run logit in verbose mode for region in current buffer"
  (interactive)
  (let (start-pos end-pos start-line end-line command)
    (write-region (point-min) (point-max) "logit.tmp.js" )
    (setq start-pos (region-beginning))
    (setq end-pos (region-end))
    (goto-char start-pos)
    (setq start-line (line-number-at-pos))
    (goto-char end-pos)
    (setq end-line (line-number-at-pos))
    (erase-buffer)
    (insert (shell-command-to-string (concat "logit --start " (number-to-string start-line) " --end " (number-to-string end-line) " --stdout --verbose logit.tmp.js")))
    (delete-file "logit.tmp.js")
    (goto-char start-pos)
    ))

(defun logit-remove ()
  "Run logit in verbose mode for region in current buffer"
  (interactive)
  (let (start-pos end-pos start-line end-line command)
    (write-region (point-min) (point-max) "logit.tmp.js" )
    (setq start-pos (region-beginning))
    (setq end-pos (region-end))
    (goto-char start-pos)
    (setq start-line (line-number-at-pos))
    (goto-char end-pos)
    (setq end-line (line-number-at-pos))
    (erase-buffer)
    (insert (shell-command-to-string (concat "logit --start " (number-to-string start-line) " --end " (number-to-string end-line) " --stdout --remove logit.tmp.js")))
    (delete-file "logit.tmp.js")
    (goto-char start-pos)
    ))
