#Docker + DeXRAY
**Dockerfile + bash + DeXRAY.pl == Good Day**

##Installation:

```bash
git clone this project
docker build --no-cache -t dexray .
docker run --rm -v $(pwd):/data dexray -i /data/zabolelwe.klq -o /data/report.csv
```
