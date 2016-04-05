# manet-dockerfile
Manet is a website screenshot service provided by Node.js, SlimerJS and PhantomJS. It was created by Vladislav Bauer and its source code can be found here: https://github.com/vbauer/manet

This Dockerfile allows you to run Manet inside a Docker container. To use it, create a new instance as usual:

    $ sudo docker run --name=manet -p=8891:8891 pdelsante/manet

Now you can connect to:

    http://127.0.0.1:8891

Once the docker instance is created, you can control it by running:

    $ sudo docker start manet
    $ sudo docker stop manet
