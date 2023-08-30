;; ~/.emacs.d/lisp/init-ivy.el

(use-package ivy
  :delight
  :config
  (ivy-mode 1)  ; 启用 Ivy 模式
  (setq enable-recursive-minibuffers t  ; 允许递归使用 minibuffer
        ivy-use-virtual-buffers t  ; 使用虚拟缓冲区来显示最近访问的文件和目录
        ivy-display-style 'fancy  ; 设置 Ivy 显示样式为 'fancy'
        ivy-initial-inputs-alist nil)  ; 清除默认的输入提示
  ;; 更加友好的 Ivy 界面
  (use-package ivy-rich
    :init
    (ivy-rich-mode 1)
    :config
    ;; (setq ivy-virtual-abbreviate 'full
    ;;       ivy-rich-switch-buffer-align-virtual-buffer t
    ;;       ivy-rich-path-style 'abbrev)
    (setcdr (assq t ivy-format-functions-alist) #'ivy-format-function-line))
  ;; 在 Ivy 选择界面中添加 C-o 快捷菜单
  (use-package ivy-hydra)
  ;; swiper - 显示搜索结果的概览
  ;; 不如 CTRLF 好用。已弃用。
  ;; (use-package swiper
  ;;   :bind (("\C-s" . swiper)))
  ;; counsel - 增强了默认的常用命令
  (use-package counsel
    :bind (("M-x" . counsel-M-x)  ; 使用 counsel-M-x 替代默认的 M-x 命令
           ("C-x C-f" . counsel-find-file)))  ; 使用 counsel-find-file 替代默认的查找文件命令
  ;; prescient.el: 简单而有效的 Emacs 排序和过滤库
  (use-package prescient
    :config
    (setq prescient-save-file (expand-file-name ".cache/prescient" user-emacs-directory))
    ;; 在 Emacs 会话之间保存使用统计数据
    (prescient-persist-mode t))
  (use-package ivy-prescient
    :config
    (ivy-prescient-mode t))
  ;; (use-package ivy-posframe
  ;;   :config
  ;;   (ivy-posframe-mode 1)
  ;;   ;; 解决 posframe 抢占输入焦点的问题
  ;;   ;; 参考：https://emacs-china.org/t/snails-frame-mac-xxx-posrame-bug/18550/7
  ;;   (setq posframe-mouse-banish t)
  ;;   (setq ivy-posframe-display-functions-alist
  ;;         '((t . ivy-posframe-display-at-window-bottom-left))))
  )
(provide 'init-ivy)
;; init-ivy.el ends here
