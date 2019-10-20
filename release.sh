#!/bin/bash

# to run on the ci vm, on  /root/react-native/react-native/
#git checkout -d release/my-react-native-release

# build release using the 2019-6-25 rn build image
docker run --rm --name rn-build-android -v $PWD:/pwd -w /pwd reactnativecommunity/react-native-android:2019-6-25 /bin/sh -c "./gradlew installArchives"


#git add android --force
#git commit -a -m 'my react native forked release'
#git push
