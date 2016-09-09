.class public final Lcom/baidu/sapi2/SapiConfiguration;
.super Ljava/lang/Object;
.source "SapiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/SapiConfiguration$1;,
        Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;,
        Lcom/baidu/sapi2/SapiConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final QUICK_LOGIN_VIEW_BTN_ACTION_CUSTOM:I = 0x3

.field public static final QUICK_LOGIN_VIEW_BTN_ACTION_FAST_REG:I = 0x2

.field public static final QUICK_LOGIN_VIEW_BTN_ACTION_LOGIN:I = 0x0

.field public static final QUICK_LOGIN_VIEW_BTN_ACTION_SMS_LOGIN:I = 0x1


# instance fields
.field private final a:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

.field public final appId:Ljava/lang/String;

.field public final appSignKey:Ljava/lang/String;

.field public clientId:Ljava/lang/String;

.field public clientIp:Ljava/lang/String;

.field public final configurableViewLayout:Lcom/baidu/sapi2/utils/enums/Switch;

.field public final context:Landroid/content/Context;

.field public final customActionBarEnabled:Z

.field public final debug:Z

.field public final deviceLoginSignKey:Ljava/lang/String;

.field public final environment:Lcom/baidu/sapi2/utils/enums/Domain;

.field public final faceAppName:Ljava/lang/String;

.field public final fastLoginFeatureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/sapi2/utils/enums/FastLoginFeature;",
            ">;"
        }
    .end annotation
.end field

.field public final fastRegConfirm:Z

.field public final fastRegConfirmMsg:Ljava/lang/String;

.field public final fastRegTitleText:Ljava/lang/String;

.field public final hwAppId:Ljava/lang/String;

.field public presetPhoneNumber:Ljava/lang/String;

.field public final qqAppID:Ljava/lang/String;

.field public final quickUserEnabled:Z

.field public final registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

.field public final showRegLink:Z

.field public final silentShareOnUpgrade:Z

.field public skin:Ljava/lang/String;

.field public final smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

.field public final socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

.field public final syncCacheOnInit:Z

.field public final tpl:Ljava/lang/String;

.field public final uniteVerify:Z

.field public final voicePid:Ljava/lang/String;

.field public final wxAppID:Ljava/lang/String;

.field public final xiaomiAppID:Ljava/lang/Long;

.field public final xiaomiRedirectUri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/baidu/sapi2/SapiConfiguration$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/baidu/sapi2/SapiConfiguration$Builder;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, "2048"

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->voicePid:Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->a(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->b(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    .line 139
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->c(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->appId:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->d(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->appSignKey:Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->e(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->deviceLoginSignKey:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->f(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/Domain;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->environment:Lcom/baidu/sapi2/utils/enums/Domain;

    .line 143
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->g(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/BindType;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

    .line 144
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->h(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/RegistMode;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    .line 145
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->i(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->a:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 146
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->j(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->fastLoginFeatureList:Ljava/util/List;

    .line 147
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->k(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->wxAppID:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->l(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->hwAppId:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->m(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->qqAppID:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->n(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->xiaomiAppID:Ljava/lang/Long;

    .line 151
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->o(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->xiaomiRedirectUri:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->p(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->fastRegConfirm:Z

    .line 153
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->q(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->fastRegConfirmMsg:Ljava/lang/String;

    .line 154
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->r(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->skin:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->s(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->presetPhoneNumber:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->t(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->customActionBarEnabled:Z

    .line 157
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->u(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->showRegLink:Z

    .line 158
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->v(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/utils/enums/Switch;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->configurableViewLayout:Lcom/baidu/sapi2/utils/enums/Switch;

    .line 159
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->w(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->fastRegTitleText:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->x(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->debug:Z

    .line 161
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->y(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    .line 162
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->z(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->uniteVerify:Z

    .line 163
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->A(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->syncCacheOnInit:Z

    .line 164
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->B(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->silentShareOnUpgrade:Z

    .line 165
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->C(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    .line 166
    invoke-static {p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->D(Lcom/baidu/sapi2/SapiConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiConfiguration;->faceAppName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/sapi2/SapiConfiguration$Builder;Lcom/baidu/sapi2/SapiConfiguration$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/baidu/sapi2/SapiConfiguration$Builder;
    .param p2, "x1"    # Lcom/baidu/sapi2/SapiConfiguration$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/sapi2/SapiConfiguration;-><init>(Lcom/baidu/sapi2/SapiConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .registers 4

    .prologue
    .line 653
    iget-boolean v1, p0, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-eqz v1, :cond_7

    .line 654
    sget-object v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->DISABLED:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    .line 665
    :goto_6
    return-object v1

    .line 657
    :cond_7
    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->j()Lcom/baidu/sapi2/c;

    move-result-object v0

    .line 658
    .local v0, "options":Lcom/baidu/sapi2/c;
    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 660
    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->c()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    goto :goto_6

    .line 662
    :cond_36
    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 663
    invoke-virtual {v0}, Lcom/baidu/sapi2/c;->b()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v1

    goto :goto_6

    .line 665
    :cond_41
    iget-object v1, p0, Lcom/baidu/sapi2/SapiConfiguration;->a:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    goto :goto_6
.end method
