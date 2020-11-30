import api from '../../api/api';

export const SET_SEGMENTS_PAGE = 'SET_SEGMETNS_PAGE';

export function setSegmentPage(payload) {
    return {
        type: SET_SEGMENTS_PAGE,
        payload
    }
}

export function getSegmentsPage(page, pageSize) {
    return async dispatch => {
        const segmentsPage = await api.get('/segments', {
            page,
            pageCount: pageSize
        });
        dispatch(setSegmentPage(segmentsPage))
    }
}
