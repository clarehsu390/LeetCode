require 'rspec'
require 'levenshtein_distance.rb'

describe LevenshteinDistance do
    describe '#intialize' do
        subject(:distance) { LevenshteinDistance.new([1,3,1,5], 'health', 'hands')}

        it 'sets up a distance correctly' do 
            expect(distance.word1).to eq('health')
            expect(distance.costs).to eq([1,3,1,5])
        end

        it 'is an instance of Trie class' do
            expect(distance.trie).to be_a(Trie)
        end
    end
    describe '#dictionary' do
        subject(:distance) { LevenshteinDistance.new([1,3,1,5], 'health', 'hands')}
        it 'sets up dictionary properly' do
            expect(distance.trie.contains('health')).to be(true)
        end
    end

    describe '#delete_letter' do
        subject(:distance) { LevenshteinDistance.new([1,3,1,5], 'health', 'hands')}
        it 'returns intermediate word when letter is deleted' do 
            expect(distance.delete_letter('health')).to eq('heath')
        end
    end
    describe '#add_letter' do
        subject(:distance) { LevenshteinDistance.new([1,3,1,5], 'rat', 'rate')}
        it 'returns intermediate word when letter is added' do
            expect(distance.add_letter('rat')).to eq('rate')
        end
    end
end