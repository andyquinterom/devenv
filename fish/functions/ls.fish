function ls --wraps='exa -lh' --description 'alias ls=exa -lh'
  exa -lh $argv; 
end
