classdef VectorBase < yarp.Portable
    %Usage: VectorBase ()
    %
  methods
    function varargout = getElementSize(self,varargin)
    %Usage: retval = getElementSize ()
    %
    %retval is of type int. 
      [varargout{1:nargout}] = yarpMEX(980, self, varargin{:});
    end
    function varargout = getBottleTag(self,varargin)
    %Usage: retval = getBottleTag ()
    %
    %retval is of type int. 
      [varargout{1:nargout}] = yarpMEX(981, self, varargin{:});
    end
    function varargout = getListSize(self,varargin)
    %Usage: retval = getListSize ()
    %
    %retval is of type size_t. 
      [varargout{1:nargout}] = yarpMEX(982, self, varargin{:});
    end
    function varargout = getMemoryBlock(self,varargin)
    %Usage: retval = getMemoryBlock ()
    %
    %retval is of type char const *. 
      [varargout{1:nargout}] = yarpMEX(983, self, varargin{:});
    end
    function varargout = resize(self,varargin)
    %Usage: resize (size)
    %
    %size is of type size_t. 
      [varargout{1:nargout}] = yarpMEX(984, self, varargin{:});
    end
    function varargout = read(self,varargin)
    %Usage: retval = read (connection)
    %
    %connection is of type ConnectionReader. connection is of type ConnectionReader. retval is of type bool. 
      [varargout{1:nargout}] = yarpMEX(985, self, varargin{:});
    end
    function varargout = write(self,varargin)
    %Usage: retval = write (connection)
    %
    %connection is of type ConnectionWriter. connection is of type ConnectionWriter. retval is of type bool. 
      [varargout{1:nargout}] = yarpMEX(986, self, varargin{:});
    end
    function delete(self)
      if self.swigPtr
        yarpMEX(987, self);
        self.swigPtr=[];
      end
    end
    function self = VectorBase(varargin)
      self@yarp.Portable(SwigRef.Null);
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        error('No matching constructor');
      end
    end
  end
  methods(Static)
  end
end