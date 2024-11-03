;; MELPA packages
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

;; Install packages I need
(setq package-selected-packages
      '(
        ace-flyspell
        ag
        auto-complete-c-headers
        bash-completion
        clang-format
        column-enforce-mode
        company
        company-ansible
        company-c-headers
        company-fuzzy
        company-jedi
        company-shell
        dir-treeview
        docker
        docker-cli
        dockerfile-mode
        flycheck
        flycheck-clang-analyzer
        flycheck-clang-tidy
        flycheck-projectile
        flycheck-pycheckers
        flycheck-yamllint
        flymd
        jedi
        jinja2-mode
        magit
        projectile
        python-black
        sudo-edit
        tramp
        yaml-mode
        ))
(package-install-selected-packages)
