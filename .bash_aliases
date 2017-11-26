alias amend='git commit -a --amend --no-edit'
alias www='python -m SimpleHTTPServer'
alias mci='mvn clean install'                       
alias mvn-checkstyle='mvn checkstyle::check'        
alias mvn-pmd='mvn pmd::check'                      
alias mcir='mvn clean install && ./run.sh'          
alias mci-no-tests='mvn clean install -Dmaven.test.skip=true -Dfindbugs.skip=true -Dcheckstyle.skip=true -Dpmd.skip=true'

# https://github.com/magicmonty/bash-git-prompt
GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME=Single_line_NoExitState
if [ -e ~/.bash-git-prompt/gitprompt.sh ]; then
  # Ubuntu
  __GIT_PROMPT_DIR=~/.bash-git-prompt/
  source ~/.bash-git-prompt/gitprompt.sh
elif type brew 2> /dev/null; then
  # Mac
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

## OS specific                                      
if [ "$(uname)" == "Darwin" ]; then                 
  alias ls='ls -lG'                                 
  alias ll='ls -la'                                 
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then                                               
  alias ls='ls -lG --color'                         
  alias ll='ls -la --color'                         
  alias yarn='/usr/bin/yarn'                        
fi                                                  

