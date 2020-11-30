import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import {Provider} from 'react-redux';
import {storage} from './redux/index'
import 'semantic-ui-css/semantic.min.css';

ReactDOM.render(
    <Provider store={storage}>
            <App/>
    </Provider>
    ,
    document.getElementById('root'),
);
