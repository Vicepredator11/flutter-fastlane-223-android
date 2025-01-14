FROM cimg/android:29.0
ENV PATH="/usr/local/bin/flutter/bin:${PATH}"
# Install and pre-cache Flutter.
RUN wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.2.3-stable.tar.xz && \
  tar xf flutter_linux_2.2.3-stable.tar.xz -C /usr/local/bin && \
  rm flutter_linux_2.2.3-stable.tar.xz

RUN /usr/local/bin/flutter/bin/flutter precache --no-web --no-linux --no-windows --no-fuchsia --no-ios --no-macos
RUN apt update
RUN apt install -y ruby ruby-dev rubygems
# Install fastlane.
RUN gem install fastlane -NV
RUN flutter doctor --accept-licences
RUN y
RUN y