;; ~/.emacs.d/lisp/init-elpa.el
(require 'package)

;;设置软件源
(setq package-archives '(("gnu"    . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("nongnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
                         ("melpa"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			                   ("nongnu-devel" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu-devel/")
                         ("melpa-stalbe"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/")
			                   ("gnu-devel" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu-devel/")
                         ("org"  . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			                  ))

;; 初始化包管理器
(package-initialize)

;; 如果 use-package 没安装
(unless (package-installed-p 'use-package)
  ;; 更新本地缓存
  (package-refresh-contents)
  ;; 之后安装它。use-package 应该是你配置中唯一一个需要这样安装的包。
  (package-install 'use-package))

(require 'use-package)
;; 让 use-package 永远按需安装软件包
(setq use-package-always-ensure t)

;; quelpa - For those packages which are not in MELPA
(use-package quelpa
  :config ; 在 (require) 之后需要执行的表达式
  (use-package quelpa-use-package) ; 把 quelpa 嵌入 use-package 的宏扩展
  (quelpa-use-package-activate-advice)) ; 启用这个 advice


(provide 'init-elpa)
