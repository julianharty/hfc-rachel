README for the Spike to incorporate the PHET HTML5 Simulations into RACHEL

We are currently using the HEAD of the various exercises provided by the PHET project team on GitHub. So there may be incomplete versions of simulations, irrelevant code, etc. and no guarantees the exercises will be ready for people to use without problems. 

We have a shell script to download the pre-requsities and the first simulation: balancing-act. Please run it first. I suggest you create a folder first and run the script there, this should reduce the risk of making a mess of the rest of the project :) 

Here's an overview of the steps needed to test the PhET download and setup process

* git clone https://github.com/julianharty/hfc-rachel
* create a working folder e.g. ~/phet-zim
* cd to the folder
* run https://github.com/julianharty/hfc-rachel/blob/master/phet-sandbox/phet_init.sh (from wherever you git cloned it)
* Test by setting this folder as the root of a web server, I'm using nginx

== nginx setup ==
create /etc/nginx/sites-available/rachel # and add the following contents

server {
        listen 8080 default_server;
        listen [::]:8080 default_server ipv6only=on;

        root /home/jharty/phetsims-packaging;

        index index.html index.htm;

        # Make site accessible from http://localhost/
        server_name localhost;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}

sudo ln -s /etc/nginx/sites-available/rachel /etc/nginx/sites-enabled/
Remove any default configuration (assuming you don't need it)
sudo rm /etc/nginx/sites-enabled/default

sudo service nginx restart

Try accessing the server locally in a web browser e.g. http://localhost:8080/

You should see the index.html page for PhET simulations.

If you'd like to debug, try 
tail -f /var/log/nginx/error.log 

== Creating the zim file ==
See https://sourceforge.net/p/kiwix/bugs/871/ for the background. Currently we use an additional parameter --uniqueNamespace to co-locate the JavaScript files with the rest of the HTML contents. We may refine this process soon, it's an interim solution to enable the JavaScript files used by PhET to be found.

/home/julian/kiwix-other/zimwriterfs/zimwriterfs --welcome=index.html --language=eng --title=PhET --description='PhET proof-of-concept' --creator='University of Colorado' --favicon=favicon.ico --uniqueNamespace --publisher=Julian . /home/julian/phet.zim

== testing kiwix-serve ==
either use the standalone kiwix-serve program or one of the desktop clients. For desktop clients, start the server using the tools menu.

Here is an example of my local URL for a zim file called scriptedphet.zim where kiwix-serve is using port 8000. You need to match these values to whatever values you used for the zim filename and the server port. 
http://localhost:8000/scriptedphet/A/acid-base-solutions/acid-base-solutions_en.html

== optional manual cleanup ==
We can reduce the size of the zim file by removing the git-related files in the folder we're working in. If you want to run these commands, do so in the working folder where you ran the phet_init.sh script.Be careful, these commands will remove git-related files in all sub-folders from where the command is run. If in doubt, don't use them. I'm seeking cleaner, safer ways to filter out these files from the zim file we create. 

There's minimal error detection so please pay attention to the results. At some stage we may want to remove the git meta-data which halves the space needed. Here are raw commands that seem to do the relevant cleanup, run them in the relevant folder.
find . -type f | grep -i "\.git" | xargs rm
find . -type d | grep -i "\.git" | xargs rm -rf
