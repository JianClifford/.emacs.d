;; ~/.emacs.d/init.el
(add-to-list 'load-path "~/.emacs.d/lisp")

;; 加载配置文件
(require 'init-elpa)
(require 'init-helm)
(require 'init-themes)
(require 'init-org)
(require 'init-ivy)
(require 'init-basic)
(require 'init-lsp)
(require 'init-yasnippet)



;; 手动安装插件的目录
(add-to-list 'load-path "~/.emacs.d/site-lisp")
;; 加载插件



(provide 'init)
;; init.el ends here



;;; move customize-set-variable out of init.el
(setq custom-file "~/.emacs.d/custom.el")
(unless (file-exists-p custom-file)  ;; 如果该文件不存在
  (write-region "" nil custom-file)) ;; 写入一个空内容，相当于 touch 一下它
(load custom-file)

