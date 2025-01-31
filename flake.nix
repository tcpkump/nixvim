{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, system, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config; # import the module directly
            extraSpecialArgs = { };
          };

          nvim = nixvim'.makeNixvimWithModule nixvimModule;

          # Add extra dependencies here
          dependencies = with pkgs; [
            lazygit
            hclfmt
          ];
        in
        {
          checks = {
            # Run `nix flake check .` to verify that your config is not broken
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };

          packages = {
            # Lets you run `nix run .` to start nixvim
            default = nvim;
          };

          devShells.default = pkgs.mkShell {
            buildInputs = dependencies;
          };

          # Ensure nixvim has the required dependencies
          apps.default = {
            type = "app";
            program = "${pkgs.writeShellScriptBin "nixvim" ''
              export PATH="${pkgs.lib.makeBinPath dependencies}:$PATH"
              exec ${nvim}/bin/nvim "$@"
            ''}/bin/nixvim";
          };
        };
    };
}

