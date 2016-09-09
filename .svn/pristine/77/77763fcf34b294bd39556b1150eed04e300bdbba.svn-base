.class public Lcom/baidu/bdgame/sdk/obf/jb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/ct;

.field private b:Lcom/baidu/bdgame/sdk/obf/me;

.field private c:Lcom/baidu/bdgame/sdk/obf/ld;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jb;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jb;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_empty_phone_no"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 106
    :goto_1b
    return-void

    .line 78
    :cond_1c
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jb$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$3;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/baidu/sapi2/SapiAccountService;->getRegCode(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_empty_phone_no"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 146
    :goto_1b
    return-void

    .line 113
    :cond_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_empty_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_1b

    .line 117
    :cond_38
    new-instance v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;

    invoke-direct {v0}, Lcom/baidu/sapi2/dto/PhoneRegDTO;-><init>()V

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->noPwd:Z

    .line 119
    iput-object p1, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->phoneNumber:Ljava/lang/String;

    .line 120
    iput-object p2, v0, Lcom/baidu/sapi2/dto/PhoneRegDTO;->regCode:Ljava/lang/String;

    .line 121
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jb$4;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$4;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/baidu/sapi2/SapiAccountService;->phoneReg(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V

    goto :goto_1b
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/me;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;)I

    move-result v0

    .line 248
    packed-switch v0, :pswitch_data_36

    .line 261
    :goto_e
    return-void

    .line 250
    :pswitch_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nh;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nh;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_e

    .line 253
    :pswitch_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/nf;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/nf;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_e

    .line 256
    :pswitch_29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ni;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ni;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    goto :goto_e

    .line 248
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_f
        :pswitch_29
        :pswitch_1c
    .end packed-switch
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jb;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 225
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ld;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jb$7;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jb$7;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/ld;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/ld$a;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->c:Lcom/baidu/bdgame/sdk/obf/ld;

    .line 243
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->c:Lcom/baidu/bdgame/sdk/obf/ld;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_empty_phone_no"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 187
    :goto_1b
    return-void

    .line 153
    :cond_1c
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/jb$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/jb$5;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/sapi2/SapiAccountService;->getDynamicPwd(Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 281
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    const/4 v2, 0x0

    const-string v3, "bdp_passport_login"

    invoke-static {v0, v3}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/baidu/bdgame/sdk/obf/ct;->b(ILjava/lang/String;Landroid/os/Parcelable;)V

    .line 284
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jb;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 264
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_account_created_login"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/me;->c(I)V

    .line 265
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    const-string v1, "bduss"

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountManager;->getSession(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jb$8;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jb$8;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;)V

    invoke-static {v1, p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 278
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 191
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_empty_phone_no"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    .line 222
    :goto_1b
    return-void

    .line 194
    :cond_1c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_error_empty_verifycode"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_1b

    .line 198
    :cond_38
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jb$6;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/jb$6;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/baidu/sapi2/SapiAccountService;->dynamicPwdLogin(Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/jb;)Lcom/baidu/bdgame/sdk/obf/ld;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->c:Lcom/baidu/bdgame/sdk/obf/ld;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/jb;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/jb;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/me;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->a:Lcom/baidu/bdgame/sdk/obf/ct;

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/jb$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/jb$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;)V

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/me;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/me$a;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jb$2;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/jb$2;-><init>(Lcom/baidu/bdgame/sdk/obf/jb;Landroid/content/Context;)V

    .line 70
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jb;->b:Lcom/baidu/bdgame/sdk/obf/me;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/me;->k()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bx;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 71
    return-void
.end method
