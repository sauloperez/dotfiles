# My Dotfiles

These are my personal dotfiles for `zsh`, `neovim`, `tmux`, and other tools. They are designed to be minimal, fast, and easy to use.

## Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/pau-santesmasses/dotfiles.git ~/.dotfiles
    ```

2.  **Install the dotfiles:**

    ```bash
    rcup -v
    ```

    This command will create symlinks for the configuration files in your home directory.

## Features

*   **Zsh:** A powerful and customizable shell with `oh-my-zsh`.
*   **Neovim:** A highly extensible and configurable text editor with a custom configuration based on Lua.
*   **Tmux:** A terminal multiplexer with a custom configuration for improved productivity.
*   **Kitty:** A fast, feature-rich, and GPU-based terminal emulator.
*   **Vale:** A command-line tool that brings code-like linting to prose.
*   **Other tools:** Includes configurations for `git`, `psql`, and more.

## Configuration

The configuration files are located in the `config` directory. You can customize them to your liking.

*   **Zsh:** The Zsh configuration is located in `config/ohmyzsh`. You can customize the aliases, functions, and theme in the respective files.
*   **Neovim:** The Neovim configuration is located in `config/nvim`. The configuration is written in Lua and is highly customizable.
*   **Tmux:** The Tmux configuration is located in `tmux.conf`.
*   **Kitty:** The Kitty configuration is located in `config/kitty/kitty.conf`.

## Dependencies

The dotfiles require the following dependencies to be installed:

*   `rcm`
*   `zsh`
*   `neovim`
*   `tmux`
*   `kitty`
*   `vale`
*   `git`
*   `curl`
*   `unzip`

## Troubleshooting

For troubleshooting, please refer to the [TROUBLESHOOTING.md](TROUBLESHOOTING.md) file.

## Contributing

Contributions are welcome! Please open an issue or a pull request to suggest changes or improvements.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
