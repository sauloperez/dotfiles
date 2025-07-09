function tat {
  tmux new-session -As "$(basename "$PWD" | tr . -)"
}
