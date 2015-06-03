require_relative "../lib/album.rb"

RSpec.describe Album do

  let(:artists) {@artists}

  it 'has artists' do
    expect(Album.artists).to eq(artists)
  end

  # describe '#artists?' do
  #   context 'has artists' do
  #     it 'returns true' do
  #       expect(Album.new.artists?).to eq true
  #     end
  #   end
  #
  #   context 'does not have artists' do
  #     it 'returns false' do
  #       expect(Album.new.flying?).to eq false
  #     end
  #   end
  # end
end
