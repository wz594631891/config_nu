# config.nu
#
# Installed by:
# version = "0.105.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# This file is loaded after env.nu and before login.nu
#
# You can open this file in your default editor using:
# config nu
#
# See `help config nu` for more options
#
# You can remove these comments if you want or leave
# them for future reference.
# 设置zoxide
source ~/.zoxide.nu
# 夜煞云配置
# 根据计算机名设置代理(家里和公司)
if $env.COMPUTERNAME == "DESKTOP-J4NHO57" {
    $env.http_proxy = "http://127.0.0.1:7892"
    $env.https_proxy = "http://127.0.0.1:7892"
} else {
    $env.http_proxy = "http://100.82.155.75:7892"
    $env.https_proxy = "http://100.82.155.75:7892"
}
# 设置 Nushell 内部编辑器
$env.config.buffer_editor = "subl"
# 设置系统全局环境变量
$env.EDITOR = "subl"
# 命令行重定向
## codebuddy ide别名
alias codebuddy-ide-cn = `CodeBuddy CN.exe`
alias cbic = `CodeBuddy CN.exe`
## 资源管理器
alias exp = explorer

# 使用 Windows 标准的环境变量名
if $env.PWD == ($env.USERPROFILE | path expand) or $env.PWD == "C:\\Windows\\system32" or $env.PWD == "C:\\Users\\Administrator" {
    cd `C:\Users\Administrator\Desktop`
}
# 配置atuin
source ("~/.local/share/atuin/init.nu" | path expand)