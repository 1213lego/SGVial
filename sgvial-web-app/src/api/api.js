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
    async post(path, body) {
        const response = await this.httpClient.post(path, body);
        return response.data;
    }
}

export default new Api();
