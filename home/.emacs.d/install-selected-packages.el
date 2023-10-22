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
	company-c-headers
	dir-treeview
	docker
	docker-cli
	flycheck
	flycheck-clang-tidy
	flymd
	jinja2-mode
	magit
	markdown-mode
	monky
	sudo-edit
	))
(package-install-selected-packages)
