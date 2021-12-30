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

["根据 shell 本身的不同，您从登录开始还是以交互的方式完成这一过程可能会有很大的不同点"](https://blog.flowblok.id.au/2013-02/shell-startup-scripts.html)

### 可移植性

配置文件的一个常见的痛点是它可能并不能在多种设备上生效。例如，如果您在不同设备上使用的操作系统或者 shell 是不同的，则配置文件是无法生效的。或者，有时您仅希望特定的配置只在某些设备上生效。

有一些技巧可以轻松达成这些目的。如果配置文件 if 语句，则您可以借助它针对不同的设备编写不同的配置。例如，您的 shell 可以这样做：

```bash
if [[ "$(uname)" == "Linux" ]]; then {do_something}; fi

# 使用和 shell 相关的配置时先检查当前 shell 类型
if [[ "$SHELL" == "zsh" ]]; then {do_something}; fi

# 您也可以针对特定的设备进行配置
if [[ "$(hostname)" == "myServer" ]]; then {do_something}; fi
```

如果配置文件支持 include 功能，您也可以多加利用。例如：`~/.gitconfig` 可以这样编写：

```bash
[include]
    path = ~/.gitconfig_local
```

然后我们可以在日常使用的设备上创建配置文件 `~/.gitconfig_local` 来包含与该设备相关的特定配置。您甚至应该创建一个单独的代码仓库来管理这些与设备相关的配置。

如果您希望在不同的程序之间共享某些配置，该方法也适用。例如，如果您想要在 `bash` 和 `zsh` 中同时启用一些别名，您可以把它们写在 `.aliases` 里，然后在这两个 shell 里应用：

```bash
# Test if ~/.aliases exists and source it
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi
```

### 最受欢迎的点文件

[mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)

### vim

关于vim，闲时再看

[anishathalye/dotfiles/vimrc](https://github.com/anishathalye/dotfiles/blob/master/vimrc)

[JJGO/dotfiles/vim/.vimrc](https://github.com/JJGO/dotfiles/blob/master/vim/.vimrc)
