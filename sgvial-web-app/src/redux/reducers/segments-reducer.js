import {Map as map} from 'immutable';
import {SET_SEGMENTS_PAGE} from '../actions/segments-actions';


export function segmentsReducer(state = map(), {type, payload}) {
    switch (type) {
        case SET_SEGMENTS_PAGE: {
            return map(payload);
        }
        default: {
            return state
        }
    }
}
