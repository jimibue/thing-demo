class ThingsController < ApplicationController
    def index
        things = Thing.all
        render component: "Things", props: {things: things}
    end
     
    # TODO display a specific thing
    # * GET /things/:id
    def show
        render component: "Thing"
    end

    # todo return form to create a new things
   # * GET /things/new
    def new
        render component: "NewThingForm"
    end

    # todo return form to edit a existing things=
     # * GET /things/:id/edit
    def edit
        render component: "EditThingForm"
    end

    def destroy
        thing = Thing.find(params[:id])
        thing.destroy

        # reload index page
        redirect_to root_path
      end

    def taco
      Thing.find(params[:asdfhjg]).destroy
      redirect_to things_new_path
    end
end
