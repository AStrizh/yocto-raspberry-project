python update_issue_file() {
    issue_file = d.expand('${IMAGE_ROOTFS}/etc/issue')
    motd_file = d.expand('${IMAGE_ROOTFS}/etc/motd')
    ascii_art = """
    Welcome to StrizhevskiyOS!
    Created by Aleksandr Strizhevskiy

 _____ _        _     _                    _    _       _____ _____ 
/  ___| |      (_)   | |                  | |  (_)     |  _  /  ___|
\ `--.| |_ _ __ _ ___| |__   _____   _____| | ___ _   _| | | \ `--. 
 `--. \ __| '__| |_  / '_ \ / _ \ \ / / __| |/ / | | | | | | |`--. \
/\__/ / |_| |  | |/ /| | | |  __/\ V /\__ \   <| | |_| \ \_/ /\__/ /
\____/ \__|_|  |_/___|_| |_|\___| \_/ |___/_|\_\_|\__, |\___/\____/ 
                                                   __/ |            
                                                  |___/             

    """
    with open(issue_file, 'w') as f:
        f.write(ascii_art)
}
