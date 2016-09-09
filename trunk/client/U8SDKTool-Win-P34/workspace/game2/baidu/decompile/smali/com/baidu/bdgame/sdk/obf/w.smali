.class public Lcom/baidu/bdgame/sdk/obf/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/ct;

.field private d:Lcom/baidu/bdgame/sdk/obf/x;

.field private e:Lcom/baidu/bdgame/sdk/obf/av;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/av;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    .line 46
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->f:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/w;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/w;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .registers 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/mh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_upgrading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/x;->c(I)V

    .line 173
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w$5;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/w$5;-><init>(Lcom/baidu/bdgame/sdk/obf/w;Landroid/content/Context;I)V

    .line 188
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bx;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 200
    :goto_48
    return-void

    .line 190
    :cond_49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 191
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/w;->c(I)V

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "bduss is not null."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_48

    .line 194
    :cond_5e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "can\'t send sms."

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_account_upgrade_fast_can_not_send_sms"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lo;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Landroid/content/Context;I)V

    goto :goto_48
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/w;)V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/w;->d()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/w;I)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/w;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/w;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/w;Z)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/w;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 123
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/v;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1, p1, p2}, Lcom/baidu/bdgame/sdk/obf/v;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/w$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/w$4;-><init>(Lcom/baidu/bdgame/sdk/obf/w;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/v;->a(Lcom/baidu/bdgame/sdk/obf/v$a;)V

    .line 131
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method private a(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 140
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->c(Landroid/content/Context;)I

    move-result v0

    .line 142
    packed-switch v0, :pswitch_data_3e

    .line 157
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nh;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v2}, Lcom/baidu/bdgame/sdk/obf/nh;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 160
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 161
    return-void

    .line 144
    :pswitch_20
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/nf;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v2}, Lcom/baidu/bdgame/sdk/obf/nf;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 145
    if-eqz p1, :cond_1a

    .line 146
    const-string v2, "bundle_key_index"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a

    .line 150
    :pswitch_2f
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ni;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ni;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    .line 151
    if-eqz p1, :cond_1a

    .line 152
    const-string v2, "bundle_key_index"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1a

    .line 142
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_20
    .end packed-switch
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/w;)Lcom/baidu/bdgame/sdk/obf/x;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    return-object v0
.end method

.method private b(I)V
    .registers 4

    .prologue
    .line 203
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getAccountService()Lcom/baidu/sapi2/SapiAccountService;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/w$6;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bdgame/sdk/obf/w$6;-><init>(Lcom/baidu/bdgame/sdk/obf/w;I)V

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/SapiAccountService;->fastReg(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 239
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/w;I)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/w;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/w;)Lcom/baidu/bdgame/sdk/obf/ct;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    return-object v0
.end method

.method private c(I)V
    .registers 6

    .prologue
    .line 246
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w$7;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/w$7;-><init>(Lcom/baidu/bdgame/sdk/obf/w;)V

    .line 271
    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    .line 272
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/w;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    .line 276
    :goto_15
    return-void

    .line 274
    :cond_16
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/w;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/ca;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/av;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/o;)Lcom/baidu/bdgame/sdk/obf/bz;

    goto :goto_15
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/w;I)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/w;->b(I)V

    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    .line 282
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

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


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 54
    const-string v1, ""

    .line 55
    const-string v0, ""

    .line 56
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/av;->d()Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/av;->d()Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/aw;->a()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->e:Lcom/baidu/bdgame/sdk/obf/av;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/av;->d()Lcom/baidu/bdgame/sdk/obf/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/aw;->b()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_24
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/u;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v2, v3, v1, v0}, Lcom/baidu/bdgame/sdk/obf/u;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/w$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/w$1;-><init>(Lcom/baidu/bdgame/sdk/obf/w;)V

    invoke-virtual {v2, v0}, Lcom/baidu/bdgame/sdk/obf/u;->a(Lcom/baidu/bdgame/sdk/obf/u$a;)V

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ct;->b(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 78
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/x;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/x;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/w$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/w$2;-><init>(Lcom/baidu/bdgame/sdk/obf/w;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/x;->a(Lcom/baidu/bdgame/sdk/obf/x$a;)V

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 93
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ct;->b()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ci;->b(I)Lcom/baidu/bdgame/sdk/obf/ci;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ck;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ci;)V

    .line 102
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/x;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/x;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/w$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/w$3;-><init>(Lcom/baidu/bdgame/sdk/obf/w;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/x;->a(Lcom/baidu/bdgame/sdk/obf/x$a;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/w;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/w;->d:Lcom/baidu/bdgame/sdk/obf/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ct;->a(Lcom/baidu/bdgame/sdk/obf/cs;Landroid/os/Bundle;)V

    .line 117
    return-void
.end method
