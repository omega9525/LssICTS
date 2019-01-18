import numpy as np
import os

unames_list=open('username_list.txt').readlines()
#remove the new lines from the username list
for uu in range(0,len(unames_list)):
   unames_list[uu]=unames_list[uu][:-1]


#list of files to copy
#fcopy_list=['../lss-handson/Tutorial/Tutorial-1.ipynb']
fcopy_list=['../lss-handson/Tutorial/Tutorial-1.ipynb','../lss-handson/Tutorial/Tutorial-2.ipynb','../lss-handson/Tutorial/Tutorial-1-solution.ipynb']

#root_dir='jnk/'
root_dir='../lss-handson/'
main_dir='../lss-handson/'

for uu, uname in enumerate(unames_list):
   if( not os.path.isdir(root_dir+uname)):
      #os.mkdir(root_dir+uname)
      print('creating:', root_dir+uname)

   for fname in fcopy_list:
      comm='cp %s %s%s/.'%(fname,root_dir,uname)
      #print(comm)
      #os.system(comm)
      os.system('mkdir %s%s/tmp'%(root_dir,uname))
      os.system('mkdir %s%s/tmp/PairCount'%(root_dir,uname))
      os.system('mkdir %s%s/tmp/XI2D'%(root_dir,uname))
      os.system('mkdir %s%s/tmp/WP'%(root_dir,uname))

print('move all directory inside jnk to : %s'%main_dir)

