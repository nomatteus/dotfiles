if [ $SSH_TTY ]; then
  PS1="$RED\u@\h $RED\w $LIGHTRED\$(current_git_branch)\$(git_special)$LIGHTRED$ $NC"
else
  PS1="$GREEN\h $RED\w $LIGHTRED\$(current_git_branch)\$(git_special)$LIGHTRED$ $NC"
fi