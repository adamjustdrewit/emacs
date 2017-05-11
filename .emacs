(package-initialize)

(require 'org)
(require 'ob-tangle)

(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))
 (org-babel-load-file (expand-file-name "loader.org" init-dir))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(electric-pair-mode t)
 '(package-selected-packages
   (quote
    (zone-select zone-rainbow zone-nyan cider org-jira org-bullets all-the-icons-dired all-the-icons auto-complete projectile neotree dashboard spaceline spacemacs-theme ace-window which-key sublimity counsel swiper bm)))
 '(safe-local-variable-values
   (quote
    ((org-todo-keyword-faces
      ("TODO" . "tomato")
      ("STARTED" . "deep sky blue")
      ("WAITING" . "linen")
      ("DONE" . "dark sea green")
      ("CANCELED" . "hot pink")
      ("DELEGATED" . "DarkOrchid1"))
     (org-todo-keyword-faces
      ("TODO" . "tomato")
      ("STARTED" . "royal blue")
      ("WAITING" . "linen")
      ("DONE" . "dark sea green")
      ("CANCELED" . "hot pink")
      ("DELEGATED" . "DarkOrchid1"))
     (org-todo-keyword-faces
      ("TODO" . "tomato")
      ("STARTED" . "dark orange")
      ("WAITING" . "linen")
      ("DONE" . "dark sea green")
      ("CANCELED" . "hot pink")
      ("DELEGATED" . "DarkOrchid1"))
     (org-todo-keyword-faces
      ("TODO" . "tomato")
      ("STARTED" . "orange1")
      ("WAITING" . "orange")
      ("DONE" . "dark sea green")
      ("CANCELED" . "hot pink")
      ("DELEGATED" . DarkOrchid1))
     (org-todo-keyword-faces
      ("TODO" . "red")
      ("STARTED" . "green")
      ("WAITING" . "orange")
      ("DONE" . "cyan")
      ("CANCELED" . "hot pink")))))
 '(which-key-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :foreground "#b2b2b2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "outline" :family "Source Code Pro")))))
