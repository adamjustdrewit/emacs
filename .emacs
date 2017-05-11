(package-initialize)

(require 'org)
(require 'ob-tangle)

;; Load most things
(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))
(org-babel-load-file (expand-file-name "loader.org" init-dir))

;; load anything that shouldn't be put in git
(setq nonpub-dir (file-name-directory (or load-file-name (buffer-file-name))))
 (org-babel-load-file (expand-file-name "non-pub.org" nonpub-dir))
