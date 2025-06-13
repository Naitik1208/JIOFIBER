# DOWNGRADE FIRMWARE
NOTE:-This is only for educational purposes. 
If your router is bricked or don't work then I am not responsible for it. 
Successfully tested on multiple JCOW404. <br/>
1. Get Root Access using [this guide](https://github.com/Naitik1208/JF-ROUTER/blob/main/Instructions/Get-Root-Access-JF-ONT.md) <br/>
2. Download firmware from [here](https://drive.google.com/drive/folders/10quWkTHPK18n0nsuv5MfhThr3g6Qffcg)<br/>
3. Upload firmware and sig file on maintenance --> firmware upgrade page.<br/>
4. Run [this script](https://github.com/Naitik1208/JF-ROUTER/blob/main/force_fw_sig_check.sh) in telnet session. <br/>
5. Upgrade button will be enabled on admin page click it and wait for router to reboot and enjoy.

In case the upgrade stops then try running script first then uploading files on admin page and disconnect fiber cable as TR-069 might be stopping updates but I don't know about it yet.<br/> 
Some services like JIO app and Voip will not work for a few days.<br/>
For me it started working when my firmware was updated to 2.30.2 automatically by TR-069. <br/>
After downgrading you will receive updates by TR-069 please don't stop them till 2.30.2 or VoIP might not work.<br/>
Once all services start working you may stop updates by following other guide. (Still working on it will update soon). 



