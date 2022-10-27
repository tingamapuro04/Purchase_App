require 'rails_helper'

RSpec.describe 'User index and show pages', type: :feature do
  describe 'Groups pages' do
    it 'should show the username' do
      visit groups_path
      expect(page).to have_content('Groups')
    end

    it 'should have image tag' do
      visit groups_path
      expect(page).to have_css('a')
    end

    it 'should have div element' do
      visit groups_path
      expect(page).to have_css('button')
    end

    it 'should have purchases content' do
      visit purchases_path
      expect(page).to have_content('Purchase')
    end

    it 'should have Log in' do
      visit purchases_path
      expect(page).to have_content('Log in')
    end

    it 'should have Sign up' do
      visit purchases_path
      expect(page).to have_content('Sign up')
    end

    it 'should have a link' do
      visit purchases_path
      expect(page).to have_css('a')
    end

    it 'should have a input' do
      visit purchases_path
      expect(page).to have_css('input')
    end

    it 'should have a form' do
      visit purchases_path
      expect(page).to have_css('form')
    end

    it 'should have a form' do
      visit groups_path
      expect(page).to have_content('')
    end
  end
end
