
rm /tmp/file
picUrl=$(curl -i https://raw.githubusercontent.com/Amad27/ez-validation/master/package.json)
getPic=$(curl -o /tmp/file.jpg https://imagesvc.timeincapp.com/v3/mm/image?url=https%3A%2F%2Ftimedotcom.files.wordpress.com%2F2017%2F07%2Fcow-army.jpg&w=800&c=sc&poi=face&q=85)

pic="/tmp/file.jpg"

osascript -e '
  tell application "Finder" 
  set desktop picture to POSIX file "'$pic'"
  end tell
' 
a=$(crontab -l)
echo $a

if [ -z $1 ]
then
  crontab -l > mycron
  echo "*/1 * * * * sh /tmp/bgChanger.sh 'dont_save'" >> mycron
  crontab mycron
  rm mycron
fi