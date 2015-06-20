﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.34011
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// Microsoft.VSDesigner generó automáticamente este código fuente, versión=4.0.30319.34011.
// 
#pragma warning disable 1591

namespace IPC2Fase2QE.ServicioReferencia {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.Xml.Serialization;
    using System.ComponentModel;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="Service1Soap", Namespace="http://tempuri.org/")]
    public partial class Service1 : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback conectarServidorOperationCompleted;
        
        private System.Threading.SendOrPostCallback RegistrarOperationCompleted;
        
        private System.Threading.SendOrPostCallback existeclienteOperationCompleted;
        
        private System.Threading.SendOrPostCallback LoginClienteOperationCompleted;
        
        private System.Threading.SendOrPostCallback getNombreOperationCompleted;
        
        private System.Threading.SendOrPostCallback getApellidoOperationCompleted;
        
        private System.Threading.SendOrPostCallback LoginEmpleadoOperationCompleted;
        
        private System.Threading.SendOrPostCallback getNombreEmpOperationCompleted;
        
        private System.Threading.SendOrPostCallback getApellidoEmpOperationCompleted;
        
        private System.Threading.SendOrPostCallback CargarCSVImpuestoOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public Service1() {
            this.Url = global::IPC2Fase2QE.Properties.Settings.Default.IPC2Fase2QE_ServicioReferencia_Service1;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event conectarServidorCompletedEventHandler conectarServidorCompleted;
        
        /// <remarks/>
        public event RegistrarCompletedEventHandler RegistrarCompleted;
        
        /// <remarks/>
        public event existeclienteCompletedEventHandler existeclienteCompleted;
        
        /// <remarks/>
        public event LoginClienteCompletedEventHandler LoginClienteCompleted;
        
        /// <remarks/>
        public event getNombreCompletedEventHandler getNombreCompleted;
        
        /// <remarks/>
        public event getApellidoCompletedEventHandler getApellidoCompleted;
        
        /// <remarks/>
        public event LoginEmpleadoCompletedEventHandler LoginEmpleadoCompleted;
        
        /// <remarks/>
        public event getNombreEmpCompletedEventHandler getNombreEmpCompleted;
        
        /// <remarks/>
        public event getApellidoEmpCompletedEventHandler getApellidoEmpCompleted;
        
        /// <remarks/>
        public event CargarCSVImpuestoCompletedEventHandler CargarCSVImpuestoCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/conectarServidor", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool conectarServidor() {
            object[] results = this.Invoke("conectarServidor", new object[0]);
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void conectarServidorAsync() {
            this.conectarServidorAsync(null);
        }
        
        /// <remarks/>
        public void conectarServidorAsync(object userState) {
            if ((this.conectarServidorOperationCompleted == null)) {
                this.conectarServidorOperationCompleted = new System.Threading.SendOrPostCallback(this.OnconectarServidorOperationCompleted);
            }
            this.InvokeAsync("conectarServidor", new object[0], this.conectarServidorOperationCompleted, userState);
        }
        
        private void OnconectarServidorOperationCompleted(object arg) {
            if ((this.conectarServidorCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.conectarServidorCompleted(this, new conectarServidorCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/Registrar", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool Registrar(string tabla, string campos, string valor) {
            object[] results = this.Invoke("Registrar", new object[] {
                        tabla,
                        campos,
                        valor});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void RegistrarAsync(string tabla, string campos, string valor) {
            this.RegistrarAsync(tabla, campos, valor, null);
        }
        
        /// <remarks/>
        public void RegistrarAsync(string tabla, string campos, string valor, object userState) {
            if ((this.RegistrarOperationCompleted == null)) {
                this.RegistrarOperationCompleted = new System.Threading.SendOrPostCallback(this.OnRegistrarOperationCompleted);
            }
            this.InvokeAsync("Registrar", new object[] {
                        tabla,
                        campos,
                        valor}, this.RegistrarOperationCompleted, userState);
        }
        
        private void OnRegistrarOperationCompleted(object arg) {
            if ((this.RegistrarCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.RegistrarCompleted(this, new RegistrarCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/existecliente", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool existecliente(string user) {
            object[] results = this.Invoke("existecliente", new object[] {
                        user});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void existeclienteAsync(string user) {
            this.existeclienteAsync(user, null);
        }
        
        /// <remarks/>
        public void existeclienteAsync(string user, object userState) {
            if ((this.existeclienteOperationCompleted == null)) {
                this.existeclienteOperationCompleted = new System.Threading.SendOrPostCallback(this.OnexisteclienteOperationCompleted);
            }
            this.InvokeAsync("existecliente", new object[] {
                        user}, this.existeclienteOperationCompleted, userState);
        }
        
        private void OnexisteclienteOperationCompleted(object arg) {
            if ((this.existeclienteCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.existeclienteCompleted(this, new existeclienteCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/LoginCliente", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool LoginCliente(string user, string contraseña, string rol) {
            object[] results = this.Invoke("LoginCliente", new object[] {
                        user,
                        contraseña,
                        rol});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void LoginClienteAsync(string user, string contraseña, string rol) {
            this.LoginClienteAsync(user, contraseña, rol, null);
        }
        
        /// <remarks/>
        public void LoginClienteAsync(string user, string contraseña, string rol, object userState) {
            if ((this.LoginClienteOperationCompleted == null)) {
                this.LoginClienteOperationCompleted = new System.Threading.SendOrPostCallback(this.OnLoginClienteOperationCompleted);
            }
            this.InvokeAsync("LoginCliente", new object[] {
                        user,
                        contraseña,
                        rol}, this.LoginClienteOperationCompleted, userState);
        }
        
        private void OnLoginClienteOperationCompleted(object arg) {
            if ((this.LoginClienteCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.LoginClienteCompleted(this, new LoginClienteCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/getNombre", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string getNombre(string user) {
            object[] results = this.Invoke("getNombre", new object[] {
                        user});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void getNombreAsync(string user) {
            this.getNombreAsync(user, null);
        }
        
        /// <remarks/>
        public void getNombreAsync(string user, object userState) {
            if ((this.getNombreOperationCompleted == null)) {
                this.getNombreOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetNombreOperationCompleted);
            }
            this.InvokeAsync("getNombre", new object[] {
                        user}, this.getNombreOperationCompleted, userState);
        }
        
        private void OngetNombreOperationCompleted(object arg) {
            if ((this.getNombreCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getNombreCompleted(this, new getNombreCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/getApellido", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string getApellido(string user) {
            object[] results = this.Invoke("getApellido", new object[] {
                        user});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void getApellidoAsync(string user) {
            this.getApellidoAsync(user, null);
        }
        
        /// <remarks/>
        public void getApellidoAsync(string user, object userState) {
            if ((this.getApellidoOperationCompleted == null)) {
                this.getApellidoOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetApellidoOperationCompleted);
            }
            this.InvokeAsync("getApellido", new object[] {
                        user}, this.getApellidoOperationCompleted, userState);
        }
        
        private void OngetApellidoOperationCompleted(object arg) {
            if ((this.getApellidoCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getApellidoCompleted(this, new getApellidoCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/LoginEmpleado", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public int LoginEmpleado(string usuario, string contraseña, string rol) {
            object[] results = this.Invoke("LoginEmpleado", new object[] {
                        usuario,
                        contraseña,
                        rol});
            return ((int)(results[0]));
        }
        
        /// <remarks/>
        public void LoginEmpleadoAsync(string usuario, string contraseña, string rol) {
            this.LoginEmpleadoAsync(usuario, contraseña, rol, null);
        }
        
        /// <remarks/>
        public void LoginEmpleadoAsync(string usuario, string contraseña, string rol, object userState) {
            if ((this.LoginEmpleadoOperationCompleted == null)) {
                this.LoginEmpleadoOperationCompleted = new System.Threading.SendOrPostCallback(this.OnLoginEmpleadoOperationCompleted);
            }
            this.InvokeAsync("LoginEmpleado", new object[] {
                        usuario,
                        contraseña,
                        rol}, this.LoginEmpleadoOperationCompleted, userState);
        }
        
        private void OnLoginEmpleadoOperationCompleted(object arg) {
            if ((this.LoginEmpleadoCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.LoginEmpleadoCompleted(this, new LoginEmpleadoCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/getNombreEmp", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string getNombreEmp(string user) {
            object[] results = this.Invoke("getNombreEmp", new object[] {
                        user});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void getNombreEmpAsync(string user) {
            this.getNombreEmpAsync(user, null);
        }
        
        /// <remarks/>
        public void getNombreEmpAsync(string user, object userState) {
            if ((this.getNombreEmpOperationCompleted == null)) {
                this.getNombreEmpOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetNombreEmpOperationCompleted);
            }
            this.InvokeAsync("getNombreEmp", new object[] {
                        user}, this.getNombreEmpOperationCompleted, userState);
        }
        
        private void OngetNombreEmpOperationCompleted(object arg) {
            if ((this.getNombreEmpCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getNombreEmpCompleted(this, new getNombreEmpCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/getApellidoEmp", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public string getApellidoEmp(string user) {
            object[] results = this.Invoke("getApellidoEmp", new object[] {
                        user});
            return ((string)(results[0]));
        }
        
        /// <remarks/>
        public void getApellidoEmpAsync(string user) {
            this.getApellidoEmpAsync(user, null);
        }
        
        /// <remarks/>
        public void getApellidoEmpAsync(string user, object userState) {
            if ((this.getApellidoEmpOperationCompleted == null)) {
                this.getApellidoEmpOperationCompleted = new System.Threading.SendOrPostCallback(this.OngetApellidoEmpOperationCompleted);
            }
            this.InvokeAsync("getApellidoEmp", new object[] {
                        user}, this.getApellidoEmpOperationCompleted, userState);
        }
        
        private void OngetApellidoEmpOperationCompleted(object arg) {
            if ((this.getApellidoEmpCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.getApellidoEmpCompleted(this, new getApellidoEmpCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/CargarCSVImpuesto", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public bool CargarCSVImpuesto(string path) {
            object[] results = this.Invoke("CargarCSVImpuesto", new object[] {
                        path});
            return ((bool)(results[0]));
        }
        
        /// <remarks/>
        public void CargarCSVImpuestoAsync(string path) {
            this.CargarCSVImpuestoAsync(path, null);
        }
        
        /// <remarks/>
        public void CargarCSVImpuestoAsync(string path, object userState) {
            if ((this.CargarCSVImpuestoOperationCompleted == null)) {
                this.CargarCSVImpuestoOperationCompleted = new System.Threading.SendOrPostCallback(this.OnCargarCSVImpuestoOperationCompleted);
            }
            this.InvokeAsync("CargarCSVImpuesto", new object[] {
                        path}, this.CargarCSVImpuestoOperationCompleted, userState);
        }
        
        private void OnCargarCSVImpuestoOperationCompleted(object arg) {
            if ((this.CargarCSVImpuestoCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.CargarCSVImpuestoCompleted(this, new CargarCSVImpuestoCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void conectarServidorCompletedEventHandler(object sender, conectarServidorCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class conectarServidorCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal conectarServidorCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void RegistrarCompletedEventHandler(object sender, RegistrarCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class RegistrarCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal RegistrarCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void existeclienteCompletedEventHandler(object sender, existeclienteCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class existeclienteCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal existeclienteCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void LoginClienteCompletedEventHandler(object sender, LoginClienteCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class LoginClienteCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal LoginClienteCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void getNombreCompletedEventHandler(object sender, getNombreCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getNombreCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getNombreCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void getApellidoCompletedEventHandler(object sender, getApellidoCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getApellidoCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getApellidoCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void LoginEmpleadoCompletedEventHandler(object sender, LoginEmpleadoCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class LoginEmpleadoCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal LoginEmpleadoCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public int Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((int)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void getNombreEmpCompletedEventHandler(object sender, getNombreEmpCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getNombreEmpCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getNombreEmpCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void getApellidoEmpCompletedEventHandler(object sender, getApellidoEmpCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class getApellidoEmpCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal getApellidoEmpCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public string Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((string)(this.results[0]));
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    public delegate void CargarCSVImpuestoCompletedEventHandler(object sender, CargarCSVImpuestoCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.33440")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class CargarCSVImpuestoCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal CargarCSVImpuestoCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public bool Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((bool)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591