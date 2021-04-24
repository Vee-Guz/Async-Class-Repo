import subprocess #subprocess library able to put commands to commandprompt

def main():

   # get raw information from command 'systeminfo'
   sysInfo = subprocess.check_output("systeminfo")

   # split sysInfo lines
   lines = sysInfo.splitlines()

   #NOTE: lines hold binary strings,to decode use "string".decode("utf8")

   # for every str find and print information
   for (i=0; i<lines.length(); i++)
      encoding = "utf8" #format of current strings

      decodeStr = lines[i].decode(encoding)

      #look for particular word in each str
      if (decodeStr.find("OS Name") == 0)syc
         print(decodeStr)


if (__name__ == '__main__'):
   main()

