classdef GazeEventParameters < SwigRef
    %Usage: GazeEventParameters ()
    %
  methods
    function this = swig_this(self)
      this = yarpMEX(3, self);
    end
    function varargout = type(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = yarpMEX(1333, self);
      else
        nargoutchk(0, 0)
        yarpMEX(1334, self, varargin{1});
      end
    end
    function varargout = motionOngoingCheckPoint(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = yarpMEX(1335, self);
      else
        nargoutchk(0, 0)
        yarpMEX(1336, self, varargin{1});
      end
    end
    function self = GazeEventParameters(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = yarpMEX(1337, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        yarpMEX(1338, self);
        self.swigPtr=[];
      end
    end
  end
  methods(Static)
  end
end
