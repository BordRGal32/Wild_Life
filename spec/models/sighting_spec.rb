require 'spec_helper'

describe Sighting do
it {should belong_to :region}
it {should belong_to :specie}
end
