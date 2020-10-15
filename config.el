;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Adam Drew"
      user-mail-address "adam@parsethesource.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "fira code" :size 14 ))
(setq doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/mnt/d/Documents/Dropbox/.org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


(setq ispell-dictionary "american")
(with-eval-after-load 'flycheck
  (flycheck-add-mode 'javascript-eslint 'web-mode))

(defun drewit/indent-js (n)
  (interactive)
  (setq-local coffee-tab-width n) ; coffeescript
  (setq-local javascript-indent-level n) ; javascript-mode
  (setq-local js-indent-level n) ; js-mode
  (setq-local js2-basic-offset n)
  (setq-local javascript-indent-level n) ; javascript-mode
  (setq-local js-indent-level n) ; js-mode
  (setq-local js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level))
  )

(defun drewit/indent-js-default ()
    (drewit/indent-js 2))

(add-hook 'js2-mode-hook #'drewit/indent-js-default)


(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-<f3>") 'swiper-thing-at-point)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-c p SPC") 'counsel-projectile)

(defun drewit/setup-org ()
  (setq org-todo-keywords
	'((sequence "TODO(t)" "RSCH(r)" "BUGG(b)" "InPr" "PARK(p)" "|" "DONE(d)" "DLGT(D)"))
	)
  (setq org-todo-keyword-faces
	'(("RSCH" . "purple") ("DONE" . "deep sky blue") ("BUGG" . "red") ("DLGT" . "light sea green") ("InPr" . "green") ("PARK" . "tomato") ("TODO" . "deep pink"))
	)
  ;;capture todo items using C-c c t
  (setq org-capture-templates
	'(("t" "Task" entry (file+headline "/mnt/d/Documents/Dropbox/.org/lf-todo.org" "Tasks")
	   "* TODO  %?\nSCHEDULED: %t")
          ("s" "Sprint Item" entry (file+headline "/mnt/d/Documents/Dropbox/.org/lf-todo.org" "Sprint")
	   "* TODO  %?\nSCHEDULED: %t")
          ("S" "Support Item" entry (file+headline "/mnt/d/Documents/Dropbox/.org/lf-todo.org" "Support")
	   "* TODO  %?\nSCHEDULED: %t")
	  ("r" "Refactoring" entry (file+headline "/mnt/d/Documents/Dropbox/.org/refactorings.org" "Todo")
	   "* TODO %?"))))
(after! org
  (drewit/setup-org))

(defun vue-web-mode-hook ()
  "Hooks for Web mode."
  (interactive)
  (setq-local web-mode-markup-indent-offset 2)
  (setq-local web-mode-css-indent-offset 2)
  (setq-local web-mode-code-indent-offset 2)
  (setq-local web-mode-style-padding 0)
  (setq-local web-mode-script-padding 0)
  (setq-local web-mode-block-padding 0))

(add-hook 'web-mode-hook  (lambda ()
                            (vue-web-mode-hook)))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (gherkin-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(after! doom-themes
  (remove-hook 'doom-load-theme-hook #'doom-themes-neotree-config))
