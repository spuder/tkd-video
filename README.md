# TKD Videos

Taekwondo Videos

![](https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/1599px-Flag_of_South_Korea.svg.png)

Images are generated with [spuder/gifr:latest](https://github.com/spuder/gifr)


Videos are hosted in this notion page / gifcat

https://www.notion.so/d9c0017ffc374ce09bdc8f55e25d30a5?v=75c81de4d5c848949af089063419b910

## Readme.md updates

A makefile is included to generate this readme. See `templates/README.md.erb` for the template

```
make templates
````

# Junior Green

| Filename | Preview | 
|---|---|

# Senior Green

| Filename | Preview | 
|---|---|

# Junior Blue

| Filename | Preview | 
|---|---|
| JuniorBlueSparring-part1-640.gif | ![](https://media.giphy.com/media/Y2Vp9aYs7KB4YJjZdU/giphy.gif)| 
| JuniorBlueSparring-part2-640.gif | ![](https://media.giphy.com/media/IJTrcKtdSLlQjeYJsH/giphy.gif)| 

# Senior Blue

| Filename | Preview | 
|---|---|
| SeniorBlueSparring-part1-640.gif | ![](https://media.giphy.com/media/lpvDQo3px8VUxyxXaq/giphy.gif)| 
| SeniorBlueSparring-part2-640.gif | ![](https://media.giphy.com/media/Nz3ey0rOcuzp5wUnpu/giphy.gif)| 
| SeniorBlueKicking-part2-640.gif | ![](https://media.giphy.com/media/zXcF6l14fnJog5D0OP/giphy.gif)| 
| SeniorBlueKicking-part1-640.gif | ![](https://media.giphy.com/media/PuruVzNyKySFAjciou/giphy.gif)| 
| SeniorBlueForm-complete-640.gif | ![](https://media.giphy.com/media/IVMLroW0Ct5F27aTVP/giphy-downsized-large.gif)| 
| Taegeuk4Jang-complete-640.gif | ![](https://media.giphy.com/media/oBm3s8K0doYjSWOVC2/giphy.gif)| 

# Junior Brown

| Filename | Preview | 
|---|---|
| JuniorBrownSparring-part2-640.gif | ![](https://media.giphy.com/media/RjpuUuSC6FH4zb4QnD/giphy.gif)| 
| JuniorBrownSparring-part1-640.gif | ![](https://media.giphy.com/media/aor2iyIkfZAq3sCp36/giphy.gif)| 
| JuniorBrownKicking-part2-640.gif | ![](https://media.giphy.com/media/I9vKoToiXGpLa4gtUV/giphy.gif)| 

# Senior Brown

| Filename | Preview | 
|---|---|


# Junior Red

| Filename | Preview | 
|---|---|
| JuniorRedSparring-part2-640.gif | ![](https://media.giphy.com/media/0ZFJ24wFme03SMWDVy/giphy.gif)| 
| JuniorRedSparring-part1-640.gif | ![](https://media.giphy.com/media/sb1oQUrB5NXQP0FJf2/giphy.gif)| 
| JuniorRedKicking-part2-640.gif | ![](https://media.giphy.com/media/7KSgR8N0GI3TUwbpYd/giphy.gif)| 
| JuniorRedKicking-part1-640.gif | ![](https://media.giphy.com/media/41PAO6zZ8QqyewezQx/giphy.gif)| 
| JuniorRedNunchuck | ![](https://media.giphy.com/media/VgWBfy0Me4zVeACoz1/giphy-downsized-large.gif)| 
| JuniorRedForm | ![](https://media.giphy.com/media/9o1d43XADKPJyBrXvX/giphy-downsized-large.gif)| 
| Taegeuk7Jang-complete-640.gif | ![](https://media.giphy.com/media/tJci3mxQ3RL6JUkBGq/giphy.gif)| 

# Senior Red

| Filename | Preview | 
|---|---|
| SeniorRedForm-complete-640.gif | ![](https://media.giphy.com/media/B5r3Yumgl83VJ6EGyS/giphy-downsized-large.gif)| 
| SeniorRedKicking-part1-640.gif | ![](https://media.giphy.com/media/KrxbSMg5924Q6HU3fV/giphy.gif)| 
| SeniorRedKicking-part2-640.gif | ![](https://media.giphy.com/media/Ckj0woYpjv0uvgWC7a/giphy.gif)| 
| SeniorRedSparring-part1-640.gif | ![](https://media.giphy.com/media/IEW9UEg2qyeCumfMA7/giphy.gif)| 
| SeniorRedSparring-part2-640.gif | ![](https://media.giphy.com/media/5xTEBSWE1lcNy7B5M7/giphy.gif)| 
| Taegeuk8Jang-complete-640.gif | ![](https://media.giphy.com/media/eHZdU16068fBluCZj6/giphy.gif)| 



## Usage

A `Makefile` is included to simplify making videos

```
make all
```

Or to make a single video

```
make 3 # This will create taegeuk3 videos
```



Docker Compose (Alternative)

```
docker compose -f docker-compose.taegeuk1.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk2.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk3.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk4.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk5.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk6.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk7.yaml up --remove-orphans
docker compose -f docker-compose.taegeuk8.yaml up --remove-orphans
```

Bash (Not Recomended)

```
for filename in *.env; do
    echo $filename
    unset RESOLUTION
    unset FPS
    unset VIDEO_URL
    source $filename
    docker run \
      -v $(pwd)/input:/input \
      -v $(pwd)/output:/output \
      -e VIDEO_URL \
      -e SPLITS \
      -e INPUT_FILE \
      -e OUTPUT_FILE \
      -e RESOLUTION \
      -e FPS \
      gifr
done
```

Generating lower resolution 480p / 8fps

```
for filename in *.env; do
    echo $filename
    unset VIDEO_URL
    source $filename
    export RESOLUTION=640
    export FPS=10
    docker run \
      -v $(pwd)/input:/input \
      -v $(pwd)/output:/output \
      -e VIDEO_URL \
      -e SPLITS \
      -e INPUT_FILE \
      -e OUTPUT_FILE \
      -e RESOLUTION \
      -e FPS \
      gifr
done
```