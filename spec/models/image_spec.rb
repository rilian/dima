require 'spec_helper'

describe Image do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:description).of_type(:text) }
end
