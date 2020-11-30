import api from '../../api/api'

export const SET_ROAD_TYPES = "SET_ROAD_TYPES";

export function setRoadTypes(payload) {
    return {
        type: SET_ROAD_TYPES,
        payload
    }
}

export function loadRoadTypes() {
    return async function (dispatch, getState) {
        if (getState().constants.get('roadTypes').length === 0) {
            dispatch(setRoadTypes(await api.get('/road-types')));
        }
    }
}
