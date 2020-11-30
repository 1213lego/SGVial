import {Map} from "immutable";
import {SET_ROAD_TYPES} from "../actions/constans-actions";
const initialState = Map().set('roadTypes', []);
export function constantsReducer(state = initialState, {type, payload}) {
    switch (type) {
        case SET_ROAD_TYPES: {
            return state.set('roadTypes', payload);
        }
        default: {
            return state;
        }
    }
}
