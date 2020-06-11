;; My custom message
(message "Hello Emacs!")

;; This is to open a remote file using plink on windows machine.
;; use C x C f, then /plink:: to open remote location. It will ask the password.
;; Remote connection for opening file using plink
(require 'tramp)	
(setq tramp-default-method "plink"
	  tramp-default-user "abhishek"
	  tramp-default-host "192.168.178.30")
	  
;; Custom theme for my configuration. This is needed only to load custom theme from a file.
;; In the emacs version 25, It can be set from Options -> Customize emacs -> Custom Theme

;;(add-to-list 'custom-theme-load-path
;;             (file-name-as-directory "~/.emacs.d/themes/"))	  
;;(load-theme 'cobalt t t)
;;(enable-theme 'cobalt)

;; This is my favorite zoom in/out using C + <shift> + >/< command.
;; http://blog.vivekhaldar.com/post/4809065853/dotemacs-extract-interactively-change-font-size

(defun my/zoom-in ()
  "Increase font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (+ (face-attribute 'default :height)
                         10)))

(defun my/zoom-out ()
  "Decrease font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (- (face-attribute 'default :height)
                         10)))

(global-set-key (kbd "C->") 'my/zoom-in)
(global-set-key (kbd "C-<") 'my/zoom-out)

;; kill current buffer using single key. Here it is bound to f5.

(defun my/my-kill ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key (kbd "<f5>") 'my/my-kill); kill buffer

;; All the files opened in emacs keep '#file-name#' creates a file in the directory
;; where the file is stored. A file file-name~ is created as backup file.
;; These default setting can be overriden using below.
;; https://stackoverflow.com/questions/12031830/what-are-file-and-file-and-how-can-i-get-rid-of-them
;; save no-littering.el from https://github.com/emacscollective/no-littering to "~/.emacs.d/lisp/" 
;; directory

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'no-littering)
(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))

;; remove tool bar from the screen
(tool-bar-mode -1) 

;; full screen on initilization
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

;; split window vertically on initialization

(split-window-horizontally)
