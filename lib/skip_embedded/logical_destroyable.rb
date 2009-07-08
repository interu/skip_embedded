module SkipEmbedded
  module LogicalDestroyable
    def self.included(base)
      base.named_scope(:active, {:conditions => {:deleted_at => nil}})
      base.attr_protected :deleted_at, :deleted
    end

    def deleted
      !!self.deleted_at
    end
    alias deleted? deleted

    def deleted=(is_deleted)
      self.deleted_at = is_deleted ? Time.now : nil
    end

    def logical_destroy
      before_logical_destroy
      result = update_attribute(:deleted_at, Time.now)
      after_logical_destroy
      result
    end

    def before_logical_destroy;end
    def after_logical_destroy;end

    def recover
      update_attribute(:deleted_at, nil)
    end
  end
end
