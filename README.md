### How to run
1. Build the image: `sudo docker build -t c64 .`
2. Run the image: `sudo docker run -it --net=host --name=c64shell c64`
4. Type in a very simple Basic program
```
10 I = 1
20 PRINT "TEST NR.";I
30 I = I + 1
40 IF I<=10 GOTO 20
```
5. Run it `RUN`
6. Remove all containers if needed `sudo docker rm $(sudo docker ps -aq)`
