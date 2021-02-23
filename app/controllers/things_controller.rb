class ThingsController < ApplicationController
    def index
        things = Thing.all
        render component: "Things", props: {things: things}
    end
end
