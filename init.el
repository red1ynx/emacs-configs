;; Settings for home machine (ubuntu)
(when (and (string-equal "dimas" (user-login-name)) (eq system-type 'gnu/linux))
  (setq dropbox-directory "~/notes/Dropbox/")
  (setq im-at-home t))
;; Settings for home machine (win7)
(when (and (string-equal "dimas" (user-login-name)) (eq system-type 'windows-nt))
  (setq dropbox-directory "d:/trash/Dropbox/"))
;; Settings for work machine
(when (string-equal "Dzmitry_Hancharou" (user-login-name))
  (setq dropbox-directory "d:/Home/dropbox/")
  (setq im-at-work t))

(setq plugins-directory (concat dropbox-directory "emacs/plugins/"))

(load "config/custom.el")
(load "config/org.el")
