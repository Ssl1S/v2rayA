distUrl="/Users/shenlin/Downloads/Qv2rayDist/qv2ray.app"
distUrlDmg="/Users/shenlin/Downloads/Qv2rayDist/qv2ray.dmg"
macdeployqt /Users/shenlin/Downloads/Qv2rayDist/qv2ray.app
mkdir -p  $distUrl/Contents/Resources/v2ray
cp  -rf /usr/local/Cellar/v2ray/5.16.1/share/v2ray/* $distUrl/Contents/Resources/v2ray
cp -rf /Users/shenlin/Downloads/v2ray-core/v2ray $distUrl/Contents/Resources/v2ray


hdiutil create -volname qv2ray -srcfolder $distUrl -ov -format UDZO $distUrlDmg
