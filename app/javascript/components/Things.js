import React from 'react'

const Things = (props) => {
    const things = props.things
    console.log(things)

    const renderThings = () => {
       return things.map(thing => {
            return (
                <div className='thing-container'>
                    <h1>{thing.name}</h1>
                    <p>likes: {thing.likes}</p>
                    <p>id: {thing.id}</p>
                    {/* link are get request by default */}
                    <a href={`/things/${thing.id}`}>show thing</a>
                    <a href={`/things/${thing.id}/edit`}>edit thing</a>
                    <a href={`/things/${thing.id}`} data-method='delete'>delete thing</a>
                    <a href={`/thingsyo/${thing.id}`} data-method='delete'>taco delete thing</a>
                </div>
            )
        })

    }
    return(
        <div className='things-container'>
          <h1>Things!</h1>
          <a href='/things/new'>New Thing Form</a>
          {renderThings()}
        </div>
    )
}

export default Things