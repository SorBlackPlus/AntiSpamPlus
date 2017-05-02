cd $home/AntiSpamPlus
figlet Running
figlet SprCpu Company
while true; do
  tmux kill-session -t AntiSpamPlus-CLI
  tmux new-session -d -s AntiSpamPlus-CLI "./Cli.sh"
  tmux detach -s Cli.sh
  tmux kill-session -t AntiSpamPlus-API
  tmux new-session -d -s AntiSpamPlus-API "./Api.sh"
  tmux detach -s Api.sh
  figlet Bots Are Running !
sleep 100000
done
