{ stdenv, ags }:

stdenv.mkDerivation {
  pname = "slauncher";
  version = "0.1.0";

  src = ./.;

  buildInputs = [];

  installPhase = ''
    mkdir -p $out/bin
    cp $src/*.js $out/bin/.
    cp $src/*.css $out/bin/.
    cp ${ags}/bin/ags $out/bin/.
  '';
}
