class ThingsController < ApplicationController
    # display all things specific thing
    # * GET /things
    def index
        things = Thing.all
        render component: "Things", props: {things: things}
    end
     
    # display a specific thing
    # * GET /things/:id
    def show
        thing = Thing.find(params[:id])
        render component: "Thing", props: {thing:thing}
    end

   # return form to create a new things
   # * GET /things/new
    def new
        render component: "NewThingForm"
    end

    # creates a things to the database
    # * POST /things
    def create
        thing = Thing.new(thing_params)
        if thing.save
            redirect_to root_path
        else
            render component: "NewThingForm"
        end
    end

    # return form to edit a existing things
    # * GET /things/:id/edit
    def edit
        thing = Thing.find(params[:id])
        render component: "EditThingForm", props: {thing: thing}
    end

    # updates a existing things in the database
     # * PUT OR PATCH /things/:id
    def update
        thing = Thing.find(params[:id])
        if thing.update(thing_params)
            redirect_to root_path
        else
            render component: "EditThingForm", props: {thing: thing}
        end
    end

    # destroys one thing from the database
    # * delete /things/:id
    def destroy
        thing = Thing.find(params[:id])
        thing.destroy

        # reload index page
        redirect_to root_path
      end
    
    # custom method 
    # * delete /thingsyo/:asdfhjg
    def taco
      Thing.find(params[:asdfhjg]).destroy
      redirect_to things_new_path
    end

    private

    # sanitize params
    def thing_params
      params.require(:thing).permit(:name, :likes)
    end
end
