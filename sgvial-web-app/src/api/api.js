import {default as axios} from 'axios'

class Api {
    BASE_API = "http://localhost:9000";

    constructor() {
        this.httpClient = axios.create({
            baseURL: this.BASE_API
        });
    }

    async get(path, params) {
        const response = await this.httpClient.get(path, {
            params
        });
        return response.data;
    }
}

export default new Api();
