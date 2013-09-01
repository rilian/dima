require 'spec_helper'

describe BaseImage do
  it { should have_db_column(:image).of_type(:string) }
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:desc).of_type(:text) }
end
