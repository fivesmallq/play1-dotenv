rm -fr v0.10.3.zip
rm -fr python-dotenv-0.10.3/src/dotenv
curl -L -O https://github.com/theskumar/python-dotenv/archive/v0.10.3.zip
unzip v0.10.3.zip
play_path=`dirname $(which play)`
echo "$play_path"
cp -r python-dotenv-0.10.3/src/dotenv $play_path"/framework/pym/"
mv $play_path"/framework/pym/play/commands/base.py" $play_path"/framework/pym/play/commands/base.py_bak" 
curl -sfL https://raw.githubusercontent.com/fivesmallq/play1-dotenv/master/base.py > $play_path"/framework/pym/play/commands/base.py"
