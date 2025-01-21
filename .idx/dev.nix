# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "unstable"; # or "unstable"
  # channel = "stable-24.11";
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.metasploit
    pkgs.postgresql
    pkgs.neofetch
    pkgs.php
    pkgs.python312
    pkgs.python312Packages.pip
    pkgs.docker
    pkgs.go
    pkgs.docker-compose
    pkgs.mariadb
    pkgs.maltego
    pkgs.burpsuite
    pkgs.proxychains
    pkgs.proxychains-ng
    pkgs.nmap
    pkgs.theharvester
    pkgs.dnsrecon
    pkgs.whatweb
    pkgs.fierce
    pkgs.dnsmap
    pkgs.whois
    pkgs.dnsenum
    pkgs.lbd
    pkgs.host
    pkgs.wafw00f
    pkgs.wapiti
    pkgs.dmitry
    pkgs.davtest
    pkgs.nikto
    pkgs.dirb
    pkgs.amass
    # pkgs.openvas-scanner
    # pkgs.nodejs_20
    # pkgs.nodePackages.nodemon
  ];
  # Sets environment variables in the workspace
  env = {};
  services.docker.enable = true;
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      # "vscodevim.vim"
    ];
    # Enable previews
    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     # Environment variables to set for your server
        #     PORT = "$PORT";
        #   };
        # };
      };
    };
    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = "npm install";
        # Open editors for the following files by default, if they exist:
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
