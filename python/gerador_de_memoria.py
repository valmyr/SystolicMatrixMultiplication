import numpy as np
import sys
import random as rd
def create_matrix(N):
  y = np.zeros((N,N),dtype=int)
  for i in range(N):
    for j in range(N):

      #if(i==j):
      y[i][j] = rd.randint(0,9)
  return y
def create_matrixI(N):
  y = np.zeros((N,N),dtype=int)
  for i in range(N):
    for j in range(N):

      if(i==j):
        y[i][j] = 1
      else:
        y[i][j] =0
  return y
def print_m(y,N):
  for i in range(0,N,1):
    for j in range(0,N,1):
      print(f'0x{y[i][j]:1} ',end='')
    print()

def empacotamento(y,N):
  linhas = []
  colunas = []
  WIDTH = 1
  colunas.append(('0'*((N-2)*WIDTH)+'ff'))
  colunas.append(('0'*((N-2)*WIDTH)+'ff'))
  for i in range(0,N,1):
    str=''
    for j in range(0,N-1,2):
      
      str+=f'{y[i][j]:1}{y[i][j+1]:1}'
    colunas.append(str)
  colunas.append(('0'*((N-2)*WIDTH)+'ad'))
  colunas.append(('0'*((N-2)*WIDTH)+'da'))
  return colunas
def code_pl2ps(N):
  ps2pl = []
  WIDTH=1
  for i in range(3*N+N+7):
    ps2pl.append(('0'*((N-2)*WIDTH)+'ea'))

  return ps2pl
  

N =int(sys.argv[1])
if(int(sys.argv[2])):
    print('memory_initialization_radix=16;\nmemory_initialization_vector=')
    y = create_matrixI(N)
    #print_m(y,N)
    y0 = empacotamento(y,N)
    for i in y0:
      print(i,end=',\n')
    y = create_matrix(N)
    y0 = empacotamento(y,N)
    for i in y0:
      print(i,end=',\n')
    y00 = code_pl2ps(N)
    for i in range(len(y00)):
      if(i < len(y00)-1):
        print(y00[i]+',')
      else:
        print(y00[i])
else:
    print("vec_c_teste")
    y = create_matrix(N)
    #print_m(y,N)
    y0 = empacotamento(y,N)
    y0 = ['0x'+y0[i] for i in ran]
    for i in range(len(y0)):
        print(y0[i:i+2])
    y = create_matrix(N)
    y0 = empacotamento(y,N)
    for i in y0:
      print(i,end=',\n')
    y00 = code_pl2ps(N)
    for i in range(len(y00)):
      if(i < len(y00)-1):
        print(y00[i]+',')
      else:
        print(y00[i])
  