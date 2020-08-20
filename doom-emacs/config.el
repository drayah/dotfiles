;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; macos titlebar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . light)) ;; or dark - depending on your theme
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; personal helper functions
(require 'extras "~/.doom.d/extras.el")

(setq doom-theme 'humanoid-light)
(doom-themes-treemacs-config)
(doom-themes-org-config)

;; fonts
(setq doom-font (font-spec :family "SFMono Nerd Font" :size 14)
      doom-big-font (font-spec :family "SFMono Nerd Font" :size 16))

;; indent
(setq-default evil-shift-width 2
              tab-width 2)

;; relative line numbers
(setq display-line-numbers-type 'relative)

;; don't confirm on exit
(setq confirm-kill-emacs nil)

;; don't interpret right option key
(setq ns-right-alternate-modifier 'none)

;; prettify symbols
(global-prettify-symbols-mode 1)

;; add modes for other extensions
(add-to-list 'auto-mode-alist '("\\.adoc\\'" . adoc-mode))
(add-to-list 'auto-mode-alist '("\\.repl\\'" . clojure-mode))

;; clojure
(use-package! clojure-mode
  :config
  (progn
    (define-clojure-indent
      (fact 'defun)
      (facts 'defun)
      (fact-group 'defun)
      (silent-fact 'defun)
      (future-fact 'defun)
      (tabular 'defun)
      (testing 'defun)
      (defstep 'defun)
      (against-background 'defun)
      (quick-check 'defun)
      (for-all 'defun)
      (provided 0))))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(setq parinfer-extensions '(defaults
                            smart-tab
                            smart-yank
                            paredit
                            pretty-parens
                            evil))

;; cider
(setq cider-show-error-buffer nil)

;; web
(after! web-mode
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

;; plantuml
(after! plantuml-mode
  (setq plantuml-default-exec-mode 'jar)
  (setq plantuml-output-type "png"))
