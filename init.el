;;; Dropbox directory location
;; home (ubuntu)
(when (and (string-equal "dimas" (user-login-name)) (eq system-type 'gnu/linux))
  (setq dropbox-directory "~/notes/Dropbox/"))
;; home (win7)
(when (and (string-equal "dimas" (user-login-name)) (eq system-type 'windows-nt))
  (setq dropbox-directory "D:/home/Dropbox/"))
;; workstation (win7)
(when (string-equal "Dzmitry_Hancharou" (user-login-name))
  (setq dropbox-directory "D:/Home/Dropbox/"))

;;; Emacs.d location
(setq user-emacs-directory (concat dropbox-directory "emacs/.emacs.d/"))

;;; Packaging
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;; Customization
(load "config/custom.el")
(load "config/org.el")
