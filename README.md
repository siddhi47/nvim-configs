# Installing NeoVim

Run the following commands

```
curl https://raw.githubusercontent.com/siddhi47/nvim-configs/master/install_nvim.sh | bash

```

Paste the following to your ~/.bashrc

```
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi
```

Then use run the following command by giving path of the .tmux.config

```
tmux source .tmux.config
```

You can edit tmux configuration to suit to your needs
