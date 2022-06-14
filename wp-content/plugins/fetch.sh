# git clone https://github.com/wp-sync-db/wp-sync-db.git
arr=(
   https://github.com/wp-sync-db/wp-sync-db.git 
)
for KEY in "${arr[@]}"; do
   if [[ ! -d "$KEY" ]]
   then
      git clone $KEY
      cd $KEY
      echo $PWD
      # rm -rf .git
      # cd ..
   else
      echo $KEY
   fi
done

plugins=(
   svg-support.2.4.2
)
for KEY in "${plugins[@]}"; do
   if [[ ! -d "$KEY" ]]
   then
      curl -LO https://downloads.wordpress.org/plugin/$KEY.zip
      unzip $KEY.zip
      rm $KEY.zip
   else
      echo $KEY
   fi
done