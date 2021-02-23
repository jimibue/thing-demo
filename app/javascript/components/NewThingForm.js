import React from 'react'

const NewThingForm = () =>{
    return(
        <div>
            <h1>NEW FORM HERE</h1>
            <a href='/'>home</a>
            <form action='/things' method='post'>
                <p>name</p>
                <input type='text' name='thing[name]'/>
                <p>likes</p>
                <input type='number' name='thing[likes]'/>
                <button type='submit'>add</button>
            </form>
        </div>
    )
}

export default NewThingForm