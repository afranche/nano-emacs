{
  description = ''
    Set of configuration files for GNU Emacs to provide a consistent look.
  '';

  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;

  outputs = { self, nixpkgs }: {
    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "nano-emacs";
        src = self;
      };
  };
}
