# Papache

Phing script to manage drupal installations on apache virtual hosts

It provides the following targets :

*   **vhcreate**	Create a virtual host installation
*   **vhdestroy**	Delete a virtual host. 
*   **dcreate**		Download and install drupal and create an Apache virtual host
*   **ddestroy**	Delete a Drupal installation and associated virtual host. 

## Usage

### Setup

You'll need to install phing. See www.phing.info for instructions.

You'll also need to install Drush 5+. Checkout www.drupal.org/project/drush.

The papache git clone or download bundle commes with the Drush Phing Task available on www.drupal.org/project/phingdrushtask

Currently Papache assumes that you're using a debian-ish environment, so don't expect this to work anywhere else.

Then you'll need to configure the papache.properties file with your own system settings and preferences.

### Running tha thing !

You can either invoke the build script via phing directly :

    phing -f <path_to_papache>/papache.xml vhdrupal -Dvhostname=<virtual_host_name>

Or you can create a symlinked command in one of your path directories and point it to papache.sh. You'll probably want to change papache.sh to your own settings.

If you do this correctly you'll be able to write

    papache dcreate mysite.local

or

    papache vhcreate mysite.local

and

    papache vhdestroy mysite.local


## Bug reports, feature requests, etc

They're great. Patches / Pull requests are better though !


## Credits

Well, **me** i gess, but also :

* **https://github.com/reload/phing-drupal-template**
    A great phing script pour Jenkins and Drupal
* **http://drupal.org/project/phingdrushtask**
    The Phing Drush integration. Simple but it works perfectly.

