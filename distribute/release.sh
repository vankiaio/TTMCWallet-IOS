rm -rf pocketTTMC.app

cp -pr ..//build/pocketTTMC.xcarchive/Products/Applications/pocketTTMC.app pocketTTMC.app

rm -rf pocketTTMC

mkdir pocketTTMC

mkdir pocketTTMC/Payload

cp -r pocketTTMC.app pocketTTMC/Payload/pocketTTMC.app

cp Icon.png pocketTTMC/iTunesArtwork

cd pocketTTMC

zip -r pocketTTMC.ipa Payload iTunesArtwork

exit 0
