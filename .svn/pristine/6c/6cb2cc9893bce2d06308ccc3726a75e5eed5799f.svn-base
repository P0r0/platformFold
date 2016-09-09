.class public final Lcom/baidu/sapi2/SapiAccountService;
.super Ljava/lang/Object;
.source "SapiAccountService.java"


# static fields
.field private static final a:Ljava/lang/String; = "native"


# instance fields
.field private b:Lcom/baidu/sapi2/SapiConfiguration;

.field private c:Lcom/baidu/sapi2/a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    .line 93
    new-instance v0, Lcom/baidu/sapi2/a;

    invoke-direct {v0, p1}, Lcom/baidu/sapi2/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    .line 94
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v1}, Lcom/baidu/sapi2/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountService;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;)Ljava/lang/String;
    .registers 6
    .param p1, "action"    # Lcom/baidu/sapi2/utils/enums/BindWidgetAction;

    .prologue
    .line 127
    if-nez p1, :cond_a

    .line 128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "BindWidgetAction can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2, p1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/utils/enums/BindWidgetAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method a(Lcom/baidu/sapi2/utils/enums/SocialType;)Ljava/lang/String;
    .registers 7
    .param p1, "type"    # Lcom/baidu/sapi2/utils/enums/SocialType;

    .prologue
    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "display"

    const-string v3, "native"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v3}, Lcom/baidu/sapi2/utils/enums/BindType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "guidebind"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method a(Lcom/baidu/sapi2/utils/enums/SocialType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "type"    # Lcom/baidu/sapi2/utils/enums/SocialType;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "osuid"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "display"

    const-string v3, "native"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v3}, Lcom/baidu/sapi2/utils/enums/BindType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "osuid"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "osuid"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/sapi2/utils/enums/SocialType;->QQ:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v3}, Lcom/baidu/sapi2/utils/enums/BindType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->qqAppID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "osuid"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "osuid"    # Ljava/lang/String;
    .param p3, "phoneNum"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/sapi2/utils/enums/SocialType;->XIAOMI:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    const-string v3, "special"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->qqAppID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "access_token"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "osuid"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "phone"

    invoke-direct {v1, v2, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "client"

    const-string v3, "android"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
    .registers 4
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/LoginResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/LoginResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .registers 4
    .param p2, "sms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .registers 7

    .prologue
    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "banner"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "mkey"    # Ljava/lang/String;

    .prologue
    .line 307
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "mkey"

    invoke-direct {v1, v2, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "code"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->wxAppID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "display"

    const-string v3, "native"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blockingRelogin(Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)I
    .registers 3
    .param p1, "credentials"    # Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)I

    move-result v0

    return v0
.end method

.method c()Ljava/lang/String;
    .registers 7

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "banner"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public cancelRequest()V
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->a()V

    .line 369
    return-void
.end method

.method d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "banner"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public deviceLogin(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 922
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->b()Z

    move-result v1

    if-nez v1, :cond_10

    .line 923
    const/4 v1, 0x0

    .line 929
    :goto_f
    return v1

    .line 925
    :cond_10
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v1, v1, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "deviceToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 927
    :cond_2a
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;)Z

    move-result v1

    goto :goto_f

    .line 929
    :cond_31
    iget-object v1, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v1, p1, v0}, Lcom/baidu/sapi2/a;->d(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z

    move-result v1

    goto :goto_f
.end method

.method public deviceLoginCheck()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 898
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->c()V

    .line 899
    return-void
.end method

.method public dynamicPwdLogin(Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/DynamicPwdLoginCallback;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "dynamicPwd"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method public dynamicPwdLogin(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "dynamicPwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/DynamicPwdLoginResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 812
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/DynamicPwdLoginResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void
.end method

.method public dynamicPwdLogin(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiAccountResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 796
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiAccountResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method e()Ljava/lang/String;
    .registers 5

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method f()Ljava/lang/String;
    .registers 5

    .prologue
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public faceCheck(Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceCheckCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceCheckDTO;

    .prologue
    .line 501
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceCheckCallback;Lcom/baidu/sapi2/dto/FaceCheckDTO;)V

    .line 502
    return-void
.end method

.method public faceDel(Lcom/baidu/sapi2/callback/FaceDelCallback;Lcom/baidu/sapi2/dto/FaceDelDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceDelCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceDelDTO;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceDelCallback;Lcom/baidu/sapi2/dto/FaceDelDTO;)V

    .line 542
    return-void
.end method

.method public faceLogin(Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceLoginCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceLoginDTO;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceLoginCallback;Lcom/baidu/sapi2/dto/FaceLoginDTO;)V

    .line 522
    return-void
.end method

.method public faceModify(Lcom/baidu/sapi2/callback/FaceModifyCallback;Lcom/baidu/sapi2/dto/FaceModifyDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceModifyCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceModifyDTO;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceModifyCallback;Lcom/baidu/sapi2/dto/FaceModifyDTO;)V

    .line 532
    return-void
.end method

.method public faceReg(Lcom/baidu/sapi2/callback/FaceRegCallback;Lcom/baidu/sapi2/dto/FaceRegDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FaceRegCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/FaceRegDTO;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FaceRegCallback;Lcom/baidu/sapi2/dto/FaceRegDTO;)V

    .line 512
    return-void
.end method

.method public fastReg(Lcom/baidu/sapi2/callback/SapiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/FastRegResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/FastRegResult;>;"
    const/16 v0, 0xf

    invoke-virtual {p0, p1, v0}, Lcom/baidu/sapi2/SapiAccountService;->fastReg(Lcom/baidu/sapi2/callback/SapiCallback;I)V

    .line 755
    return-void
.end method

.method public fastReg(Lcom/baidu/sapi2/callback/SapiCallback;I)V
    .registers 4
    .param p2, "timeoutSeconds"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/FastRegResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/FastRegResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;I)V

    .line 745
    return-void
.end method

.method public fillUserProfile(Lcom/baidu/sapi2/callback/FillUserProfileCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FillUserProfileCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FillUserProfileCallback;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public fillUsername(Lcom/baidu/sapi2/callback/FillUsernameCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/FillUsernameCallback;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/FillUsernameCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public fillUsername(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/FillUsernameCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method g()Ljava/lang/String;
    .registers 5

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiAccountManager;->getSapiConfiguration()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "showtype"

    const-string v3, "phone"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "device"

    const-string v3, "wap"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adapter"

    const-string v3, "apps"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/sapi2/SapiAccountService;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCaptcha(Lcom/baidu/sapi2/callback/SapiCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/GetCaptchaResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 980
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/GetCaptchaResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;)V

    .line 981
    return-void
.end method

.method public getCaptchaKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicPwd(Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "captcha"    # Ljava/lang/String;

    .prologue
    .line 781
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetDynamicPwdCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public getDynamicPwd(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z
    .registers 4
    .param p2, "phoneNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 769
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getHistoryPortraits(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetHistoryPortraitsCallback;Lcom/baidu/sapi2/dto/GetHistoryPortraitsDTO;)V

    .line 618
    return-void
.end method

.method public getPopularPortraitsInfo(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetPopularPortraitsCallback;Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method public getPortrait(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "stoken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/GetPortraitResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 606
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/GetPortraitResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public getRegCode(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetRegCodeCallback;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetRegCodeCallback;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public getUserInfo(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/GetUserInfoCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/GetUserInfoCallback;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public getUserInfo(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V
    .registers 4
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;
    .param p2, "bduss"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/GetUserInfoCallBack;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method i()Ljava/lang/String;
    .registers 7

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "clientfrom"

    const-string v4, "native"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tpl"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "login_share_strategy"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    invoke-virtual {v4}, Lcom/baidu/sapi2/SapiConfiguration;->loginShareStrategy()Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->getStrValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "client"

    const-string v4, "android"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "adapter"

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->customActionBarEnabled:Z

    if-eqz v2, :cond_154

    const-string v2, "3"

    :goto_4b
    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "act"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/BindType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "loginLink"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "smsLoginLink"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowSmsLoginLink:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lPFastRegLink"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->smsLoginConfig:Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration$SmsLoginConfig;->flagShowFastRegLink:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    sget-object v3, Lcom/baidu/sapi2/utils/enums/RegistMode;->FAST:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-ne v2, v3, :cond_d1

    .line 197
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "fastRegLink"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_d1
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->quickUserEnabled:Z

    if-eqz v2, :cond_f7

    .line 200
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "quick_user"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->registMode:Lcom/baidu/sapi2/utils/enums/RegistMode;

    sget-object v3, Lcom/baidu/sapi2/utils/enums/RegistMode;->QUICK_USER:Lcom/baidu/sapi2/utils/enums/RegistMode;

    if-ne v2, v3, :cond_f7

    .line 202
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "regtype"

    const-string v4, "2"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_f7
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lPlayout"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->configurableViewLayout:Lcom/baidu/sapi2/utils/enums/Switch;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/Switch;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->showRegLink:Z

    if-nez v2, :cond_11f

    .line 207
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "regLink"

    const-string v4, "0"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_11f
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->fastRegTitleText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13d

    .line 211
    :try_start_129
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "fastRegText"

    iget-object v4, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v4, v4, Lcom/baidu/sapi2/SapiConfiguration;->fastRegTitleText:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_13d} :catch_158

    .line 217
    :cond_13d
    :goto_13d
    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-boolean v2, v2, Lcom/baidu/sapi2/SapiConfiguration;->uniteVerify:Z

    if-eqz v2, :cond_14f

    .line 218
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "connect"

    const-string v4, "1"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_14f
    invoke-static {v1}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 187
    :cond_154
    const-string v2, ""

    goto/16 :goto_4b

    .line 213
    :catch_158
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_13d
.end method

.method public iqiyiSSOLogin(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/IqiyiLoginCallback;
    .param p2, "iqiyiLoginDTO"    # Lcom/baidu/sapi2/dto/IqiyiLoginDTO;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/IqiyiLoginCallback;Lcom/baidu/sapi2/dto/IqiyiLoginDTO;)V

    .line 1033
    return-void
.end method

.method public isDeviceLoginAvailable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v0, v0, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/sapi2/b;->a(Landroid/content/Context;)Lcom/baidu/sapi2/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/b;->b()Z

    move-result v0

    return v0
.end method

.method j()Ljava/lang/String;
    .registers 6

    .prologue
    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/sapi2/utils/enums/SocialType;->WEIXIN:Lcom/baidu/sapi2/utils/enums/SocialType;

    invoke-virtual {v4}, Lcom/baidu/sapi2/utils/enums/SocialType;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "tpl"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->tpl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "display"

    const-string v3, "native"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "act"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->socialBindType:Lcom/baidu/sapi2/utils/enums/BindType;

    invoke-virtual {v3}, Lcom/baidu/sapi2/utils/enums/BindType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "app_key"

    iget-object v3, p0, Lcom/baidu/sapi2/SapiAccountService;->b:Lcom/baidu/sapi2/SapiConfiguration;

    iget-object v3, v3, Lcom/baidu/sapi2/SapiConfiguration;->wxAppID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "scope"

    const-string v3, "snsapi_login"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v2}, Lcom/baidu/sapi2/a;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/baidu/sapi2/utils/SapiUtils;->createRequestParams(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public login(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/LoginCallback;
    .param p2, "loginDTO"    # Lcom/baidu/sapi2/dto/LoginDTO;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/LoginCallback;Lcom/baidu/sapi2/dto/LoginDTO;)V

    .line 952
    return-void
.end method

.method m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0}, Lcom/baidu/sapi2/a;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oauth(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
    .registers 4
    .param p2, "bduss"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/OAuthResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/OAuthResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method public phoneReg(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V
    .registers 4
    .param p2, "phoneRegDTO"    # Lcom/baidu/sapi2/dto/PhoneRegDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/PhoneRegResult;",
            ">;",
            "Lcom/baidu/sapi2/dto/PhoneRegDTO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/PhoneRegResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/PhoneRegDTO;)V

    .line 1003
    return-void
.end method

.method public qrAppLogin(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/QrAppLoginResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/QrAppLoginResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->b(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public qrAppLogin(Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;
    .param p2, "qrSign"    # Ljava/lang/String;
    .param p3, "qrCmd"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 700
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/QrAppLoginCallBack;Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method public qrPCLogin(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "callBack"    # Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;
    .param p2, "qrSign"    # Ljava/lang/String;
    .param p3, "qrCmd"    # Ljava/lang/String;
    .param p4, "bduss"    # Ljava/lang/String;
    .param p5, "stoken"    # Ljava/lang/String;
    .param p6, "ptoken"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/QrPCLoginCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public qrPcLogin(Lcom/baidu/sapi2/callback/QrPcLoginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/QrPcLoginCallback;
    .param p2, "sign"    # Ljava/lang/String;
    .param p3, "cmd"    # Ljava/lang/String;
    .param p4, "bduss"    # Ljava/lang/String;

    .prologue
    .line 684
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/QrPcLoginCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public quickUserReg(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/QuickUserRegCallback;
    .param p2, "quickUserRegDTO"    # Lcom/baidu/sapi2/dto/QuickUserRegDTO;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/QuickUserRegCallback;Lcom/baidu/sapi2/dto/QuickUserRegDTO;)V

    .line 1014
    return-void
.end method

.method public relogin(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/ReloginDTO;)V
    .registers 4
    .param p2, "reloginDTO"    # Lcom/baidu/sapi2/dto/ReloginDTO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/ReloginResult;",
            ">;",
            "Lcom/baidu/sapi2/dto/ReloginDTO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 862
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/ReloginResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/dto/ReloginDTO;)V

    .line 863
    return-void
.end method

.method public relogin(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    .registers 4
    .param p2, "credentials"    # Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 852
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 853
    return-void
.end method

.method public setPopularPortrait(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SetPopularPortraitCallback;Lcom/baidu/sapi2/dto/SetPopularPortraitDTO;)V

    .line 590
    return-void
.end method

.method public setPortrait(Lcom/baidu/sapi2/callback/SetPortraitCallback;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 6
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/SetPortraitCallback;
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "file"    # [B
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SetPortraitCallback;Ljava/lang/String;[BLjava/lang/String;)V

    .line 580
    return-void
.end method

.method public setPortrait(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 14
    .param p2, "bduss"    # Ljava/lang/String;
    .param p3, "ptoken"    # Ljava/lang/String;
    .param p4, "stoken"    # Ljava/lang/String;
    .param p5, "file"    # [B
    .param p6, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/shell/callback/SapiCallBack",
            "<",
            "Lcom/baidu/sapi2/shell/response/SapiResponse;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 564
    .local p1, "callBack":Lcom/baidu/sapi2/shell/callback/SapiCallBack;, "Lcom/baidu/sapi2/shell/callback/SapiCallBack<Lcom/baidu/sapi2/shell/response/SapiResponse;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/shell/callback/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 565
    return-void
.end method

.method public voiceCheck(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "voiceCheckDTO"    # Lcom/baidu/sapi2/dto/VoiceCheckDTO;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Lcom/baidu/sapi2/dto/VoiceCheckDTO;)V

    .line 417
    return-void
.end method

.method public voiceCheck(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "bduss"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public voiceCheckByUid(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCheckCallback;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCheckCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public voiceCodeSet(Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceCodeSetCallback;Lcom/baidu/sapi2/dto/VoiceCodeSetDTO;)V

    .line 472
    return-void
.end method

.method public voiceLogin(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceLoginCallback;
    .param p2, "voiceMd5"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceLoginCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public voiceReg(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p2, "voiceMd5"    # Ljava/lang/String;
    .param p3, "bduss"    # Ljava/lang/String;
    .param p4, "authSid"    # Ljava/lang/String;
    .param p5, "newUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/sapi2/callback/SapiCallback",
            "<",
            "Lcom/baidu/sapi2/result/VoiceRegResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p1, "callback":Lcom/baidu/sapi2/callback/SapiCallback;, "Lcom/baidu/sapi2/callback/SapiCallback<Lcom/baidu/sapi2/result/VoiceRegResult;>;"
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 451
    return-void
.end method

.method public voiceSwitchSet(Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceSwitchSetCallback;Lcom/baidu/sapi2/dto/VoiceSwitchSetDTO;)V

    .line 482
    return-void
.end method

.method public voiceVerify(Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/VoiceVerifyCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/VoiceVerifyDTO;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/VoiceVerifyCallback;Lcom/baidu/sapi2/dto/VoiceVerifyDTO;)V

    .line 492
    return-void
.end method

.method public wapSSOConfirm(Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V
    .registers 4
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/SSOConfirmCallback;
    .param p2, "dto"    # Lcom/baidu/sapi2/dto/SSOConfirmDTO;

    .prologue
    .line 721
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/SSOConfirmCallback;Lcom/baidu/sapi2/dto/SSOConfirmDTO;)V

    .line 722
    return-void
.end method

.method public web2NativeLogin(Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/baidu/sapi2/SapiAccountService;->c:Lcom/baidu/sapi2/a;

    invoke-virtual {v0, p1}, Lcom/baidu/sapi2/a;->a(Lcom/baidu/sapi2/callback/Web2NativeLoginCallback;)V

    .line 1023
    return-void
.end method
