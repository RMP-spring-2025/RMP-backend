echo "RMP-user-service"
cd RMP-user-service
docker build -t rmp_us_build --file DockerfileBuild .
docker run -v .:/home/gradle/project -v gradle_cache_rmp_us:/home/gradle/.gradle rmp_us_build
cd ..

echo "RMP-product-service"
cd RMP-product-service
docker build -t rmp_ps_build --file DockerfileBuild .
docker run -v .:/home/gradle/project -v gradle_cache_rmp_ps:/home/gradle/.gradle rmp_ps_build
cd ..

echo "RMP-request-handler-service"
cd RMP-request-handler-service
docker build -t rmp_rhs_build --file DockerfileBuild .
docker run -v .:/home/gradle/project -v gradle_cache_rmp_rhs:/home/gradle/.gradle rmp_rhs_build
cd ..
