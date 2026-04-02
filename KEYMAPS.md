# Neovim 단축키 & 팁 완전 정리

> Leader key = `Space`

---

## 모드 전환

| 키 | 동작 |
|---|---|
| `i` | Insert mode (커서 앞) |
| `a` | Insert mode (커서 뒤) |
| `I` | Insert mode (줄 맨 앞) |
| `A` | Insert mode (줄 맨 뒤) |
| `o` | 아래에 새 줄 + Insert |
| `O` | 위에 새 줄 + Insert |
| `v` | Visual mode |
| `V` | Visual Line mode |
| `<C-v>` | Visual Block mode |
| `R` | Replace mode |
| `<Esc>` / `jk` | Normal mode로 복귀 |
| `;` | Command mode (`:`) |

---

## 커서 이동 (Normal mode)

### 기본
| 키 | 동작 |
|---|---|
| `h` `j` `k` `l` | 좌 / 하 / 상 / 우 |
| `w` | 다음 단어 앞 |
| `b` | 이전 단어 앞 |
| `e` | 단어 끝 |
| `W` `B` `E` | 공백 기준 단어 이동 |
| `0` | 줄 맨 앞 (공백 포함) |
| `^` | 줄 첫 글자 (공백 제외) |
| `$` | 줄 맨 끝 |
| `gg` | 파일 맨 위 |
| `G` | 파일 맨 아래 |
| `{숫자}G` / `:{숫자}` | 특정 줄로 이동 |
| `%` | 매칭 괄호로 이동 |

### 화면 단위
| 키 | 동작 |
|---|---|
| `<C-d>` | 반 페이지 아래 |
| `<C-u>` | 반 페이지 위 |
| `<C-f>` | 한 페이지 아래 |
| `<C-b>` | 한 페이지 위 |
| `zz` | 커서를 화면 중앙으로 |
| `zt` | 커서를 화면 상단으로 |
| `zb` | 커서를 화면 하단으로 |
| `H` | 화면 상단으로 커서 이동 |
| `M` | 화면 중앙으로 커서 이동 |
| `L` | 화면 하단으로 커서 이동 |
| `<Leader>lj` | 10줄 아래 (중앙 유지) |
| `<Leader>lk` | 10줄 위 (중앙 유지) |

### 검색으로 이동
| 키 | 동작 |
|---|---|
| `f{char}` | 줄 내 문자 앞으로 점프 |
| `F{char}` | 줄 내 문자 뒤로 점프 |
| `t{char}` | 줄 내 문자 바로 앞까지 |
| `T{char}` | 줄 내 문자 바로 뒤까지 |
| `;` / `,` | f/t 반복 / 역방향 반복 |
| `/{패턴}` | 앞으로 검색 |
| `?{패턴}` | 뒤로 검색 |
| `n` / `N` | 다음 / 이전 검색 결과 |
| `*` | 커서 단어 앞으로 검색 |
| `#` | 커서 단어 뒤로 검색 |

### Jump list
| 키 | 동작 |
|---|---|
| `<C-o>` | 이전 위치로 |
| `<C-i>` | 다음 위치로 |
| `''` (홑따옴표 두 번) | 마지막 점프 전 위치로 |

---

## 편집 (Normal mode)

### 삭제
| 키 | 동작 |
|---|---|
| `x` | 커서 글자 삭제 |
| `dd` | 현재 줄 삭제 (레지스터에 저장) |
| `D` | 커서~줄 끝 삭제 |
| `d{motion}` | motion 범위 삭제 (`dw`, `d$`, `dG` 등) |
| `diw` | 단어 삭제 (공백 제외) |
| `daw` | 단어 삭제 (공백 포함) |
| `di"` | 따옴표 안 삭제 |
| `da"` | 따옴표 포함 삭제 |
| `di(` / `di[` / `di{` | 괄호 안 삭제 |

### 변경 (삭제 후 Insert)
| 키 | 동작 |
|---|---|
| `cc` | 현재 줄 변경 |
| `C` | 커서~줄 끝 변경 |
| `ciw` | 단어 변경 |
| `ci"` | 따옴표 안 변경 |
| `ci(` / `ci[` / `ci{` | 괄호 안 변경 |
| `ct{char}` | 문자 전까지 변경 |
| `r{char}` | 글자 하나 교체 |
| `s` | 글자 삭제 후 Insert |

### 복사 / 붙여넣기
| 키 | 동작 |
|---|---|
| `yy` / `Y` | 현재 줄 복사 |
| `y{motion}` | motion 범위 복사 |
| `yiw` | 단어 복사 |
| `p` | 커서 뒤에 붙여넣기 |
| `P` | 커서 앞에 붙여넣기 |
| `"0p` | 마지막으로 복사한 것 붙여넣기 (삭제 덮어쓰기 방지) |
| `"+y` | 시스템 클립보드로 복사 |
| `"+p` | 시스템 클립보드에서 붙여넣기 |

### 되돌리기
| 키 | 동작 |
|---|---|
| `u` | Undo |
| `<C-r>` | Redo |
| `.` | 마지막 변경 반복 |

