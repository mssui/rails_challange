module Api
  module V1
    class EventsController < ApplicationController
      def index
        datas = Event.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Events Loaded', data:datas},status: :ok
      end

      def show
        datas = Event.find(params[:id])
        render json: {status: 'SUCCESS', message:'Events Loaded', data:datas},status: :ok
      end

      def create
        datas = Event.new(datas_params)

        if datas.save
          render json: {status: 'SUCCESS', message:'Event Saved', data:datas},status: :ok
        else
          render json: {status: 'ERROR', message:'Event could not saved', data:datas.errors},status: :unprocessable_entity
        end
      end

      def destroy
        datas = Event.find(params[:id])
        datas.destroy
        render json: {status: 'SUCCESS', message:'Event Deleted', data:article},status: :ok
      end

      def update
        datas = Event.find(params[:id])
        if datas.update_attributes(datas_params)
          render json: {status: 'SUCCESS', message:'Event Updated', data:datas},status: :ok
        else
          render json: {status: 'ERROR', message:'Event could not Updated', data:datas.errors},status: :unprocessable_entity
        end
      end

      private

      def datas_params
        params.permit(:starts_at, :ends_at, :kind, :weekly_recurring)
      end
    end
  end
end