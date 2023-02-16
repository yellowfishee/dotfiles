
(setq w32-apps-modifier 'super)       ; 通过SharpKeys改成了 Application

(global-set-key (kbd "s-a") 'mark-whole-buffer) ;;对应Windows上面的Ctrl-a 全选 C-x C-e
(global-set-key (kbd "s-c") 'kill-ring-save) ;;对应Windows上面的Ctrl-c 复制
(global-set-key (kbd "s-s") 'save-buffer) ;; 对应Windows上面的Ctrl-s 保存
(global-set-key (kbd "s-v") 'yank) ;对应Windows上面的Ctrl-v 粘贴
(global-set-key (kbd "s-z") 'undo) ;对应Windows上面的Ctrol-z 撤销
(global-set-key (kbd "s-x") 'kill-region)



(global-set-key (kbd "<f1>") 'func)

(global-set-key (kbd "s-p") 'toggle-chinese-search)



(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)


;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(global-set-key (kbd "C-x b") 'consult-buffer)

;;swiper
(global-set-key (kbd "C-s") 'consult-line)
(global-set-key (kbd "M-s i") 'consult-imenu)

(global-set-key (kbd "C-;") 'embark-act)

(with-eval-after-load 'embark  
  (define-key embark-file-map (kbd "E") #'consult-directory-externally))


(define-key minibuffer-local-map (kbd "C-c C-e") 'embark-export-write)

(global-set-key (kbd "C-c p f") 'project-find-file)
(global-set-key (kbd "C-c p s") 'consult-ripgrep)

;; 注释选中行
(global-set-key (kbd "C-c C-/") 'my-comment-or-uncomment-region)  

(provide 'init-keybindings)
