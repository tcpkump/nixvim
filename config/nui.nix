{pkgs, ...}: {
  # Dependency of terraform.nvim
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "nui";
      src = pkgs.fetchFromGitHub {
        owner = "MunifTanjim";
        repo = "nui.nvim";
        rev = "61574ce6e60c815b0a0c4b5655b8486ba58089a1";
        hash = "sha256-o2iNktcWxL0oCtCkbARMiWnTlZA8QWQHy2qeOanBlO4=";
      };
    })
  ];
}
