# Neovim Config

NvChad 기반 개인 설정. Neovim 0.10+ 필요.

## 지원 언어

- Python
- C / C++
- Rust
- Lua

## 설치

### 1. Neovim (0.10+)

```bash
# Ubuntu - 빌드 또는 공식 PPA 사용
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt install neovim

# macOS
brew install neovim
```

### 2. 필수 시스템 패키지

```bash
# Ubuntu
sudo apt install gcc g++ python3 git xclip

# macOS
brew install gcc python3 git
# macOS는 pbcopy/pbpaste가 기본 내장
```

### 3. Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup component add rust-analyzer
```

### 4. tmux (선택)

vim-tmux-navigator 사용 시 필요.

```bash
# Ubuntu
sudo apt install tmux

# macOS
brew install tmux
```

### 5. lazygit (선택)

```bash
# Ubuntu
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name"' | sed 's/.*"v\(.*\)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# macOS
brew install lazygit
```

### 6. 설정 적용

```bash
git clone <this-repo> ~/.config/nvim
nvim  # 첫 실행 시 lazy.nvim이 플러그인 자동 설치
```

첫 실행 후 Mason이 LSP/formatter를 자동 설치합니다:
- `pyright`, `black`, `mypy`, `debugpy` (Python)
- `clangd`, `clang-format` (C/C++)
- `codelldb` (디버거)
- `rustfmt` (Rust)

## macOS 설정

`init.lua`에서 클립보드 설정을 macOS용으로 변경:

```lua
-- 이 부분을 주석 해제
vim.g.clipboard = {
  name = "macOS-clipboard",
  copy = { ["+"] = "pbcopy", ["*"] = "pbcopy" },
  paste = { ["+"] = "pbpaste", ["*"] = "pbpaste" },
  cache_enabled = 0,
}

-- 이 부분을 주석 처리
-- vim.g.clipboard = {
--   name = "ubuntu_clipboard",
--   ...
-- }
```

## 노트

- treesitter는 `v0.10.0`으로 고정 (Neovim 0.11과의 호환성)
  - Neovim 0.12로 업그레이드 시 `plugins/init.lua`에서 `tag` 제거 가능
- C++은 `compile_commands.json` 없이도 treesitter로 aerial 동작
