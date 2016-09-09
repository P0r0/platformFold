.class public Lcom/baidu/sapi2/shell/response/SapiAccountResponse;
.super Lcom/baidu/sapi2/shell/response/SapiResponse;
.source "SapiAccountResponse.java"


# instance fields
.field public accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

.field public authSid:Ljava/lang/String;

.field public bduss:Ljava/lang/String;

.field public displayname:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public newReg:Z

.field public ptoken:Ljava/lang/String;

.field public reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

.field public stoken:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/baidu/sapi2/shell/response/SapiResponse;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->bduss:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->ptoken:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->stoken:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->displayname:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->username:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->email:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->uid:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v0}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->reloginCredentials:Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    .line 48
    sget-object v0, Lcom/baidu/sapi2/utils/enums/AccountType;->UNKNOWN:Lcom/baidu/sapi2/utils/enums/AccountType;

    iput-object v0, p0, Lcom/baidu/sapi2/shell/response/SapiAccountResponse;->accountType:Lcom/baidu/sapi2/utils/enums/AccountType;

    .line 49
    return-void
.end method
