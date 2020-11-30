import React, {useEffect, useState} from 'react';
import {Button, Icon, Menu, Table} from 'semantic-ui-react';
import {useDispatch, useSelector} from "react-redux";
import {getSegmentsPage} from "../redux/actions/segments-actions";

function SegmentsTable(props) {
    const dispatch = useDispatch();
    const [pageIndex, setPageIndex] = useState(0);
    const segmentsPage = useSelector(state => state.segmentsPage).toObject();
    useEffect(() => {
        dispatch(getSegmentsPage(pageIndex, 30));
    }, [pageIndex]);
    const segments = segmentsPage.results || [];
    const totalPages = (segmentsPage.totalPages || 0) + 1;
    const pages = Array.from({length: totalPages}, (v, i) => i + 1);
    const handlePageIndex = (newIndex) => {
        if (newIndex >= 0 && newIndex < totalPages) {
            setPageIndex(newIndex)
        }
    }
    return (
        <Table celled>
            <Table.Header>
                <Table.Row>
                    <Table.HeaderCell>Id</Table.HeaderCell>
                    <Table.HeaderCell>Logitud</Table.HeaderCell>
                    <Table.HeaderCell>Tipo Vía</Table.HeaderCell>
                    <Table.HeaderCell>Estrato</Table.HeaderCell>
                    <Table.HeaderCell>Nomenclatura</Table.HeaderCell>
                    <Table.HeaderCell>Calzadas</Table.HeaderCell>
                    <Table.HeaderCell>Bordillos</Table.HeaderCell>
                </Table.Row>
            </Table.Header>

            <Table.Body>
                {
                    segments.map(segment => (
                        <Table.Row key={segment.id}>
                            <Table.Cell>{segment.id}</Table.Cell>
                            <Table.Cell>{segment.length}</Table.Cell>
                            <Table.Cell>{segment.roadTypeName}</Table.Cell>
                            <Table.Cell>{segment.stratum}</Table.Cell>
                            <Table.Cell>
                                <Button size='small' primary icon="eye"/>
                            </Table.Cell>
                            <Table.Cell>
                                <Button size='small' primary icon="eye"/>
                            </Table.Cell>
                            <Table.Cell>
                                <Button size='small' primary icon="eye"/>
                            </Table.Cell>
                        </Table.Row>
                    ))
                }
            </Table.Body>
            <Table.Footer>
                <Table.Row>
                    <Table.HeaderCell colSpan='4'>
                        <Button
                            floated='right'
                            icon
                            labelPosition='left'
                            primary
                            size='small'
                        >
                            <Icon name='add circle'/> Agregar Segmento
                        </Button>
                    </Table.HeaderCell>
                    <Table.HeaderCell colSpan='7'>
                        <Menu floated='right' pagination>
                            <Menu.Item as='a'
                                       onClick={() => handlePageIndex(pageIndex - 1)}
                                       icon>
                                <Icon name='chevron left'/>
                            </Menu.Item>
                            {
                                pages.map(
                                    page => (
                                        <Menu.Item key={page}
                                                   onClick={() => handlePageIndex(page - 1)}
                                                   as='a'>
                                            {page}
                                        </Menu.Item>
                                    )
                                )
                            }
                            <Menu.Item as='a'
                                       onClick={() => handlePageIndex(pageIndex + 1)}
                                       icon>
                                <Icon name='chevron right'/>
                            </Menu.Item>
                        </Menu>
                    </Table.HeaderCell>
                </Table.Row>
            </Table.Footer>
        </Table>
    )
}

export default SegmentsTable

