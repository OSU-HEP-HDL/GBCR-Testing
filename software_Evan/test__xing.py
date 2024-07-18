from genericpath import exists
import os
import sys
import copy
import time
import datetime
import struct
import socket
from queue import Queue
from queue import Empty  ##
import threading
#from this import i

todaystr = "QAResults"
#userdefine_dir = todaystr + '/222'
#userdefine_dir = todaystr + '/C0021'
userdefine_dir = './QAResults_3/2024-07-11_11-32-37'
store_dict = userdefine_dir

err_flag = 0
ch_flag = 0

for ch_id in range(9):
    ch_file = userdefine_dir + '/Ch' + str(ch_id) + '.TXT'
    print(ch_file)
    globals()['err_diff_len%s' % ch_id] = 0
    if exists(ch_file):
        globals()['err_diff%s' % ch_id] = []
        print('Ch', ch_id, 'exists.')
        with open("./%s/Ch%d.TXT" % (store_dict, ch_id),
            'r') as f:  # # 'a': add, will not cover previous infor
            contents = f.readlines()
        f.close()
        for line in contents:
            line_data = line.split()
            globals()['err_diff%s' % ch_id] += [int(line_data[4]) - int(line_data[3])]
            # print(globals()['err_diff%s' % ch_id])
            globals()['err_diff_len%s' % ch_id] = globals()['err_diff_len%s' % ch_id] + 1
    else:
        print('Ch', ch_id,'does not exist! Please check!')
        ch_flag = ch_flag + 1

    if  globals()['err_diff_len%s' % ch_id]>= 3:
        if (globals()['err_diff%s' % ch_id][0] == globals()['err_diff%s' % ch_id][1]) & (globals()['err_diff%s' % ch_id][1] == globals()['err_diff%s' % ch_id][2]):
            err_flag = err_flag
            #print('\nch', ch_id,' test PASS!')
        else:
            err_flag = err_flag + 1
            print('\nch%d has Error detected!!!!!\n', ch_id)
    else: 
        print('\nch', ch_id, 'needs more data!!!','Currently data length is', globals()['err_diff_len%s' % ch_id], '\n')


if ch_flag == 0:
    if err_flag == 0:
        print('\nTest PASS!!!\n')
    else:
        print('\nError detected!!!!!\n')
else:
    print('\nError caused by Ch missing!!\n')  
