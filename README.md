# IKEv2 VPN Server on Docker

## 1. Clone repo to a CoreOS instance

## 2. Run the build script

    ./build.sh

## 3. Copy the resulting file to your host over a secure connection

    rsync -a --progress server:~/docker-ikev2-vpn-server/ike.mobileconfig .

## 4. Install .mobileconfig

- **iOS 9 or later**: AirDrop the `.mobileconfig` file to your iOS 9 device, finish the **Install Profile** screen;
- **OS X 10.11 El Capitan or later**: Double click the `.mobileconfig` file to start the *profile installation* wizard.

*IKEv2 protocol requires iOS 8 or later, Mac OS X 10.11 El Capitan is supported as well.*
