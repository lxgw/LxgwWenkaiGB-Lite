rm -r sources/temp
rm -r sources/build
mkdir -p sources/temp
mkdir -p sources/build
# unzip
python3 sources/shared/scripts/extract.py sources/shared/gblite gblite
# gb lite
cp -r sources/temp/gblite/Light.ufo sources/build/LXGWWenKaiGBLite-Light.ufo
cp -r sources/temp/gblite/Regular.ufo sources/build/LXGWWenKaiGBLite-Regular.ufo
cp -r sources/temp/gblite/Medium.ufo sources/build/LXGWWenKaiGBLite-Medium.ufo
# mono lite
ufomerge --output sources/build/LXGWWenKaiMonoGBLite-Light.ufo --skip-existing --ignore-layout sources/shared/monolgc/Light.ufo sources/build/LXGWWenKaiGBLite-Light.ufo
ufomerge --output sources/build/LXGWWenKaiMonoGBLite-Regular.ufo --skip-existing --ignore-layout sources/shared/monolgc/Regular.ufo sources/build/LXGWWenKaiGBLite-Regular.ufo
ufomerge --output sources/build/LXGWWenKaiMonoGBLite-Medium.ufo --skip-existing --ignore-layout sources/shared/monolgc/Medium.ufo sources/build/LXGWWenKaiGBLite-Medium.ufo
# fontinfo override
cp sources/fontinfo/LXGWWenKaiGBLite-Light.plist sources/build/LXGWWenKaiGBLite-Light.ufo/fontinfo.plist
cp sources/fontinfo/LXGWWenKaiGBLite-Regular.plist sources/build/LXGWWenKaiGBLite-Regular.ufo/fontinfo.plist
cp sources/fontinfo/LXGWWenKaiGBLite-Medium.plist sources/build/LXGWWenKaiGBLite-Medium.ufo/fontinfo.plist
cp sources/fontinfo/LXGWWenKaiMonoGBLite-Light.plist sources/build/LXGWWenKaiMonoGBLite-Light.ufo/fontinfo.plist
cp sources/fontinfo/LXGWWenKaiMonoGBLite-Regular.plist sources/build/LXGWWenKaiMonoGBLite-Regular.ufo/fontinfo.plist
cp sources/fontinfo/LXGWWenKaiMonoGBLite-Medium.plist sources/build/LXGWWenKaiMonoGBLite-Medium.ufo/fontinfo.plist
# feature override
cp sources/shared/gblite/features.fea sources/build/LXGWWenKaiGBLite-Light.ufo/features.fea
cp sources/shared/gblite/features.fea sources/build/LXGWWenKaiGBLite-Regular.ufo/features.fea
cp sources/shared/gblite/features.fea sources/build/LXGWWenKaiGBLite-Medium.ufo/features.fea
cp sources/shared/gblite/features_mono.fea sources/build/LXGWWenKaiMonoGBLite-Light.ufo/features.fea
cp sources/shared/gblite/features_mono.fea sources/build/LXGWWenKaiMonoGBLite-Regular.ufo/features.fea
cp sources/shared/gblite/features_mono.fea sources/build/LXGWWenKaiMonoGBLite-Medium.ufo/features.fea
