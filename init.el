;; Settings for home machine
(when (string-equal "dimas" (user-login-name))
  (setq dropbox-directory "~/notes/Dropbox/")
  (setq im-at-home t))
;; Setting for work machine
(when (string-equal "Dzmitry_Hancharou" (user-login-name))
  (setq dropbox-directory "d:/Home/dropbox/")
  (setq im-at-work t))

(setq plugins-directory (concat dropbox-directory "emacs/plugins/"))

(load "config/custom.el")
(load "config/org.el")