### 들여쓰기 / 줄 조작
| 키 | 동작 |
|---|---|
| `>>` | 들여쓰기 |
| `<<` | 내어쓰기 |
| `==` | 현재 줄 자동 들여쓰기 |
| `gg=G` | 전체 파일 자동 들여쓰기 |
| `J` | 아래 줄과 합치기 |
| `~` | 대소문자 전환 |
| `gU{motion}` | 대문자로 변환 |
| `gu{motion}` | 소문자로 변환 |

---

## Visual mode

| 키 | 동작 |
|---|---|
| `v` + 이동 | 범위 선택 |
| `V` | 줄 단위 선택 |
| `<C-v>` | 블록 선택 |
| `gv` | 이전 선택 영역 다시 선택 |
| `y` | 선택 복사 |
| `d` | 선택 삭제 |
| `>` / `<` | 들여쓰기 / 내어쓰기 |
| `=` | 자동 들여쓰기 |
| `:s/old/new/g` | 선택 범위 내 치환 |

---

## 검색 & 치환

| 키 / 명령 | 동작 |
|---|---|
| `/{패턴}` | 검색 |
| `:s/old/new/` | 현재 줄 첫 번째 치환 |
| `:s/old/new/g` | 현재 줄 전체 치환 |
| `:%s/old/new/g` | 파일 전체 치환 |
| `:%s/old/new/gc` | 파일 전체 치환 (확인하며) |
| `:noh` | 검색 하이라이트 끄기 |
| `<Leader>fw` | Telescope 단어 검색 (grep) |

---

## 창 / 버퍼 / 탭 관리

### 창 분할
| 키 / 명령 | 동작 |
|---|---|
| `:sp` / `<C-w>s` | 수평 분할 |
| `:vsp` / `<C-w>v` | 수직 분할 |
| `<C-h/j/k/l>` | 창 이동 (Tmux 포함) |
| `<C-w>=` | 창 크기 균등 분할 |
| `<C-w>_` | 현재 창 최대 높이 |
| `<C-w>\|` | 현재 창 최대 너비 |
| `<C-w>q` | 현재 창 닫기 |
| `<C-w>o` | 현재 창만 남기기 |

### 버퍼
| 키 | 동작 |
|---|---|
| `<Tab>` | 다음 버퍼 |
| `<S-Tab>` | 이전 버퍼 |
| `<Leader>x` | 현재 버퍼 닫기 |
| `<Leader>b` | 새 버퍼 |
| `<C-^>` | 이전 버퍼로 전환 |
| `<Leader>fb` | 열린 버퍼 목록 (Telescope) |

---

## 파일 탐색

| 키 | 동작 |
|---|---|
| `<Leader>e` | NvimTree 파일 탐색기 토글 |
| `<Leader>ff` | Telescope 파일 찾기 |
| `<Leader>fr` | 최근 파일 목록 |
| `<Leader>fw` | 단어 검색 (grep) |
| `<Leader>fb` | 열린 버퍼 목록 |
| `gf` | 커서 아래 경로 파일 열기 |

---

## LSP (모든 언어 공통)

| 키 | 동작 |
|---|---|
| `gd` | 정의로 이동 |
| `gdv` | 정의로 이동 (수직 분할) |
| `gdh` | 정의로 이동 (수평 분할) |
| `gD` | 선언으로 이동 |
| `gi` | 구현으로 이동 |
| `gr` | References 목록 |
| `K` | Hover 문서 |
| `<Leader>ra` | Rename |
| `<Leader>ca` | Code action |
| `[d` / `]d` | 이전 / 다음 진단(Diagnostic) |
| `<Leader>d` | 진단 메시지 보기 |
| `gpd` | Goto preview definition (goto-preview) |
| `gpi` | Goto preview implementation |
| `gpr` | Goto preview references |
| `gP` | Preview 창 닫기 |

---

## C / C++ (clangd)

| 키 | 동작 |
|---|---|
| `<Leader>cc` | 컴파일 + 실행 (`bin/` 출력) |
| `<Leader>cb` | 컴파일만 |
| `<Leader>cd` | 컴파일 (디버그 심볼 `-g`) |
| `<Leader>co` | 컴파일 (최적화 `-O2 -Wall`) |
| `<Leader>h` | `.h` ↔ `.cpp` 전환 |
| `<Leader>st` | AST 보기 |
| `<A-k>` / `<Leader>k` | Hover 문서 (C/C++ 버퍼 한정) |

> 빌드 결과물은 소스 파일과 같은 디렉토리의 `bin/` 폴더에 저장됩니다.
> `compile_commands.json` 없으면 프로젝트 루트에 `compile_flags.txt`를 만드세요.

---

## Rust (rustaceanvim)

