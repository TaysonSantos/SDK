FROM gitpod/workspace-full

USER gitpod

ENV ANDROID_SDK_ROOT=/home/gitpod/android-sdk
ENV PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

RUN mkdir -p $ANDROID_SDK_ROOT/cmdline-tools && \
    cd $ANDROID_SDK_ROOT/cmdline-tools && \
    wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip -O tools.zip && \
    unzip tools.zip -d temp && \
    mv temp/cmdline-tools latest && \
    rm -rf temp tools.zip
