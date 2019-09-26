(defun hello-world (name)
  "Hello world"
  (interactive "sEnter your name: ")
  (message "Hi, %s" name))

(defun lein-eastwood ()
  "Run lein eastwood for the namespace in the active buffer"
  (interactive)
  (goto-line 1)
  (let ((project-dir (projectile-project-root))
        (first-line-in-buffer (buffer-substring-no-properties
                               (line-beginning-position)
                               (line-end-position))))
    (string-match "(ns \\([a-zA-Z\.-]*\\)" first-line-in-buffer)
    (async-shell-command
     (format "cd %s && lein eastwood \"{:namespaces [%s]}\"" project-dir (match-string 1 first-line-in-buffer)))))

(defun lein-test ()
  "Run lein test in the current project root"
  (interactive
   (async-shell-command (format "cd %s && lein test" (projectile-project-root)))))

(provide 'extras)
