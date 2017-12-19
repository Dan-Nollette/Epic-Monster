require 'rails_helper'

describe JobSkill do
  it { should belong_to :job_listing }
  it { should belong_to :skill }
end
