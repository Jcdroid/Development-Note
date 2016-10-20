unzip Remay-iOS.ipa
rm -rf Payload/Remay-iOS.app/_CodeSignature
cp embedded.mobileprovision Payload/Remay-iOS.app/embedded.mobileprovision
certifierName="iPhone Distribution: VVFLY Electronics Co., Ltd. (6AP32F8XAZ)"
codesign -f -s $certifierName  --entitlements entitlements.plist Payload/Remay-iOS.app
zip -r NewRemay-iOS.ipa Payload
