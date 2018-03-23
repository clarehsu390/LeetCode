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
    describe '#swap_letter' do
        subject(:distance) { LevenshteinDistance.new([1,3,1,5], 'heath', 'heats')}
        it 'return intermediate word when letter is swapped' do
            expect(distance.swap_letter('heath')).to eq('heats')
        end
    end

    describe '#find_lowest_cost' do
        subject(:distance) { LevenshteinDistance.new([1,9,1,3], 'team', 'mate')}
        subject(:distance1) { LevenshteinDistance.new([1,3,1,5], 'health', 'hands')}
        subject(:distance2) { LevenshteinDistance.new([7,1,5,2], 'opthalmology', 'glasses')}
        it 'returns lowest cost if words are anagrams' do
            expect(distance.find_lowest_cost('team', 'mate')).to eq(3)
        end

        it 'returns correct cost' do
            expect(distance1.find_lowest_cost('health', 'hands')).to eq(9)
        end

        it 'returns -1 if there is no solution' do
            expect(distance2.find_lowest_cost('opthamology', 'glasses')).to eq(-1)
        end
    end
 end