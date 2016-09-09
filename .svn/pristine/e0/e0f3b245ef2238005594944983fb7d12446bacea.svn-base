.class public Lcom/baidu/bdgame/sdk/obf/ko;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "GetPassword_UserBaidu"

.field public static final b:Ljava/lang/String; = "GetPassword_UserDuoku"

.field public static final c:Ljava/lang/String; = "GetPassword_User91"

.field public static final d:Ljava/lang/String; = "GetPassword_PayBaidu"

.field public static final e:Ljava/lang/String; = "GetPassword_Pay91"

.field public static final f:Ljava/lang/String; = "BaiduServicePhone"

.field public static final g:Ljava/lang/String; = "AnnounceTimeInterval"

.field public static final h:Ljava/lang/String; = "BaiduUserCssUrl"

.field public static final i:Ljava/lang/String; = "Task_IsOpen"

.field public static final j:Ljava/lang/String; = "BaiduPhoneAssistant_SiteUrl"

.field public static final k:Ljava/lang/String; = "BaiduPassportReigster_Url"


# instance fields
.field private l:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ko;->l:Lorg/json/JSONObject;

    .line 33
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ky;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ky",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    const-string v0, "GetPassword_UserBaidu"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "GetPassword_UserDuoku"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "GetPassword_User91"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "GetPassword_Pay91"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v0, "AnnounceTimeInterval"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v0, "BaiduPassportReigster_Url"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_49

    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 67
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ky;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 70
    :goto_44
    return-object v0

    .line 63
    :cond_45
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 70
    :cond_49
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ky;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ky;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_44
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ko;->l:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ly;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ko;->l:Lorg/json/JSONObject;

    return-object v0
.end method
