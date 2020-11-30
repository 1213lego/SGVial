import React from 'react';
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom';
import {Container, Divider} from 'semantic-ui-react';
import Segments from './pagecomponents/segments';
import {AddSegmentComponent} from "./pagecomponents/add-segment";

function App() {

    return (
        <Container>
            <Divider hidden/>
            <Router>
                <Switch>
                    <Route path="/segments/add-segment">
                        <AddSegmentComponent/>
                    </Route>
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
