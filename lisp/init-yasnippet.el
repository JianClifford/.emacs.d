;; ~/.emacs.d/lisp/init-yasnippet.el

(use-package yasnippet
  :config
  ;; 全局启用这个 minor mode
  (yas-global-mode 1))

;; 再装一个通用模板库，省得没 template 用
(use-package yasnippet-snippets
  :after (yasnippet))

;; 模板生成工具，写代码时随手生成一个模板。强烈推荐使用
;; 使用方法： https://github.com/abo-abo/auto-yasnippet#usage
(use-package auto-yasnippet
  :bind
  (("C-c & w" . aya-create)
   ("C-c & y" . aya-expand))
  :config
  (setq aya-persist-snippets-dir (concat user-emacs-directory "my/snippets")))




(provide 'init-yasnippet)
;;init-yasnippet.el ends here
