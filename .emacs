(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)


;;
;; theme
;;
(load-theme 'leuven t) ;set theme "leuven"

;;
;; usability
;;

(set-default 'cursor-type 'hbar)		;set cursor as "_"
(blink-cursor-mode t)					;enable blink
(fset 'yes-or-no-p 'y-or-n-p)			;yes-or-no-p to y-or-n-p
(tool-bar-mode -1)						;disable toolbar
(menu-bar-mode -1)						;disable menu
(scroll-bar-mode -1)					;disable scrollbar
(windmove-default-keybindings 'meta)	;navigation by ALT + arrows
(setq default-tab-width 4)				;set TAB = 4 spaces
(setq scroll-step 1)					;set smooth scrolling
(setq make-backup-files nil)			;disable backup
(setq auto-save-default nil)			;disable autosave
(setq auto-save-list-file-name nil)		;disable autosave file
(setq display-time-24hr-format t)		;set time format to "24 hours"
(setq display-time-24hr-format t)		;show file size in percents
(setq frame-title-format "Emacs: %b")	;show file name in header
(setq inhibit-splash-screen t)			;disable splash screen
(setq inhibit-startup-message t)		;disable startup message

(require 'linum)						;activate module "linum"
(line-number-mode t)					;show line number
(global-linum-mode t)					;set global-linum-mode
(column-number-mode t)					;show column number
(setq linum-format " %d")				;set format

(require 'ido)							;activate module "ido"
(ido-mode t)							;enable "ido"

(set-face-attribute 'default nil :height 100) ;set font size

;; sr-speedbar
(require 'sr-speedbar)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)


;; python
(setq-default indent-tabs-mode nil)
(setq-default python-basic-offset 4)


;; yasnippet
(add-to-list 'load-path
                "~/.emacs.d/elpa/yansippetyasnippet-20180102.1824/snippets")
(require 'yasnippet)
(yas-global-mode 1)

;; bs - buffer show
(require 'bs)
(setq bs-configurations
      '(("files" "^\\*scratch\\*" nil nil bs-visits-non-file bs-sort-buffer-interns-are-last)))
(global-set-key (kbd "<f2>") 'bs-show)


;; company - autocomplete
(require 'company)
