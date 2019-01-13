class ApplicationController < ActionController::Base
    protect_from_forgery with : :exception
end
    private
         def set_entry
            @entry = Entry.find(params[:id])
        end

before_action :set_entry, only: [:show, :edit, :update, :destroy]

        index
            @entries = Entry.all
        end

       def entry_params
            params.reguire(:entry).permit(:title, body)
        end

        def create
            @entry = Entry.new(entry_params)

            respond_to do |format|
                if @entry.save
                  format.html{ redirect_to @entry, notice: 'Entry was succsessfully created.'}
                  format.json{render :show, statsu: :created, location: @entry }
                else
                  format.html {render :new}
                  format.json {render json: @entry.errors, status: :unprocessable_entry}
                end
            end
        end


        