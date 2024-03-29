require 'rails_helper'

describe Purchase do
  before do
    @pending_purchase = create(:purchase)
    @purchase_in_progress = create(:purchase, :in_progress)
    @submitted_purchase = create(:purchase, :submitted)
    @shipped_purchase = create(:purchase, :shipped)
    @received_purchase = create(:purchase, :received)
  end

  describe '#all_pending' do
    it 'returns purchase status as pending' do
      expect(@pending_purchase.status).to eq 'pending'
    end
    it 'returns pending purchases' do
      expect(Purchase.all_pending).to eq [@pending_purchase]
    end
  end

  describe '.in_progress' do
    it 'returns purchase status as in_progress' do
      expect(@purchase_in_progress.status).to eq 'in_progress'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_in_progress).to include @purchase_in_progress
    end
  end

  describe '.submitted' do
    it 'returns purchase status as submitted' do
      expect(@submitted_purchase.status).to eq 'submitted'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_submitted).to include @submitted_purchase
    end
  end

    describe '.submitted' do
    it 'returns purchase status as submitted' do
      expect(@submitted_purchase.status).to eq 'submitted'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_submitted).to include @submitted_purchase
    end
  end

  describe '.all_shipped' do
    it 'returns purchase status as shipped' do
      expect(@shipped_purchase.status).to eq 'shipped'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_shipped).to include @shipped_purchase
    end
  end

  describe '.all_received' do
    it 'returns purchase status as received' do
      expect(@received_purchase.status).to eq 'received'
    end
    it 'returns purchases in progress' do
      expect(Purchase.all_received).to include @received_purchase
    end
  end
end
