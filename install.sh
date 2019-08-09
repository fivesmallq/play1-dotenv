echo "~ download python-dotenv"
curl -L -O https://github.com/theskumar/python-dotenv/archive/v0.10.3.zip
unzip v0.10.3.zip
echo "~ get playframework path"
play_path=`dirname $(which play)`
echo "~ copy dotenv to framework pym"
cp -r python-dotenv-0.10.3/src/dotenv $play_path"/framework/pym/"
echo "~ backup base.py to base.py_bak"
mv $play_path"/framework/pym/play/commands/base.py" $play_path"/framework/pym/play/commands/base.py_bak" 
echo "~ replease base.py"
curl -sfL https://raw.githubusercontent.com/fivesmallq/play1-dotenv/master/base.py > $play_path"/framework/pym/play/commands/base.py"
echo "~ clean resources"
rm -fr v0.10.3.zip
rm -fr python-dotenv-0.10.3/src/dotenv
