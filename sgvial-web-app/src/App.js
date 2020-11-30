import React from 'react';
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom';
import {Container} from 'semantic-ui-react';
import Segments from './pagecomponents/segments';

function App() {

    return (
        <Container>
            <Router>
                <Switch>
                    <Route path="/segments">
                        <Segments/>
                    </Route>
                    <Route path="/">
                        <Segments/>
                    </Route>
                </Switch>
            </Router>
        </Container>
    );
}

export default App;
