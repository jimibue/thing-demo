import React from 'react'

const Thing = (props) =>{
    return(
        <div>
            <h1>Thing Heres</h1>
            <h1>{props.thing.name}</h1>
            <h1>likes {props.thing.likes}</h1>
            <a href={`/things/${props.thing.id}/edit`}>edit thing</a>
            <a href={`/things/${props.thing.id}`} data-method='delete'>delete thing</a>
            <a href='/'>home</a>
            <a href='/things'>home</a>
        </div>
    )
}

export default Thing