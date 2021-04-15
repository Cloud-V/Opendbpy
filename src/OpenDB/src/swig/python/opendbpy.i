%module opendbpy

%ignore dbTechLayer;
%ignore dbTechLayerDir;
%ignore dbTechLayerSpacingRule;
%ignore dbTechLayerCornerSpacingRule;
%ignore dbTechLayerMinStepRule;
%ignore dbTechLayerType;
%ignore dbTechLayerAntennaRule;
%ignore dbTechLayerRule;
%ignore dbTechLayerSpacingEolRule;
%ignore dbTechLayerMinStepRule;
%ignore dbTechLayerSpacingTablePrlRule;
%ignore dbTechLayerCutClassRule;
%ignore dbTechLayerCutSpacingRule;
%ignore dbTechLayerCutSpacingTableOrthRule;
%ignore dbTechLayerCutSpacingTableDefRule;
%ignore dbTechLayerCutEnclosureRule;

%typemap(typecheck,precedence=SWIG_TYPECHECK_INTEGER) uint {
   $1 = PyInt_Check($input) ? 1 : 0;
}

%rename(getPoint_ext) odb::dbWireDecoder::getPoint(int&, int&, int&) const; 

%apply int &OUTPUT { int & x, int & y, int & ext };


%include "dbenums.i"
%include "parserenums.i"

%include "../common/opendb.i"
%include "dbtypes.i"
