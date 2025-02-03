**testing**

```sh
nix run .
```
or

```sh
nix run github:pagusupu/paguvim
```

**installation**

add to flake:

```nix
inputs.paguvim.url = "github:pagusupu/paguvim";
```

then add package:

```nix
environment.systemPackages = [
  inputs.paguvim.packages.${pkgs.system}.default
];
```
thanks to [Ahwxorg](https://github.com/Ahwxorg/nixvim-config) which this repo is heavily based on

