classdef ITemperatureSensors < SwigRef
    %Usage: ITemperatureSensors ()
    %
  methods
    function this = swig_this(self)
      this = yarpMEX(3, self);
    end
    function varargout = getNrOfTemperatureSensors(self,varargin)
    %Usage: retval = getNrOfTemperatureSensors ()
    %
    %retval is of type size_t. 
      [varargout{1:nargout}] = yarpMEX(2027, self, varargin{:});
    end
    function varargout = getTemperatureSensorStatus(self,varargin)
    %Usage: retval = getTemperatureSensorStatus (sens_index)
    %
    %sens_index is of type size_t. sens_index is of type size_t. retval is of type yarp::dev::MAS_status. 
      [varargout{1:nargout}] = yarpMEX(2028, self, varargin{:});
    end
    function delete(self)
      if self.swigPtr
        yarpMEX(2029, self);
        self.SwigClear();
      end
    end
    function varargout = getTemperatureSensorName(self,varargin)
    %Usage: retval = getTemperatureSensorName (sens_index)
    %
    %sens_index is of type int. sens_index is of type int. retval is of type std::string. 
      [varargout{1:nargout}] = yarpMEX(2030, self, varargin{:});
    end
    function varargout = getTemperatureSensorFrameName(self,varargin)
    %Usage: retval = getTemperatureSensorFrameName (sens_index)
    %
    %sens_index is of type int. sens_index is of type int. retval is of type std::string. 
      [varargout{1:nargout}] = yarpMEX(2031, self, varargin{:});
    end
    function varargout = getTemperatureSensorMeasure(self,varargin)
    %Usage: retval = getTemperatureSensorMeasure (sens_index, out)
    %
    %sens_index is of type int. out is of type Vector. sens_index is of type int. out is of type Vector. retval is of type double. 
      [varargout{1:nargout}] = yarpMEX(2032, self, varargin{:});
    end
    function self = ITemperatureSensors(varargin)
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