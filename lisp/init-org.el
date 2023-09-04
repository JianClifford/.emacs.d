;; ~/.emacs.d/lisp/init-org.el

(use-package org
  :pin gnu
  :demand t
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture))
  :config
  ;; (add-hook 'auto-save-hook 'org-save-all-org-buffers)
  (add-hook 'org-mode-hook (lambda () (company-mode -1)))
 )

(setq org-src-fontify-natively t) ; 高亮源代码块
(setq org-hide-emphasis-markers t) ; 隐藏强调文本的标记符号

;; PDF查看器
(use-package pdf-tools
:magic ("%PDF" . pdf-view-mode)
:config
;; 从[http://pragmaticemacs.com/emacs/more-pdf-tools-tweaks/复制而来
;; 初始化
(pdf-tools-install t)
;; 打开PDF时自动适应页面大小
(setq-default pdf-view-display-size 'fit-page)
;; 自动注释高亮
;; (setq pdf-annot-activate-created-annotations t)
;; 使用普通的isearch搜索
;; (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
;; 关闭CUA模式以实现复制功能
(add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
;; 更细粒度的缩放
(setq pdf-view-resize-factor 1.1)
;; 键盘快捷键
(define-key pdf-view-mode-map (kbd "h") 'pdf-annot-add-highlight-markup-annotation)
(define-key pdf-view-mode-map (kbd "t") 'pdf-annot-add-text-annotation)
(define-key pdf-view-mode-map (kbd "D") 'pdf-annot-delete))

;; 使用XeLaTeX导出Org-mode的PDF
(setq org-latex-pdf-process
'("xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
"xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
"xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

;; 自动编号大纲
;;(if (version<= "9.3" (org-version))
;;(add-hook 'org-mode-hook 'org-num-mode))

;; 在完成任务时记录时间。
(setq org-log-into-drawer t
org-log-done 'time
org-log-reschedule 'time
org-log-redeadline 'time
org-log-refile 'time)

(use-package org-cliplink)

;; Modwern Org Style
(use-package org-modern
  :hook ((org-mode . org-modern-mode)))

;; 自动折行
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; 自动表格对齐
(if (not (display-graphic-p))
  (progn
    ;; 在终端环境下加载的配置
    (message "Runing in terminal mode"))
    ;; 图形界面下加载valign
    (use-package valign
    	:hook ((org-mode . valign-mode))))



(provide 'init-org)
;; init-org.el ends here
