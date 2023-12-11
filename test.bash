QCM
1 - d (ls > less : less fichier twali lina w | twali entree sortie)
2 - a
3 - c (configure envirement variables are always in /etc/login.defs (uid_min=1000,....))
4 - c (symbolic links ln -s(soft) source target)
#cp /etc/passwd /home/password
#idha ken password fichir mawjoud bch yecrasi el content mte3ou
#idha ken famch bch yasna3 fichier ismha password
#idha ken password repertoire bch yji tahtou w ya3ml fichier ismha passwd
#idha 3titou chemin taa repertoire bch yji tahtou w ya3ml fichire passwd
#fl ln nafs el principe
5 - wc(word count), nl(numbering lines of a a file content)
6 - grep(3al content wl find 3al files names) -v(fihomch negation)
7 - d(espace ta3 el egale)
8 - c
9 - chown :users a.out / chgrp users a.out
10 - find / -name "*.sql"(el * mahich obligatoire) (locate search using names only)
11 - SUID,SGID,SB(4,2,1) chmod 2755 sync.sh / chmod(cahnge moderators) g+s sync.sh

EX1
rwx r-- r-- -> 744
rw- r-S(s if x exist) --- -> 2640
rw- rws r-- -> 2674
-wx rws rwT(same) -> 5576
rw- rw- r-- -> 0664
-----------------------------------------
repertoire(ocatl calc), else literal
666 = rw-rw-rw-
-
(002) = rw-rw-r--
(bch ntal3ou el umask et vice versa)


------------------------------------
2 -a: chage -d0 user1, usermod -aG wheel user1 || ajouter la config /etc/sudoers -> user1 ALL[all hosts/machines]=(ALL)[all permissions are granted, user can run any command as any user] ALL[all commands,NOPASSWD:ALL(without password)]
  -b: chage -M30 -W6 -E 2024-01-01 user2  (ken 3tanich date ray maximum)
3 -a: groupadd -g 5000 tekup
4 -a: usermod -g users -aG tekup user1
  -b: usermod -g tekup -aG users user2
5 -a: ACL(lil others(ken mich owner wila group proprietaire donc ACL), ynajm ygoulhelkch) setfacl -m u:user1:rw /etc/hosts
  -b: setfacl -R(old) -d(new) -m(9bal el m) g:tekup:rwx /home/tekup
      setfacl -x(delete an facl) g:tekup /home/tekup
      setfacl -b /home/tekup (delete all acls)
      setfacl -k(delete the newed added ones, by default ones(-d)) /home/tekup

6: chown user2(user):user(group) /...

Script Shell
who: show all connected users
tr -s " " "x" : -s-> any number of spaces
cat -dx(delimiter) f1,4(field)

#! /bin/bash

for i in `who`
do
(pipe yji ma3 el commande)
user=`tr -s ' ' '%' $i | cut -d% -f1`
time=`tr -s ' ' '%' $i | cut -d% -f4`
done