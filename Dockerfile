ARG ARG_GRAALVM_VERSION=19.2.1

FROM oracle/graalvm-ce:$ARG_GRAALVM_VERSION

# Working Directory
RUN mkdir /app
WORKDIR /app

# Include Native Image Support
RUN $JAVA_HOME/bin/gu install native-image
