if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/happyboy05/dfan.git /movierobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /movierobot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
