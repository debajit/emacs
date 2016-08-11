(require 'ac-js2)
(require 'js2-mode)
(require 'auto-complete)
(require 'auto-complete-config)
(require 'web-mode)
(require 'yasnippet)

(ac-config-default)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)
(add-to-list 'ac-modes 'js2-mode)
(add-to-list 'ac-modes 'web-mode)
(add-to-list 'ac-modes 'css-mode)

(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(add-hook 'js-mode-hook 'tern-mode)

(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(global-auto-complete-mode t)
(setq ac-auto-show-menu 0.2)
(setq ac-delay 0.2)
(setq ac-menu-height 10)
(setq ac-show-menu-immediately-on-auto-complete t)

(provide 'javascript-ide)
