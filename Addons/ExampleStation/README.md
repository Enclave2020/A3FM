#Creating new station:
1. Copy this folder.
2. Change "FM\Stations" to your new station name "FM\EliteFM" in file **$PREFIX$**.
3. Classnames in **music.cpp** "FM\Stations" to your station name.
4. Select (in mind) radio files range (0, 100, 200 .. 900).
5. Rename all "radioX" in your range. For example: You choose 900. Set classnames to "radio900", "radio901", "radio902", up to 100 music.
6. Change all sound paths in **music.cpp** to your. Example: sound[] = {"\FM\EliteFM\radio\901.ogg", db+0, 1.0} (path is prefix);
7. Open **config.cpp** and change "FM_ExampleFM" to your station name. Item **name** is display name. **trackBegin** is radio range.
8. Add 900.ogg, 901.ogg .. and others to radio folder.
9. Pack to PBO, sign it.

? ? ?
PROFIT!