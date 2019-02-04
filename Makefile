# assume liboost is already installed system wide

#-I$(SCAPI_LB)/lib/OTExtensionBristol -I$(SCAPI_LB)/install/include/libOTe -I$(SCAPI_LB)/install/include/libOTe/cryptoTools

SCAPI_LB 		  = /home/vagrant/developer/libscapi
INC               = -I$(SCAPI_LB)/lib/boost_1_64_0 -I$(SCAPI_LB)/install/include  -I$(SCAPI_LB)/include -I$(SCAPI_LB)/lib/OTExtensionBristol -I$(SCAPI_LB)/install/include/libOTe -I$(SCAPI_LB)/install/include/libOTe/cryptoTools
CXX               = g++ 
LIBS              =  -L$(SCAPI_LB)/install/lib 
LINKER_OPTIONS    =  $(SCAPI_LB)/libscapi.a $(SCAPI_LB)/install/lib/libOTExtensionBristol.a $(SCAPI_LB)/install/lib/libOTe.a $(SCAPI_LB)/install/lib/libcryptoTools.a $(SCAPI_LB)/install/lib/libmiracl.a $(SCAPI_LB)/install/lib/libsimpleot.a $(LIBS) $(SCAPI_LB)/install/lib/libcrypto.a -ldl -lboost_log -lboost_system -lboost_thread -lboost_serialization -lboost_filesystem -lpthread $(SCAPI_LB)/install/lib/libssl.a -lgmp -lrt
CPP_OPTIONS       = --std=c++14 $(INC) -O3 -Wall -Wno-unused-function -Wno-unused-variable -Wno-expansion-to-defined -Wno-ignored-attributes -no-pie
#OBJS              = simple_dlog.o simple_sha1.o simple_gmac.o CommitmentExample.o OTExample.o SigmaProtocolExample.o comm_example.o App1.o YaoParties.o OTExtensionBristolExample.o

all:
	$(CXX) $(CPP_OPTIONS) main.cpp $(LINKER_OPTIONS)
