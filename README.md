# Bromite-prebuilt
Include the 'Bromite' Browser (Chromium fork) into a KitKat build;

The ARM compiled version of the 'Bromite' fork of Chromium, see https://www.bromite.org/ and https://github.com/bromite/bromite is used here to be included as a prebuilt.

## Credits
I have only taken the apk from https://www.bromite.org/, extracted the respective shared libs into an own subdirectory and created an 'Androik.mk' file around.
All credits go to the Chromium project (https://www.chromium.org/Home) and the developers behind Bromite.
Please visit the respective pages listed above for more information and the respective Copyright and License

## Important note
Please use this repository **only** for KitKat builds in ARM architecture. For other android releases, the 'Android.mk' file and structure of this repo would need to be adapted accordingly.
