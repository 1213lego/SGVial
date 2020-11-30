import React from 'react';
import {Container, Divider, Header} from 'semantic-ui-react';
import SegmentForm from "../components/segments/segment-form";
import api from '../api/api';
import {useHistory} from 'react-router-dom';

export function AddSegmentComponent(props) {
    const history = useHistory()
    const handleSubmit = async (value) => {
        try {
            const result = await api.post('/segments', value);
            history.push('/segments');
        } catch (e) {
            //TODO handle exception
            console.log(e);
        }
    }
    return (
        <Container>
            <Divider hidden/>
            <Header as='h1'>
                Crea un Segmento
            </Header>
            <SegmentForm onSubmit={handleSubmit}/>
        </Container>
    )
}
