# frozen_string_literal: true

class CommentMailer < ApplicationMailer
  def new_comment
    @comment = params[:comment]
    @user = params[:user]
    @ticket = @comment.ticket
    @project = @ticket.project

    subject = "#@project.name} - #@ticket.name}"
    mail(to: @user.email, subject: subject)
  end
end
