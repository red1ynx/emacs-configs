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
			     (concat org-directory "gibberish.org")
			     (concat org-directory "holidays.org")))

;;; Custom keybindings
(global-set-key (kbd "<f12>") 'org-agenda-list)

;;; Tasks and States
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "STARTED(s)" "|" "DONE(d!/!)")
	      (sequence "WAITING(w@/@)" "HOLD(h@/|)" "|" "CANCELLED(c@/!)"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("STARTED" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

;; Fast selection by C-c C-t KEY
;(setq org-use-fast-todo-selection t)

;; Triggers
(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("WAITING" ("WAITING" . t))
              ("HOLD" ("WAITING" . t) ("HOLD" . t))
              (done ("WAITING") ("HOLD"))
              ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
              ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
              ("STARTED" ("WAITING") ("CANCELLED") ("HOLD"))
              ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))

;; Monday is the first	 
(setq calendar-week-start-day 1)

;;; Clocking
;; Resume clocking tasks when emacs is restarted
(org-clock-persistence-insinuate)

;;; Tracking


;;; Make sure that timestamps appear in English
(setq system-time-locale "C")

;;; Mobile org
(setq org-mobile-directory (concat dropbox-directory "notes/mobileorg"))
(setq org-mobile-inbox-for-pull (concat dropbox-directory "notes/org/inbox.org"))
(add-hook 'after-init-hook 'org-mobile-pull)
(add-hook 'kill-emacs-hook 'org-mobile-push)

;;; Custom agendas
(setq org-agenda-custom-commands
      '(("b" "Must read" tags "read")
	("c" "Challenge for 2014" tags "2014")))
