# Virtual Pipe Organ Extension - Huber Orgel Deutsch Kaltenbrunn

This virtual pipe organ is not a full organ but is very limited because it is only an extension for a real pneumatic pipe organ in Deutsch Kaltenbrunn.

The target of this project is to add reed registers to the existing organ without modifying the organ itself. If GrandOrgue is not started the organ should still be fully functional.

The UI is optimized for a small touch screen which is mounted on the console with a fixed resolution of 1024x600 px. It is not needed to show the manuals but instead big buttons for the registers.
The original organ has some couplers. Currently I cannot read the state of those couplers, therefore the couplers are reproduced on the virtual organ.

Additionally, there is a tuning button direclty on the main interface because the virtual organ needs to be retuned after starting to match the real organs tune (or better "out of tune").

Compared to a typical virtual pipe organ this organ does not have (on the main view):

* Tremulants
* Generals
* Manuals
* Pedal

For debugging purposes the manuals and pedals can be switched on with a second view. The keys are very big because otherwise you cannot touch them on the small screen.

# Installation

Install GrandOrgue and run the following code on the machine:

    git clone https://github.com/sclause2412/grandorgue-organ-huber
    cd grandorgue-organ-huber
    chmod +x install.sh
    ./install.sh

The installation script is written for a standard GrandOrgue installation on an Arch Linux machine. If you have any other setup you may do some things manually:

* Put all files except fowviel.zip and install.sh into a ZIP archive with no compression and rename it to huber.orgue
* Copy this file to your organ packages folder
* Install the font which you can find in fowviel.zip

# License

This organ is licensed under the CC BY-SA 4.0 International license. See more details in the [LICENSE](LICENSE) file or on the [Creative Commons Website](https://creativecommons.org/licenses/by-sa/4.0/).

Attention: Only the organ definition, structure, images and installation script are affected by this license. The samples and font are taken over from other projects and have different licenses (see below).

# Thanks

I do not have any own recordings of existing organgs and I do not have the knowledge to create those.

Therefore, I'm using samples from other samplesets (which are of course free).
The samples are quite "dry" which is needed because I have the acoustic from the real church and do not want to add too much artificial acoustic.

## A big thank you to:

**Lars Palo**

Im using the registers Basun 16' (Posaune 16'), Trumpet 8' (Trompete 8') and Skalmeja 8' (Schalmei 8') from his beautiful sampleset "Bureå Church, Sweden" recorded / reworked in 2023. This sampleset is licensed under CC BY-SA 2.5 Sweden. More information on Lars' website: [Lars Virtual Pipe Organs](https://familjenpalo.se/vpo/)

**Dominique Lacaud**

He has created two samplesets:
* Celeste F from year 2020 which I use for Celesta
* Steinway Model B from year 2017 which I use for Klavier

Both samplesets are licensed under GPLv2. Please have a look on his website for much more very beautiful small samplesets of different instruments: [OdfGrandOrgue](http://orgues-dominiquelacaud.fr/)

**Dmitry Barsukov**

Thank you for the beautiful font which fits perfectly to our existing organ. The font is free to use and can be found here: [dafont.com](https://www.dafont.com/fowviel.font)
