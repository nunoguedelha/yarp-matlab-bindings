classdef TypedReaderCallbackVector < SwigRef
    %Usage: TypedReaderCallbackVector ()
    %
  methods
    function this = swig_this(self)
      this = yarpMEX(3, self);
    end
    function delete(self)
      if self.swigPtr
        yarpMEX(2351, self);
        self.swigPtr=[];
      end
    end
    function varargout = onRead(self,varargin)
    %Usage: onRead (datum, reader)
    %
    %datum is of type Vector. reader is of type TypedReaderVector. 
      [varargout{1:nargout}] = yarpMEX(2352, self, varargin{:});
    end
    function self = TypedReaderCallbackVector(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = yarpMEX(2353, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
  end
  methods(Static)
  end
end
