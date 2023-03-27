# Youtube DL Web Interface

## Usage

### Frontend

```
ghcr.io/rashkash103/youtube-dl-web-frontend
```

Frontend image running on NGINX.

#### Environment Variables

| Environment Variable | Description                                                    |
|----------------------|----------------------------------------------------------------|
| `API_HOST`           | The hostname of the API server. Defaults to `youtube-dl-api`.  |
| `API_PORT`           | The port the API server is running on. Defaults to `4000`.     |

### API

```
ghcr.io/rashkash103/youtube-dl-web-api
```

API running on FastAPI. Runs on port 4000. No configuration available.


## Credit

All credit goes to [xxcodianxx](https://github.com/xxcodianxx)'s [youtube-dl-web](https://github.com/xxcodianxx/youtube-dl-web) repo.

## License

[Mozilla Public License 2.0](https://spdx.org/licenses/MPL-2.0.html)