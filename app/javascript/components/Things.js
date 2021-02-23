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
                </div>
            )
        })

    }
    return(
        <div className='things-container'>
          <h1>Things!</h1>
          {renderThings()}
        </div>
    )
}

export default Things