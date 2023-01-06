# frozen_string_literal: true

#
# comment_notifier.rb
# Copyright (C) 2023 tinix <tinix@archlinux>
#
# Distributed under terms of the MIT license.
#
class CommentNotifier
  attr_accessor :comment, :watchers

  def initialize(comment)
    @comment = comment
    @watchers = comment.ticket.watchers.excluding(comment.author)
  end

  def notify_watchers
    watchers.each do |user|
      CommentMailer
        .with(comment: comment, user: user)
        .new_comment
        .deliver_later
    end
  end
end
