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
| JuniorBlueSparring-part1-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FY2Vp9aYs7KB4YJjZdU%2Fgiphy.gif)| 
| JuniorBlueSparring-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FIJTrcKtdSLlQjeYJsH%2Fgiphy.gif)| 

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
| JuniorBrownSparring-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FRjpuUuSC6FH4zb4QnD%2Fgiphy.gif)| 
| JuniorBrownSparring-part1-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2Faor2iyIkfZAq3sCp36%2Fgiphy.gif)| 
| JuniorBrownKicking-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FI9vKoToiXGpLa4gtUV%2Fgiphy.gif)| 

# Senior Brown

| Filename | Preview | 
|---|---|


# Junior Red

| Filename | Preview | 
|---|---|
| JuniorRedSparring-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2F0ZFJ24wFme03SMWDVy%2Fgiphy.gif)| 
| JuniorRedSparring-part1-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2Fsb1oQUrB5NXQP0FJf2%2Fgiphy.gif)| 
| JuniorRedKicking-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2F7KSgR8N0GI3TUwbpYd%2Fgiphy.gif)| 
| JuniorRedKicking-part1-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2F41PAO6zZ8QqyewezQx%2Fgiphy.gif)| 
| JuniorRedNunchuck | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FVgWBfy0Me4zVeACoz1%2Fgiphy-downsized-large.gif)| 
| JuniorRedForm | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2F9o1d43XADKPJyBrXvX%2Fgiphy-downsized-large.gif)| 
| Taegeuk7Jang-complete-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FtJci3mxQ3RL6JUkBGq%2Fgiphy.gif)| 

# Senior Red

| Filename | Preview | 
|---|---|
| SeniorRedForm-complete-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FB5r3Yumgl83VJ6EGyS%2Fgiphy-downsized-large.gif)| 
| SeniorRedKicking-part1-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FKrxbSMg5924Q6HU3fV%2Fgiphy.gif)| 
| SeniorRedKicking-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FCkj0woYpjv0uvgWC7a%2Fgiphy.gif)| 
| SeniorRedSparring-part1-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FIEW9UEg2qyeCumfMA7%2Fgiphy.gif)| 
| SeniorRedSparring-part2-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2F5xTEBSWE1lcNy7B5M7%2Fgiphy.gif)| 
| Taegeuk8Jang-complete-640.gif | ![](https%3A%2F%2Fmedia.giphy.com%2Fmedia%2FeHZdU16068fBluCZj6%2Fgiphy.gif)| 



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