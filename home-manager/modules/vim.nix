{ pkgs, ... }: {
	programs.vim = {
		enable = true;
		plugins = with pkgs.vimPlugins; [ ];
		extraConfig = ''
			set number
			set relativenumber

			set wrap
			set linebreak

			set cursorline

			set undofile
			set mousehide

			set clipboard=unnamedplus

			set expandtab
			set shiftwidth=4
			set tabstop=4
			set softtabstop=4
			set smartindent
		'';
	};
}