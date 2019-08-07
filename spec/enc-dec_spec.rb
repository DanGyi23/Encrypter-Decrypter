require 'enc-dec'

describe "encrypt" do
  it 'returns "This is a test!" when passed ("This is a test!", 0)' do
    expect(encrypt('This is a test!',0)).to eq 'This is a test!'
  end
end

describe "encrypt" do
  it 'returns " Tah itse sits!" when passed ("This is a test!", 3)' do
    expect(encrypt('This is a test!', 3)).to eq ' Tah itse sits!'
  end
end

describe "encrypt" do
  it 'returns "Eggs!" when passed ("Eggs!", -1)' do
    expect(encrypt('Eggs!', -1)).to eq 'Eggs!'
  end
end

describe "decrypt" do
  it 'returns "hsi  etTi sats!" when passed ("s eT ashi tist!", 1)' do
    expect(decrypt('s eT ashi tist!', 1)).to eq 'hsi  etTi sats!'
  end
end

describe "decrypt" do
  it 'returns "This is a test!" when passed ("s eT ashi tist!", 2)' do
    expect(decrypt('s eT ashi tist!', 2)).to eq 'This is a test!'
  end
end

describe "decrypt" do
  it 'returns "This is a test!" when passed ("ucJF.2tr!VvMCUTv3C1?g D", 7)' do
    expect(decrypt('ucJF.2tr!VvMCUTv3C1?g D', 7)).to eq 'v!cCvF?C2 Tru3VJ1M.gUtD'
  end
end
