import os

root_dir = '.'

for dir_name, sub_dir_list, file_list in os.walk(root_dir):
    for file_name in file_list:
        if 'README' in file_name:
            os.system('git -C ' + dir_name + ' pull')
