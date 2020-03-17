# frozen_string_literal: true

module PaginationHelper
  def link_to_prev_page(collection)
    return unless collection.prev_page

    page = collection.current_page - 1
    page = nil if page == 1

    loader = content_tag :div, spinner, data: { target: 'infinite-scroll.previousPageLoader' }, style: 'display: none'
    html_options = {
      rel: 'previous',
      data: { action: 'infinite-scroll#loadPreviousPage', target: 'infinite-scroll.previousLink' }
    }
    link = link_to 'Load previous page…', { page: page }, html_options

    content_tag :div, class: 'previousPage', data: { target: 'infinite-scroll.previousPage' } do
      loader.concat link
    end
  end

  def link_to_next_page(collection)
    return unless collection.next_page

    page = collection.current_page + 1

    link_to 'Load next page…', { page: page }, rel: 'next', data: { target: 'infinite-scroll.nextLink' }
  end

  def spinner
    content_tag :div, class: 'spinner' do
      bounce1 = content_tag(:div, '', class: 'bounce1')
      bounce2 = content_tag(:div, '', class: 'bounce2')
      bounce3 = content_tag(:div, '', class: 'bounce3')

      bounce1 + bounce2 + bounce3
    end
  end
end
