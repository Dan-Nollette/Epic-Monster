require 'rails_helper'

describe ProfileSkill do
  it { should belong_to :skill }
  it { should belong_to :profile }
end
