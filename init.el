;; My custom message
(message "Hello Emacs!")

;; Remote connection for opening file using plink
(require 'tramp)	
(setq tramp-default-method "plink"
	  tramp-default-user "abhishek"
	  tramp-default-host "192.168.178.30")
	  
;; Custom theme for my configuration.

(add-to-list 'custom-theme-load-path
             (file-name-as-directory "~/.emacs.d/themes/"))	  
(load-theme 'cobalt t t)
(enable-theme 'cobalt)

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

;; change font size, interactively
(global-set-key (kbd "C->") 'my/zoom-in)
(global-set-key (kbd "C-<") 'my/zoom-out)

;; kill buffer

(defun my/my-kill ()
  "Kill the current buffer."
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key (kbd "<f5>") 'my/my-kill); kill buffer
