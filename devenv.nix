{ pkgs, project-name, ... }:

{
  env.PROJECT_NAME = project-name;

  languages.zig = {
    enable = true;
    package = pkgs.zig;
  };
}
