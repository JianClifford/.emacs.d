;; ~/.emacs.d/lisp/init-helm.el
(use-package helm
  ;; 等价于 (bind-key "M-x" #'helm-M-x)
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files))
  :config
  ;; 全局启用 Helm minor mode
  (helm-mode 1))

;; 好了。按个 M-x 试试

(provide 'init-helm)
;; init-helm.el ends here
