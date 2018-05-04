if [[ -d "$HOME/.nvm" ]]; then
  echo "FOUND NVM"
else
  echo "NOT FOUND"
fi

# echo $?
# # if [ `echo $VERSION | grep -c '^[0-9]\+\.[0-9]\+\.[0-9]\+$'` -ne 1 ]
# if [ $? -eq 0 ]; then
# #
# # # if [ `type nvm &> /dev/null` -ne 0 ]; then
#   echo "NVM Found"
# else
#   echo "NOT FOUND"
# fi
