require_relative '../lib/caesar'

describe CaesarCipher do
  describe '#encode_message' do
    context 'when key is 5 and 1 word' do
      subject(:key_five) { described_class.new('bla', 1) }

      before do
        key_five.encode_message
      end

      it 'updates variable encoded_message to 3char' do
        encoded_message = key_five.instance_variable_get(:@encoded_message)
        message_length = encoded_message.length
        expect(message_length).to eq(3)
      end

      it 'updates encoded_message variable to "cmb" ' do
        encoded_message = key_five.instance_variable_get(:@encoded_message)
        expect(encoded_message).to eq('cmb')
      end
    end

    context 'when key is 100 and one word' do
      subject(:key_hundred) { described_class.new('bla', 100) }

      before do
        key_hundred.encode_message
      end

      it 'update encoded_message variable to "bla" ' do
        encoded_message = key_hundred.instance_variable_get(:@encoded_message)
        expect(encoded_message).to eq('xhw')
      end

      it 'updates variable encoded_message to 3char' do
        encoded_message = key_hundred.instance_variable_get(:@encoded_message)
        message_length = encoded_message.length
        expect(message_length).to eq(3)
      end
    end

    context 'when the key is negative' do
      subject(:key_negative) { described_class.new('bla', -1) }

      it 'updates the variable encoded_message correctly' do
        key_negative.encode_message
        encoded_message = key_negative.instance_variable_get(:@encoded_message)
        expect(encoded_message).to eq('akz')
      end
    end

    context 'when more than 1 word message' do
      subject(:multy_words) { described_class.new('bla bla', 1) }
      it 'updates encoded_message variable to "cmb cmb" ' do
        multy_words.encode_message
        encoded_message = multy_words.instance_variable_get(:@encoded_message)
        expect(encoded_message).to eq('cmb cmb')
      end
    end
  end
end
