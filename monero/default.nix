{ pkgs ? import <nixpkgs> {}, ... }:
let
	item="https://downloads.getmonero.org/blockchain.raw";
in
with pkgs;
runCommand "blockchain-raw" {} ''
	set -x
	mkdir $out
	${curl}/bin/curl -k ${item} > $out/blockchain.raw
	set +x
''

