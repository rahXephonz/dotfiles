{ pkgs, ... }:

{
  home.packages = with pkgs; [ zig rnix-lsp nixfmt ripgrep fd starship ];
  home.file.".config/nvim/settings.lua".source = ./lua/settings.lua;

  programs.neovim.enable = true;
  programs.neovim.vimdiffAlias = true;
  programs.neovim.withNodeJs = true;
  programs.neovim.withPython3 = true;
  programs.neovim.withRuby = true;
  programs.neovim.defaultEditor = true;
  programs.neovim.plugins = with pkgs.vimPlugins; [
    vim-nix
    vim-fugitive
    cmp-git
    cmp-path
    cmp-vsnip
    vim-vsnip
    auto-pairs
    plenary-nvim
    cmp-nvim-lsp
    kanagawa-nvim
    nvim-web-devicons
    blamer-nvim
    codeium-vim
    neoformat
    NeoSolarized
    colorbuddy-nvim
    tokyonight-nvim
    gruvbox-nvim

    {
      plugin = lualine-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/lualine.lua
      '';
    }

    {
      plugin = presence-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/presence.lua
      ''; 
    }

    {
      plugin = null-ls-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/prettier.lua
      '';
    }

    {
      plugin = lspsaga-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/lspsaga.lua
      '';
    }

    {
      plugin = lazy-lsp-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/lazy.lua
      '';
    }

    {
      plugin = nvim-treesitter;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/treesitter.lua
      '';
    }

    {
      plugin = nvim-cmp;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/cmp.lua
      '';
    }

    {
      plugin = lspkind-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/lspkind.lua
      '';
    }

    {
      plugin = telescope-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/telescope.lua
      '';
    }

    {
      plugin = indent-blankline-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/indent.lua
      '';
    }

    {
      plugin = nvim-lspconfig;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/lsp.lua
      '';
    }

    {
      plugin = nvim-tree-lua;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/tree.lua
      '';
    }

    {
      plugin = bufferline-nvim;
      config = ''
        luafile ~/.config/dotfiles/home/nvim/lua/config/bufferline.lua
      '';
    }
  ];

  programs.neovim.extraConfig = ''
    luafile ~/.config/dotfiles/home/nvim/lua/settings.lua
    luafile ~/.config/dotfiles/home/nvim/lua/maps.lua
  '';

}
