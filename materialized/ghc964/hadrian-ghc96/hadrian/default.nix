{
  pkgs = hackage:
    {
      packages = {
        Cabal-syntax.revision = import ./cabal-files/Cabal-syntax.nix;
        bytestring.revision = (((hackage.bytestring)."0.11.5.3").revisions).default;
        exceptions.revision = (((hackage.exceptions)."0.10.7").revisions).default;
        directory.revision = (((hackage.directory)."1.3.8.1").revisions).default;
        filepath.revision = (((hackage.filepath)."1.4.200.1").revisions).default;
        mtl.revision = (((hackage.mtl)."2.3.1").revisions).default;
        ghc-bignum.revision = (((hackage.ghc-bignum)."1.3").revisions).default;
        ghc-prim.revision = (((hackage.ghc-prim)."0.10.0").revisions).default;
        parsec.revision = (((hackage.parsec)."3.1.16.1").revisions).default;
        js-flot.revision = import ./cabal-files/js-flot.nix;
        utf8-string.revision = import ./cabal-files/utf8-string.nix;
        Cabal.revision = import ./cabal-files/Cabal.nix;
        splitmix.revision = import ./cabal-files/splitmix.nix;
        splitmix.flags.optimised-mixer = false;
        containers.revision = (((hackage.containers)."0.6.7").revisions).default;
        clock.revision = import ./cabal-files/clock.nix;
        clock.flags.llvm = false;
        stm.revision = (((hackage.stm)."2.5.1.0").revisions).default;
        heaps.revision = import ./cabal-files/heaps.nix;
        base.revision = (((hackage.base)."4.18.2.0").revisions).default;
        time.revision = (((hackage.time)."1.12.2").revisions).default;
        random.revision = import ./cabal-files/random.nix;
        primitive.revision = import ./cabal-files/primitive.nix;
        deepseq.revision = (((hackage.deepseq)."1.4.8.1").revisions).default;
        js-jquery.revision = import ./cabal-files/js-jquery.nix;
        js-dgtable.revision = import ./cabal-files/js-dgtable.nix;
        rts.revision = (((hackage.rts)."1.0.2").revisions).default;
        template-haskell.revision = (((hackage.template-haskell)."2.20.0.0").revisions).default;
        binary.revision = (((hackage.binary)."0.8.9.1").revisions).default;
        shake.revision = import ./cabal-files/shake.nix;
        shake.flags.portable = false;
        shake.flags.cloud = false;
        shake.flags.embed-files = false;
        process.revision = (((hackage.process)."1.6.17.0").revisions).default;
        unix.revision = (((hackage.unix)."2.8.4.0").revisions).default;
        transformers.revision = (((hackage.transformers)."0.6.1.0").revisions).default;
        unordered-containers.revision = import ./cabal-files/unordered-containers.nix;
        unordered-containers.flags.debug = false;
        QuickCheck.revision = import ./cabal-files/QuickCheck.nix;
        QuickCheck.flags.old-random = false;
        QuickCheck.flags.templatehaskell = true;
        extra.revision = import ./cabal-files/extra.nix;
        text.revision = (((hackage.text)."2.0.2").revisions).default;
        array.revision = (((hackage.array)."0.5.6.0").revisions).default;
        ghc-boot-th.revision = (((hackage.ghc-boot-th)."9.6.4").revisions).default;
        filepattern.revision = import ./cabal-files/filepattern.nix;
        pretty.revision = (((hackage.pretty)."1.1.3.6").revisions).default;
        hashable.revision = import ./cabal-files/hashable.nix;
        hashable.flags.random-initial-seed = false;
        hashable.flags.integer-gmp = true;
        };
      compiler = {
        version = "9.6.4";
        nix-name = "ghc964";
        packages = {
          "pretty" = "1.1.3.6";
          "text" = "2.0.2";
          "array" = "0.5.6.0";
          "mtl" = "2.3.1";
          "parsec" = "3.1.16.1";
          "bytestring" = "0.11.5.3";
          "filepath" = "1.4.200.1";
          "stm" = "2.5.1.0";
          "ghc-prim" = "0.10.0";
          "ghc-boot-th" = "9.6.4";
          "base" = "4.18.2.0";
          "time" = "1.12.2";
          "process" = "1.6.17.0";
          "ghc-bignum" = "1.3";
          "directory" = "1.3.8.1";
          "exceptions" = "0.10.7";
          "rts" = "1.0.2";
          "transformers" = "0.6.1.0";
          "template-haskell" = "2.20.0.0";
          "deepseq" = "1.4.8.1";
          "unix" = "2.8.4.0";
          "binary" = "0.8.9.1";
          "containers" = "0.6.7";
          };
        };
      };
  extras = hackage:
    { packages = { hadrian = ./.plan.nix/hadrian.nix; }; };
  modules = [
    ({ lib, ... }:
      {
        packages = {
          "hadrian" = {
            flags = {
              "threaded" = lib.mkOverride 900 true;
              "selftest" = lib.mkOverride 900 true;
              };
            };
          };
        })
    ({ lib, ... }:
      {
        packages = {
          "shake".components.library.planned = lib.mkOverride 900 true;
          "Cabal-syntax".components.library.planned = lib.mkOverride 900 true;
          "heaps".components.library.planned = lib.mkOverride 900 true;
          "extra".components.library.planned = lib.mkOverride 900 true;
          "filepath".components.library.planned = lib.mkOverride 900 true;
          "pretty".components.library.planned = lib.mkOverride 900 true;
          "utf8-string".components.library.planned = lib.mkOverride 900 true;
          "Cabal".components.library.planned = lib.mkOverride 900 true;
          "bytestring".components.library.planned = lib.mkOverride 900 true;
          "exceptions".components.library.planned = lib.mkOverride 900 true;
          "ghc-prim".components.library.planned = lib.mkOverride 900 true;
          "array".components.library.planned = lib.mkOverride 900 true;
          "binary".components.library.planned = lib.mkOverride 900 true;
          "filepattern".components.library.planned = lib.mkOverride 900 true;
          "ghc-boot-th".components.library.planned = lib.mkOverride 900 true;
          "splitmix".components.library.planned = lib.mkOverride 900 true;
          "rts".components.library.planned = lib.mkOverride 900 true;
          "unix".components.library.planned = lib.mkOverride 900 true;
          "shake".components.exes."shake".planned = lib.mkOverride 900 true;
          "directory".components.library.planned = lib.mkOverride 900 true;
          "time".components.library.planned = lib.mkOverride 900 true;
          "js-flot".components.library.planned = lib.mkOverride 900 true;
          "ghc-bignum".components.library.planned = lib.mkOverride 900 true;
          "process".components.library.planned = lib.mkOverride 900 true;
          "clock".components.library.planned = lib.mkOverride 900 true;
          "template-haskell".components.library.planned = lib.mkOverride 900 true;
          "stm".components.library.planned = lib.mkOverride 900 true;
          "hadrian".components.exes."hadrian".planned = lib.mkOverride 900 true;
          "QuickCheck".components.library.planned = lib.mkOverride 900 true;
          "mtl".components.library.planned = lib.mkOverride 900 true;
          "transformers".components.library.planned = lib.mkOverride 900 true;
          "parsec".components.library.planned = lib.mkOverride 900 true;
          "deepseq".components.library.planned = lib.mkOverride 900 true;
          "primitive".components.library.planned = lib.mkOverride 900 true;
          "js-jquery".components.library.planned = lib.mkOverride 900 true;
          "text".components.library.planned = lib.mkOverride 900 true;
          "unordered-containers".components.library.planned = lib.mkOverride 900 true;
          "random".components.library.planned = lib.mkOverride 900 true;
          "base".components.library.planned = lib.mkOverride 900 true;
          "containers".components.library.planned = lib.mkOverride 900 true;
          "js-dgtable".components.library.planned = lib.mkOverride 900 true;
          "hashable".components.library.planned = lib.mkOverride 900 true;
          };
        })
    ];
  }