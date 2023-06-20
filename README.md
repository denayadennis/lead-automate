The script is already executable by default

but if it is not, then use `chmod u+x create-profile.sh` to make it executable


and `./create-profile.sh` to run the script

### Tips

Once the script has run it will create a folder inside the assets with the name of expert.

Inside the expert's `.md` file look for the image link `image: "assets/images/profiles/Dut-Andrew-Kulang/Dut-Andrew-Kulang`

`assets/` -> means that inside the assests folder

`assets/images/` -> means that there a folder called images inside assets

`assets/images/profiles/` there is again another folder called profiles

`assets/images/profiles/Dut-Andrew-Kulang/` Dut-Andrew-Kulang folder contains the pictures of an expert by the name of Dut Andrew Kulang

`assets/images/profiles/Dut-Andrew-Kulang/Dut-Andrew-Kulang` -> rename expert picture to Dut-Andrew-Kulang.jpg (with dashes then add the image format type, jpg, jpeg, png)


feature suggestions

1. When creating a new profile, the script should be able to check in the `.archived` folder if the expert already had his/her profile archived. if match found the script should suggest un-archiving it with the options to choose `yes/no`

2. Create a script for archiving profiles