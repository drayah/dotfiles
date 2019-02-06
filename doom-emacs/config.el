;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; macos titlebar
(add-to-list 'default-frame-alist
             '(ns-transparent-titlebar . t))

(add-to-list 'default-frame-alist
             '(ns-appearance . dark)) ;; or dark - depending on your theme

;; color theme
(add-to-list 'load-path "~/.emacs.d/emacs-doom-themes")
(require 'doom-themes)

(load-theme 'doom-one t)
(doom-themes-treemacs-config)
(doom-themes-org-config)

;; fonts
(setq doom-font (font-spec :family "Hack" :size 14)
      doom-big-font (font-spec :family "Hack" :size 16))

;; relative line numbers
(setq display-line-numbers-type 'relative)

;; prettify symbols
(global-prettify-symbols-mode 1)

;; custom bindings
(global-set-key (kbd "C-c r") 'helm-projectile-ag)

;; indent guides
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-responsive "top")

;; highlight
(add-hook 'prog-mode-hook 'highlight-thing-mode)
(custom-set-faces `(highlight-thing ((t (:foreground "#ca73d6" :background "#583d5b")))))

;; helm-fuzzier
(require 'helm-fuzzier)
(helm-fuzzier-mode 1)

;; clojure
(use-package clojure-mode
  :config
  (progn
    (define-clojure-indent
      (fact 'defun)
      (facts 'defun)
      (fact-group 'defun)
      (silent-fact 'defun)
      (future-fact 'defun)
      (tabular 'defun)
      (against-background 'defun)
      (provided 0))))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(setq parinfer-extensions '(defaults
                            smart-tab
                            smart-yank
                            ;pretty-parens
                            evil))
(setq parinfer-auto-switch-indent-mode t)

;; cider
(setq cider-show-error-buffer nil)
