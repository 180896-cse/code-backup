
def logo():    
	hello = """
       ,________________________PYTHON_3___SCRAPER_________________________________,
      [ ,.__.____,                                                                 ] 
      |[_,, $,__+] (@)                     ,_____,                                 |
      |    |#|     ,~, ,,      ,, , ,  , , |((~))| Systems                         |
      |    |#|     [#] |^.    .^| |=|  |=|   '^'                                   |
      | .._|#|     |$| || '\// || |$'__'$|   |^|                                   |
      |  \%_./     [%] [_] '' [_] [..__..]   [*]   ---- Hungama Scraper            |
      [,__________________________________________________________________________,]
"""
	color_list = ['\033[1;30m','\033[1;31m','\033[1;32m','\033[1;33m','\033[1;34m','\033[1;35m','\033[1;36m','\033[1;37m','\033[1;38m']
	end_c = '\033[1;m'
	import random
	k = 9
	ran = int(random.random()*k)
	print(color_list[ran] + hello + end_c)
logo()
print("Hey!!!!!!")



