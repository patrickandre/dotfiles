(setq visible-bell t)

(show-paren-mode 1)

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'smooth-scrolling "~/.emacs.d/plugins/smooth-scrolling.el")

;; Templates
(require 'template "~/.emacs.d/plugins/template.el")
(template-initialize)

;; Auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(require 'tex-site)
(setq font-lock-maximum-decoration t)
(if window-system
    (require 'font-latex))
;; PDFLatex mode in latex-mode
(add-hook 'latex-mode-hook 'TeX-PDF-mode)
(add-hook 'LaTeX-mode-hook 'TeX-PDF-mode)
;; flyspell-mode in latex-mode
(add-hook 'latex-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'TeX-PDF-mode-hook 'flyspell-mode)
;; reftex load
(add-hook 'latex-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'TeX-PDF-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-auctex t)
(setq reftex-cite-format 'natbib)
(add-hook 'bibtex-mode-hook 'turn-on-auto-revert-mode)
;; AUCTeX automatic file parsing on save and load
(setq TeX-parse-self t)
(setq TeX-auto-save t)
(custom-set-variables
'(LaTeX-command "latex -synctex=1")
'(TeX-view-program-list
(quote (("Skim" "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b"))))
'(TeX-view-program-selection
(quote (
((output-dvi style-pstricks) "dvips and gv")
(output-dvi "xdvi")
(output-pdf "Skim")
(output-html "xdg-open")
))
)
)



