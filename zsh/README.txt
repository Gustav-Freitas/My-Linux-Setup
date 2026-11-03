INSTALAÇÃO 1. Instale Zsh e Git: sudo apt update sudo apt install zsh
git

2.  Crie a pasta para os plugins: mkdir -p ~/.zsh/plugins

3.  Baixe os plugins oficiais: git clone
    https://github.com/zsh-users/zsh-autosuggestions
    ~/.zsh/plugins/zsh-autosuggestions git clone
    https://github.com/zsh-users/zsh-syntax-highlighting
    ~/.zsh/plugins/zsh-syntax-highlighting

    Se as pastas já existirem, não repita o clone. Consulte a
    documentação oficial para atualizar.

4.  Faça backup da configuração atual, se houver: [ -f ~/.zshrc ] && cp
    ~/.zshrc ~/.zshrc.bak

5.  Na raiz do repositório, copie a configuração: cp zsh/.zshrc ~/.zshrc

    Se você baixou apenas esta pasta, entre nela e execute: cp .zshrc
    ~/.zshrc

6.  Verifique se há erros de sintaxe: zsh -n ~/.zshrc

7.  Abra o Zsh para testar: zsh

    Teste o Tab, as sugestões com a seta para a direita, o realce de
    sintaxe e a branch Git dentro de um repositório.

8.  Para definir o Zsh como shell padrão: chsh -s “$(command -v zsh)”

    Feche e abra o terminal novamente. Se necessário, encerre a sessão e
    entre novamente.

9.  Confira: echo $SHELL echo $ZSH_VERSION

ATUALIZAÇÃO DOS PLUGINS git -C ~/.zsh/plugins/zsh-autosuggestions pull
git -C ~/.zsh/plugins/zsh-syntax-highlighting pull

O QUE A CONFIGURAÇÃO OFERECE - Histórico com até 10.000 entradas e
compartilhamento entre sessões. - Autocomplete nativo do Zsh. -
Sugestões de comandos baseadas no histórico. - Realce de sintaxe. -
Prompt de duas linhas em roxo e azul. - Exibição da branch Git. -
Aliases para listar arquivos, navegar entre pastas e atualizar o Debian.

OBSERVAÇÕES - .zshrc é um arquivo oculto por começar com ponto. -
zsh-syntax-highlighting deve ser carregado por último no .zshrc. - Os
comandos e procedimentos podem mudar. Antes de instalar ou atualizar,
confira os repositórios e a documentação oficial. - Em outras
distribuições, os comandos de instalação de pacotes podem ser
diferentes. - Faça backup antes de substituir sua configuração.

PROJETOS OFICIAIS https://github.com/zsh-users/zsh-autosuggestions
https://github.com/zsh-users/zsh-syntax-highlighting
https://www.zsh.org/
