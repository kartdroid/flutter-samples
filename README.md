# flutter-samples
A Repo that contains Flutter Sample Apps

# Flutter Bash Profile Config 
- Add the below code to bash rc / profile 
  ```bash
  ####### FLUTTER BIN SHOULD BE IN PATH #####
  export PATH=$PATH:$HOME/Softwares/flutter/bin

  ####### MAVEN ENV VARIABLES ##########
  export ANDROID_HOME=$HOME//Library/Android/sdk

  ######## REACT NATIVE REQUIREMENT ########
  export PATH=$PATH:$ANDROID_HOME/emulator
  export PATH=$PATH:$ANDROID_HOME/tools
  export PATH=$PATH:$ANDROID_HOME/tools/bin
  export PATH=$PATH:$ANDROID_HOME/platform-tools
  ```

# Flutter SDK Repo Move 
If we move Flutter SDK to any other REPO  We need to setup the following:
- Remove `.packages` from the project and run the following commands
  ```
  flutter doctor 
  flutter packages get
  ```

# MateialApp Mandatory params
- Material App needs home property populated , else we will get an assertion error 
