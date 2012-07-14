;; get rid of startup screen
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;; color-theme
(add-to-list 'load-path (concat plugins-directory "color-theme-6.6.0"))
(require 'color-theme)
(color-theme-initialize)
(color-theme-deep-blue)

;; enable global font lock
(global-font-lock-mode t)

;; font
(when (eq system-type 'gnu/linux)
  (set-default-font "Monospace-12"))
(when (eq system-type 'windows-nt)
  (set-default-font "Courier New-12"))

;; browser
(when (eq system-type 'windows-nt)
  (setq browser-path "c:/Users/dzmitry_hancharou@epam.com/AppData/Local/Google/Chrome/Application/chrome.exe")
  (setq browse-url-browser-function 'browse-url-generic
              browse-url-generic-program browser-path))

;; encoding
(setq default-buffer-file-coding-system 'utf-8)
(setq default-input-method 'russian-computer)
(setq muse-html-encoding-default 'utf-8)
(setq muse-html-charset-default "utf-8")

;;
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

