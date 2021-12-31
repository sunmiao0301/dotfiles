## dotfiles

我们应该如何管理这些配置文件呢，它们应该在它们的文件夹下，并使用版本控制系统进行管理，然后通过脚本将其 **符号链接** 到需要的地方。这么做有如下好处：

- **安装简单**: 如果您登录了一台新的设备，在这台设备上应用您的配置只需要几分钟的时间；
- **可以执行**: 您的工具在任何地方都以相同的配置工作
- **同步**: 在一处更新配置文件，可以同步到其他所有地方
- **变更追踪**: 您可能要在整个程序员生涯中持续维护这些配置文件，而对于长期项目而言，版本历史是非常重要的
- 工具也可以通过*点文件*进行配置：
  - `bash` - `~/.bashrc`, `~/.bash_profile`
  - `git` - `~/.gitconfig`
  - `vim` - `~/.vimrc` 和 `~/.vim` 目录
  - `ssh` - `~/.ssh/config`
  - `tmux` - `~/.tmux.conf`

### flowblok说

["根据 shell 本身的不同，您从登录开始还是以交互的方式完成这一过程可能会有很大的不同点"](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html)

*如果你真的有条理，你会把所有的点文件放在某个地方的存储库中，这样你就可以在你工作的所有机器上保持你的设置同步......我对这个问题的解决方案是定义一些新的 dotfile 文件夹，一个用于每个 shell（`.bash/`、`.zsh/`和`.sh/`），一个用于独立于 shell 的文件（`.shell/`） —— flowblok*

```bash
.bash/
    env
    interactive
    login
    logout
.sh/
    env
    interactive
    login
.shell/
    env
    interactive
    login
    logout
.zsh/
    env
    interactive
    login
    logout
```

### 最受欢迎的点文件

[mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

### 助教的点文件

[anishathalye](https://github.com/anishathalye/dotfiles)

[JJGO](https://github.com/JJGO/dotfiles)

[jonhoo](https://github.com/jonhoo/configs)

### 更多

[05Command-line Environment.MD](https://github.com/sunmiao0301/MIT-6.NULL-The-Missing-Semester-of-Your-CS-Education/blob/main/05Command-line%20Environment.MD)
