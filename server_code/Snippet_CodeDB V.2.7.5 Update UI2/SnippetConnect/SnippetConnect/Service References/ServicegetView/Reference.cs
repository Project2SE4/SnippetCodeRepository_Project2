﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34014
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SnippetConnect.ServicegetView {
    using System.Data;
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServicegetView.WebServiceSoap")]
    public interface WebServiceSoap {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataCSharp", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GetDataCSharp();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataCSharp", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> GetDataCSharpAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataJava", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GetDataJava();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataJava", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> GetDataJavaAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataVb", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GetDataVb();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataVb", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> GetDataVbAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataPython", ReplyAction="*")]
        [System.ServiceModel.XmlSerializerFormatAttribute(SupportFaults=true)]
        System.Data.DataSet GetDataPython();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/GetDataPython", ReplyAction="*")]
        System.Threading.Tasks.Task<System.Data.DataSet> GetDataPythonAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebServiceSoapChannel : SnippetConnect.ServicegetView.WebServiceSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebServiceSoapClient : System.ServiceModel.ClientBase<SnippetConnect.ServicegetView.WebServiceSoap>, SnippetConnect.ServicegetView.WebServiceSoap {
        
        public WebServiceSoapClient() {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public System.Data.DataSet GetDataCSharp() {
            return base.Channel.GetDataCSharp();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> GetDataCSharpAsync() {
            return base.Channel.GetDataCSharpAsync();
        }
        
        public System.Data.DataSet GetDataJava() {
            return base.Channel.GetDataJava();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> GetDataJavaAsync() {
            return base.Channel.GetDataJavaAsync();
        }
        
        public System.Data.DataSet GetDataVb() {
            return base.Channel.GetDataVb();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> GetDataVbAsync() {
            return base.Channel.GetDataVbAsync();
        }
        
        public System.Data.DataSet GetDataPython() {
            return base.Channel.GetDataPython();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> GetDataPythonAsync() {
            return base.Channel.GetDataPythonAsync();
        }
    }
}
