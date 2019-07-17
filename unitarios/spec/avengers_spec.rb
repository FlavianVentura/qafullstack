class AvengersHeadQuater

    attr_accessor :list

    def initialize

        self.list = []
    end

    def put(avenger)

        self.list.push(avenger)
    end

end

describe AvengersHeadQuater do

    it 'Deve adicionar um novo vingador' do

        hq = AvengersHeadQuater.new
        hq.put('Spiderman')

        expect(hq.list).to eql ['Spiderman']
        
    end
end