;; Settings for home machine
(when (string-equal "red1ynx" (system-name))
  (setq dropbox-directory "~/notes/Dropbox/")
  (setq im-at-home t))
;; TODO Settings for working machine

(setq plugins-directory (concat dropbox-directory "emacs/plugins/"))

(load "config/custom.el")
(load "config/org.el")
