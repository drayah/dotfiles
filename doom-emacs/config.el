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

(load-theme 'doom-solarized-light t)
(doom-themes-treemacs-config)
(doom-themes-org-config)

;; fonts
(setq doom-font (font-spec :family "Hack" :size 14)
      doom-big-font (font-spec :family "Hack" :size 16))

;; indent
(setq-default evil-shift-width 2
              tab-width 2)

;; relative line numbers
(setq display-line-numbers-type 'relative)

;; prettify symbols
(global-prettify-symbols-mode 1)

;; custom bindings
(global-set-key (kbd "C-c r") 'counsel-projectile-ag)
(setq ns-right-alternate-modifier 'none)

;; indent guides
(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-responsive "top")

;; highlight-thing
(add-hook 'prog-mode-hook 'highlight-thing-mode)

;; highlight face attributes - doom-vibrant
;(after! highlight-thing
;  (set-face-attribute 'highlight-thing nil :foreground "#ca73d6")
;  (set-face-attribute 'highlight-thing nil :background "#583d5b"))

;; highlight face attributes - doom-solarized-light
(after! highlight-thing
  (set-face-attribute 'highlight-thing nil :foreground "#897105")
  (set-face-attribute 'highlight-thing nil :background "#f7e9ad"))

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
      (defstep 'defun)
      (against-background 'defun)
      (quick-check 'defun)
      (for-all 'defun)
      (provided 0))))

;; lsp-mode for clojure
(use-package lsp-mode
  :commands lsp
  :config
  (add-to-list 'lsp-language-id-configuration '(clojure-mode . "clojure-mode"))
  :init
  (setq lsp-enable-indentation nil)
  (add-hook 'clojure-mode-hook #'lsp)
  (add-hook 'clojurec-mode-hook #'lsp)
  (add-hook 'clojurescript-mode-hook #'lsp))

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package company-lsp
  :commands company-lsp)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(setq parinfer-extensions '(defaults
                            smart-tab
                            smart-yank
                            ;pretty-parens
                            evil))
(setq parinfer-auto-switch-indent-mode t)

;; cider
(setq cider-show-error-buffer nil)

;; web
(after! web-mode
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
