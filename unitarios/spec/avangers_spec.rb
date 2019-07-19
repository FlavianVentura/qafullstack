class AvangersHeadQuarter

    attr_accessor :list

    def initialize

        self.list = []
    end

    def put(avangers)

        self.list.push(avangers)
    end
end

describe AvangersHeadQuarter do

    it 'Deve adicionar um Vingador' do

        hq = AvangersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end

end