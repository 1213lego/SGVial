import {applyMiddleware, combineReducers, createStore} from 'redux';
import {segmentsReducer} from './reducers/segments-reducer';
import thunk from 'redux-thunk';


const rootReducer = combineReducers({
    segmentsPage: segmentsReducer
});

export const storage = createStore(
    rootReducer,
    applyMiddleware(thunk)
);

