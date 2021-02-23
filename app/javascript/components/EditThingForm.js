import React from 'react'

const EditThingForm = (props) =>{
    return(
        <div>
            <h1>Edit FORM HERE</h1>
            <p>actual id here{props.thing.id}</p>
            <a href='/'>home</a>
            <form action={`/things/${props.thing.id}`} method='post'>
                <input type='hidden' name="_method" value="patch"/>
                <p>name</p>
                <input defaultValue={props.thing.name} type='text' name='thing[name]'/>
                <p>likes</p>
                <input defaultValue={props.thing.likes} type='number' name='thing[likes]'/>
                <button type='submit'>add</button>
            </form>
        </div>
    )
}

export default EditThingForm