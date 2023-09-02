;; ~/.emacs.d/lisp/init-basic.el


;; 文本补全引擎
(use-package company
  ;; 等价于 (add-hook 'after-init-hook #'global-company-mode)
  :hook (after-init . global-company-mode)
  :config
  ;; setq 可以像这样连着设置多个变量的值
  (setq company-tooltip-align-annotations t ; 注释贴右侧对齐
        company-tooltip-limit 20            ; 菜单里可选项数量
        company-show-numbers t              ; 显示编号（然后可以用 M-数字 快速选定某一项）
        company-idle-delay .2               ; 延时多少秒后弹出
        company-minimum-prefix-length 1     ; 至少几个字符后开始补全
	))

;; 显示图标
(use-package company-box
  :ensure t
  :if window-system
  :hook (company-mode . company-box-mode))

;; 显示当前按键绑定的提示信息
(use-package which-key
  :delight
  :config
  (which-key-mode)
  (which-key-setup-side-window-right-bottom))

;; 错误 / 警告提示引擎
(use-package flycheck
  :init ;; 在 (require) 之前需要执行的
  (setq flycheck-emacs-lisp-load-path 'inherit)
  :config
  (global-flycheck-mode))


(provide 'init-basic)
;; init-basic.el ends here
