import React from 'react';
import {Form, Header} from 'semantic-ui-react';
import {useSelector} from 'react-redux';
import {Field, reduxForm} from 'redux-form';

const stratumOptions = [
    {key: 's1', text: '1', value: 1},
    {key: 's2', text: '2', value: 2},
    {key: 's3', text: '3', value: 3},
    {key: 's4', text: '4', value: 5},

]
const renderSelect = field => (
    <Form.Select
        label={field.label}
        name={field.input.name}
        onChange={(e, {value}) => field.input.onChange(value)}
        options={field.options}
        placeholder={field.placeholder}
        value={field.input.value}
    />
);

function SegmentForm(props) {
    const {handleSubmit, reset} = props;
    const roadTypes = useSelector(state => state.constants.get('roadTypes'))
        .map(roadType => ({
            key: roadType.id,
            text: roadType.name,
            value: roadType.id,
        }));
    return (
        <Form onSubmit={handleSubmit}>
            <Form.Group>
                <Field
                    component={Form.Input}
                    type="number"
                    required
                    label='Id'
                    name="id"
                    placeholder='Id'
                />
                <Field
                    component={Form.Input}
                    type="number"
                    required
                    label='Longitud'
                    name="length"
                    placeholder='Longitud'
                />
                <Field
                    required
                    component={renderSelect}
                    name="roadTypeId"
                    label='Tipo Vía'
                    options={roadTypes}
                    placeholder='Tipo Vía'
                />
                <Field
                    required
                    component={renderSelect}
                    name="stratum"
                    label='Estrato'
                    options={stratumOptions}
                    placeholder='Estrato'
                />
            </Form.Group>
            <Header dividing>
                Nomenclatura
            </Header>
            <Form.Group>
                <Field
                    required
                    component={renderSelect}
                    name="generatingPathId"
                    label='Vía Generadora'
                    options={roadTypes}
                    placeholder='Tipo Vía'
                />
                <Field
                    component={Form.Input}
                    type="text"
                    required
                    label='Numero Vía Generadora'
                    name="generatingPathNumber"
                    placeholder='Numero Vía Generadora'
                />
                <Field
                    required
                    component={renderSelect}
                    name="crossFromId"
                    label='Cruce Hasta'
                    options={roadTypes}
                    placeholder='Cruce desde'
                />
                <Field
                    component={Form.Input}
                    type="text"
                    required
                    label='Numero Cruce Desde'
                    name="crossFromNumber"
                    placeholder='Numero Cruce Desde'
                />
            </Form.Group>
            <Form.Group>
                <Field
                    required
                    component={renderSelect}
                    name="crossUpId"
                    label='Cruce Hasta'
                    options={roadTypes}
                    placeholder='Cruce Hasta'
                />
                <Field
                    component={Form.Input}
                    type="text"
                    required
                    label='Numero Cruce Hasta'
                    name="crossUpNumber"
                    placeholder='Numero Cruce Hasta'
                />
            </Form.Group>
            <Form.Group inline>
                <Form.Button primary>Submit</Form.Button>
                <Form.Button onClick={reset}>Reset</Form.Button>
            </Form.Group>
        </Form>
    )
}

export default reduxForm({
    form: 'addSegmentForm'
})(SegmentForm)
