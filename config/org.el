(add-to-list 'load-path (concat plugins-directory "org-7.8.02/lisp"))

(require 'org-install)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)

(setq org-directory (concat dropbox-directory "notes/org/"))
(setq org-agenda-files (list (concat org-directory "work.org")
			     (concat org-directory "me.org")
			     (concat org-directory "family.org")
			     (concat org-directory "contacts.org")
			     (concat org-directory "gibberish.org")))
							 
(setq calendar-week-start-day 1)