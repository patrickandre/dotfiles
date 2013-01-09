(setq visible-bell t)

(show-paren-mode 1)

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'smooth-scrolling "~/.emacs.d/plugins/smooth-scrolling.el")

;; Templates
(require 'template "~/.emacs.d/plugins/template.el")
(template-initialize)

