import React from 'react';
import {Container, Header} from 'semantic-ui-react';
import SegmentsTable from '../components/segments/segments-table';

export default function Segments() {
    return (
        <Container fluid>
            <Header>
                Segmentos
            </Header>
            <SegmentsTable/>
        </Container>
    )
}
