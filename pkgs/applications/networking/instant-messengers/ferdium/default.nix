{ lib, mkFranzDerivation, fetchurl, xorg }:

mkFranzDerivation rec {
  pname = "ferdium";
  name = "Ferdium";
  version = "6.2.4";
  src = fetchurl {
    url = "https://github.com/ferdium/ferdium-app/releases/download/v${version}/Ferdium-linux-${version}-amd64.deb";
    sha256 = "sha256-iat0d06IhupMVYfK8Ot14gBY+5rHO4e/lVYqbX9ucIo=";
  };

  extraBuildInputs = [ xorg.libxshmfence ];

  meta = with lib; {
    description = "All your services in one place built by the community";
    homepage = "https://ferdium.org/";
    license = licenses.asl20;
    maintainers = with maintainers; [ magnouvean ];
    platforms = [ "x86_64-linux" ];
    hydraPlatforms = [ ];
  };
}
