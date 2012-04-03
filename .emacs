(add-to-list 'load-path "~/.emacs.d")

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode) )
(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode) )
(add-to-list 'auto-mode-alist '("\\.cuh\\'" . c++-mode) )

(setq default-tab-width 4)
;; use tab to indent
;; (setq-default indent-tabs-mode nil)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(c-tab-always-indent t))
(put 'dired-find-alternate-file 'disabled nil)

;; overrides mark-whole-buffer
(global-set-key [?\C-h] 'delete-backward-char) 
(global-set-key [?\C-x ?h] 'help-command)

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups