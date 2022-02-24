class UploadsController < ApplicationController
    def purge
        uploads = ActiveStorage::Attachment.find(params[:id])
        uploads.purge
        redirect_back fallback_location: item_path, notice: "success"
    end
end