import {applyMiddleware, combineReducers, createStore, compose} from 'redux';
import {segmentsReducer} from './reducers/segments-reducer';
import thunk from 'redux-thunk';
import {constantsReducer} from "./reducers/constants-reducers";
import {loadRoadTypes} from "./actions/constans-actions";
import { reducer as formReducer } from 'redux-form'


const rootReducer = combineReducers({
    segmentsPage: segmentsReducer,
    constants: constantsReducer,
    form: formReducer
});
const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;
export const storage = createStore(
    rootReducer,
    composeEnhancers(applyMiddleware(thunk))
);
storage.dispatch(loadRoadTypes());

