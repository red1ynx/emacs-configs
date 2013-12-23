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
;; workstation (win7-notebook)
(when (string-equal "goncharov" (user-login-name))
  (setq dropbox-directory "C:/home/Dropbox/"))

;;; Emacs.d location
(setq user-emacs-directory (concat dropbox-directory "emacs/.emacs.d/"))

;;; Packaging
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;;; Customization
(load "config/custom.el")
(load "config/org.el")
