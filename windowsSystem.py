import subprocess #subprocess library able to put commands to commandprompt

def main():

   # get raw information from command 'systeminfo'
   sysInfo = subprocess.check_output("systeminfo")

   # split sysInfo lines
   lines = sysInfo.splitlines()

   #NOTE: lines hold binary strings,to decode use "string".decode("utf8")

   # for every str find and print information
   for str in lines:
      encoding = "utf8" #format of current strings

      decodeStr = str.decode(encoding)

      #look for particular word in each str
      if (decodeStr.find("OS Name") == 0):
         print(decodeStr)

      if (decodeStr.find("Registered") == 0):
         print(decodeStr)

      if (decodeStr.find("Product") == 0):
         print(decodeStr)


if (__name__ == '__main__'):
   main()

