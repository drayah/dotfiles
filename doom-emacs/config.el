;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;; macos titlebar
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . light)) ;; or dark - depending on your theme
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; color theme
(add-to-list 'load-path "~/.emacs.d/emacs-doom-themes")
(require 'doom-themes)

;; personal helper functions
(require 'extras "~/.doom.d/extras.el")

(load-theme 'doom-one-light t)
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

;; highlight-thing
(add-hook 'prog-mode-hook 'highlight-thing-mode)

;; highlight-thing colors (foreground background)
(setq highlight-thing-colors
  '(("#ca73d6" "#583d5b")   ;;vibrant
    ("#a9d1cc" "#36635d")   ;;sourcerer
    ("#897105" "#f7e9ad"))) ;;solarized

(setq highlight-thing-active-color 2)

(after! highlight-thing
  (let* ((color (nth highlight-thing-active-color highlight-thing-colors))
         (foreground (car color))
         (background (car (last color))))
    (set-face-attribute 'highlight-thing nil :foreground foreground)
    (set-face-attribute 'highlight-thing nil :background background)))

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

;; lsp
(after! lsp-mode
  (flycheck-add-next-checker 'lsp 'clj-kondo-clj))

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