| 키 | 동작 |
|---|---|
| `<Leader>k` | Hover actions |
| `<Leader>dd` | Debuggables 목록 |
| `<Leader>dr` | 디버그 시작 |
| `<Leader>rr` | Runnables 목록 |
| `<Leader>rc` | 현재 타겟 실행 |
| `<Leader>tt` | Testables 목록 |
| `<Leader>ca` | Code action |
| `<Leader>em` | 매크로 재귀 확장 |
| `<Leader>mu` / `<Leader>md` | 아이템 위 / 아래로 이동 |
| `<Leader>ee` | 에러 설명 |
| `<Leader>od` | docs.rs 문서 열기 |
| `<Leader>pm` | 부모 모듈로 이동 |
| `<Leader>ws` | 워크스페이스 심볼 검색 |
| `<Leader>jl` | 줄 합치기 |
| `<Leader>sr` | 구조적 검색/치환 |
| `<Leader>vg` | Crate 그래프 보기 |
| `<Leader>vs` | Syntax tree 보기 |
| `<Leader>vh` / `<Leader>vm` | HIR / MIR 보기 |
| `<Leader>fc` | Fly check 실행 |

---

## Python

| 키 | 동작 |
|---|---|
| `<Leader>pr` | 현재 파일 실행 |
| `<Leader>pl` | 현재 줄을 버퍼에 추가 후 실행 |
| `<Leader>plu` | 마지막 실행 줄~현재 줄 누적 실행 |
| `<Leader>pld` | 현재 줄~파일 끝 누적 실행 |
| `<Leader>pc` | Python 실행 버퍼 초기화 |
| `<Leader>dpr` | DAP: 현재 테스트 메서드 실행 |

> `<Leader>pl` 계열은 줄 단위로 코드를 누적해서 실행하는 기능입니다.
> `<Leader>pc`로 초기화 전까지 이전 줄들이 컨텍스트로 유지됩니다.

---

## DAP (디버거)

| 키 | 동작 |
|---|---|
| `<Leader>dc` | Continue (계속 실행) |
| `<Leader>dl` | Step into |
| `<Leader>dj` | Step over |
| `<Leader>dk` | Step out |
| `<Leader>db` | 브레이크포인트 토글 |
| `<Leader>dbc` | 조건부 브레이크포인트 설정 |
| `<Leader>de` | 디버거 종료 |
| `<Leader>drl` | 마지막 실행 다시 실행 |
| `<Leader>dus` | 변수 스코프 사이드바 열기 |
| `<Leader>dx` | DapTerminate |

> DAP UI는 디버거 시작 시 자동으로 열리고 종료 시 자동으로 닫힙니다.

---

## Git

| 키 | 동작 |
|---|---|
| `<Leader>lg` | LazyGit 열기 |

---

## 코드 구조 탐색 (Aerial)

| 키 | 동작 |
|---|---|
| `<Leader>a` | Aerial 토글 |
| `}` | 이전 심볼로 이동 |
| `{` | 다음 심볼로 이동 |

---

## 토글

| 키 | 동작 |
|---|---|
| `<Leader>tf` | Format on save 토글 |
| `<Leader>tl` | LSP 토글 (stop / restart) |

---

## NvChad 기본

| 키 | 동작 |
|---|---|
| `<Leader>th` | 테마 변경 |
| `<Leader>ch` | Cheatsheet (전체 키맵) |
| `<Leader>n` | 줄 번호 토글 |

---

## 유용한 명령어

| 명령어 | 동작 |
|---|---|
| `:Mason` | LSP / 포맷터 설치 관리 |
| `:Lazy` | 플러그인 관리 |
| `:LspInfo` | 현재 버퍼 LSP 상태 |
| `:ConformInfo` | 현재 버퍼 포맷터 확인 |
| `:noh` | 검색 하이라이트 끄기 |
| `:w` | 저장 |
| `:wq` / `:x` | 저장 후 종료 |
| `:q!` | 저장 없이 종료 |
| `:e {파일}` | 파일 열기 |
| `:r {파일}` | 현재 위치에 파일 내용 삽입 |
| `:set paste` | 붙여넣기 모드 (자동 들여쓰기 비활성) |

---

## 포맷터

| 언어 | 포맷터 | 스타일 |
|---|---|---|
| Lua | stylua | 저장 시 자동 |
| C / C++ | clang-format | Google style, 저장 시 자동 |
| Python | black (conform) | 저장 시 자동 |

---

## 설치된 LSP / 도구

| 종류 | 목록 |
|---|---|
| LSP | pyright, clangd, rust-analyzer, html, cssls |
| Formatter | black, clang-format |
| Linter | mypy |
| DAP | debugpy, codelldb |

---

## 실전 팁

- **`.` 반복**: 마지막 변경을 `.`으로 반복하면 빠르게 같은 작업 반복 가능
- **`ci{` 패턴**: 함수 본문, 블록 내부를 빠르게 교체할 때 유용
- **`*`로 검색**: 커서 위 단어를 바로 검색, `cgn`과 조합하면 rename처럼 사용 가능
- **`<C-v>` 블록 선택**: 여러 줄에 동시에 텍스트 삽입/삭제 가능
- **레지스터 `"0`**: `dd`로 삭제해도 마지막 yank를 `"0p`로 붙여넣기 가능
- **`gf`**: `#include "foo.h"` 같은 줄에서 바로 파일 열기
- **`<C-]>`**: ctags 기반 정의로 이동 (LSP `gd`와 유사)
- **매크로**: `q{a}` 녹화 시작 → 작업 → `q` 종료 → `@{a}` 실행 → `@@` 반복
