FROM eclipse-temurin:8-jre-jammy
RUN apt-get update && apt-get install wget && rm -rf /var/lib/apt/lists/
WORKDIR /app/
RUN mkdir -p /app/bin && wget -O /app/bin/server.jar https://fill-data.papermc.io/v1/objects/7ff6d2cec671ef0d95b3723b5c92890118fb882d73b7f8fa0a2cd31d97c55f86/paper-1.8.8-445.jar
WORKDIR /app/data
CMD ["java", "-Xmx2G", "-jar", "/app/bin/server.jar", "--universe", "/app/data", "--plugins", "/app/data/plugins", "--spigot-settings", "/app/data/spigot.yml", "--commands-settings", "/app/data/commands.yml"]