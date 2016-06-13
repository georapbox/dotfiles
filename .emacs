;; MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Scroll 1 line at a time
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))

;; Truncate long lines
(setq-default truncate-lines t)

;; indentation to  4 spaces
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)
(setq sgml-basic-offset 4)

;; stop creating ~ files
(setq make-backup-files nil)

;; path for custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; display line numbers
(global-linum-mode 1)

;; maximized mode on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; highlight matching parenthesis, brackets
(show-paren-mode 1)

;; set cursor to bar
(setq-default cursor-type 'bar)

;; whitespace-mode
(setq whitespace-display-mappings
       ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [182 10]) ; 10 LINE FEED
        (tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))

(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

;; emmet-mode
(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

;; auto-complete-mode
(require 'auto-complete)
(global-auto-complete-mode t)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
