# IKEv2 VPN Server on Docker

### Builds VPN server container, installs systemd service, and generates client config

#### 1. Clone repo to a CoreOS instance

    git clone https://github.com/johnpeterharvey/docker-ikev2-vpn-server.git

#### 2. Change to the cloned directory

    cd docker-ikev2-vpn-server/

#### 3. Run the build script

    ./build.sh

#### 4. Copy the resulting file to your host over a secure connection

    rsync -a --progress server:~/docker-ikev2-vpn-server/ike.mobileconfig .

#### 5. Install .mobileconfig

- **iOS 9 or later**: AirDrop the `.mobileconfig` file to your iOS 9 device, finish the **Install Profile** screen;
- **OS X 10.11 El Capitan or later**: Double click the `.mobileconfig` file to start the *profile installation* wizard.

*IKEv2 protocol requires iOS 8 or later, Mac OS X 10.11 El Capitan is supported as well.*
