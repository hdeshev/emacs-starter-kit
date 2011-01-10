;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq-default fill-column 100)
(setq-default lua-indent-level 4)

(add-to-list 'load-path "~/.emacs.d/hdeshev/yasnippet")
(require 'yasnippet-bundle)

(add-to-list 'load-path "~/.emacs.d/hdeshev/scala")
(require 'scala-mode-auto)

(add-to-list 'load-path "~/.emacs.d/hdeshev/php-mode")
(require 'php-mode)

;(setq yas/my-directory "D:/utils/emacs/scala/contrib/yasnippet/snippets")
;(yas/load-directory yas/my-directory)

(add-hook 'scala-mode-hook
	  '(lambda ()
	     (yas/minor-mode-on)
	     ))


;; Load the ensime lisp code...
(add-to-list 'load-path "~/.emacs.d/hdeshev/ensime/elisp/")
(require 'ensime)

(require 'open-line)
;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(if (fboundp 'menu-bar-mode) (menu-bar-mode 1))

(color-theme-zenburn)

(global-set-key (kbd "<f1>") 'speedbar)
(global-set-key (kbd "<f4>") 'buffer-menu)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-o") 'open-next-line)
(global-set-key (kbd "M-o") 'open-previous-line)
(global-set-key (kbd "<f2>") 'find-file-at-point)

(setq rcirc-default-nick "hdeshev")
(setq rcirc-default-full-name "Hristo Deshev")

(server-start)
;; Open .scala file. M-x ensime (once per project)
(provide 'hdeshev)

;; Set the frame title, so that we can easily find and focus the Emacs window (autokey!)
(modify-frame-parameters nil (list (cons 'name "Emacs")))
