#Creating new station:
1. Copy this folder.
2. Change "FM\ExampleFM" to your new station name "FM\EliteFM" in file **$PREFIX$**.
3. Change in **music.cpp** "ExampleFM" to your station name.
4. Select (in mind) radio files range (0, 100, 200 .. 900).
5. Change all "radioX" in your range. For example: You choose 900. Set classnames to "radio900", "radio901", "radio902", up to 100 musics.
6. Change all sound paths in **music.cpp** to your. Example: sound[] = {"\FM\ExampleFM\radio\901.ogg", db+0, 1.0};
7. Open **config.cpp** and change "FM_ExampleFM" to your station name. Then, change **stationInfo**: stationInfo[] = {"DISPLAY NAME", 900};
8. Add 900.ogg, 901.ogg .. and others to radio folder.
9. Pack to PBO
? ? ?
PROFIT!