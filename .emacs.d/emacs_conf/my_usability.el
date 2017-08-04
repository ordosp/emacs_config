;;
;; usability
;;

(set-default 'cursor-type 'hbar)		;set cursor as "_"
(blink-cursor-mode -1)					;disable blink
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

(require 'popup-switcher)				;activate module "popup-switcher"
(setq psw-in-window-center t)			;show on screen center
(global-set-key [f2] 'psw-switch-buffer) ;bind to "F2"

(require 'ido)							;activate module "ido"
(ido-mode t)							;enable "ido"

(require 'imenu)						;activate module "imenu"
(setq imenu-auto-rescan t)				;set auto-rescan
(setq imenu-use-popup-menu t)			;use popup
(global-set-key (kbd "<f6>") 'imenu)	;bind to "F6"

;; set fonts
;; (defvar vde/fixed-font-family
;;   (cond ((x-list-fonts "Ubuntu Mono") "Ubuntu Mono-14")
;;         ((x-list-fonts "Hasklig") "Hasklig-14")
;;         ((x-list-fonts "Consolas") "Consolas-14"))
;;   "Fixed width font based on what is install")

;; (set-frame-font vde/fixed-font-family)
;; (set-face-attribute 'default nil :font vde/fixed-font-family :height 110)
;; (set-face-font 'default vde/fixed-font-family)

